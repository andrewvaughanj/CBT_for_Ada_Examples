#!/usr/bin/env python

"""

The MIT License (MIT)

Copyright (c) 2016 Andrew V. Jones / Vector Software, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

"""

"""

The above copyright only applies to the content of the `vcast` subdirectory --
no ownership, implied or otherwise, is claimed over the contents of `src'.

"""

"""

This is a simple execution runner, whose purpose is to process an
VectorCAST/Manage project, modify the underlying code, and then rebuild the
environment inside of VectorCAST, capturing the execution results.

The script takes no arguments as "just does its job".

Please report any issues to Andrew V. Jones <andrew.jones@vectorcast.com>

"""

import os
import time
import sys
import re
import subprocess
import shutil
import glob
import datetime


class EvaluationRunner(object):
    """
    Class that does all the work
    """

    def __init__(self):
        """
        Variables that persist across functions
        """

        self.vcm_file = "ADA_EUROPE_2016.vcm"
        self.vcast_dir = os.getenv(
            "VECTORCAST_DIR", "/home/avj/vcast/vc64__38705_cbt_for_ada")

    @classmethod
    def run_command(cls, command, pipe=""):
        """
        helper function to execute commands
        """

        proc = subprocess.Popen(command,
                                stdout=subprocess.PIPE,
                                stderr=subprocess.STDOUT,
                                stdin=subprocess.PIPE)

        proc.stdin.write(pipe)

        lines = iter(proc.stdout.readline, b'')
        lines = [line.rstrip('\n') for line in lines]
        return lines

    def process_sp(self, unit, curr_sp, instance):
        """
        process a single subprogram in a given unit
        """

        unit_file = "../src/" + unit.lower() + ".adb"

        command = "git checkout " + unit_file
        command = command.split(" ")
        lines = self.run_command(command)

        unit_contents = [line.rstrip("\n") for line in open(unit_file)]
        unit_lines = unit_contents.__iter__()

        sp_matcher = r"\s*(function|procedure)\s+([A-Za-z_-]+)"

        count = 0

        with open(unit_file, "w+") as output:
            for line in unit_lines:
                output.write(line + "\n")
                match = re.match(sp_matcher, line)
                if match:
                    found_sp = match.groups()[1]
                    if found_sp == curr_sp:
                        if count == instance:
                            while "begin" not in line:
                                line = unit_lines.next()
                                output.write(line + "\n")

                            output.write("    null;" + "\n")
                            line = unit_lines.next()
                            output.write(line + "\n")

                        count = count + 1

        output_log = "ADA_EUROPE_2016_manage_incremental_rebuild_report.html"

        now = datetime.datetime.now().strftime("%Y-%m-%d__%H-%M-%S")
        base_log = unit + "__" + curr_sp + "__" + str(instance) + "__" + now
        log_file = base_log + ".txt"

        vcm_file = "ADA_EUROPE_2016.vcm"
        vcast_dir = os.getenv(
            "VECTORCAST_DIR", "/home/avj/vcast/vc64__38705_cbt_for_ada")

        with open(log_file, "w+") as log_out:

            command = "git diff ../src"
            command = command.split(" ")
            lines = self.run_command(command)
            for line in lines:
                log_out.write(line + "\n")

            print "incremental build ... " + unit,
            command = vcast_dir + "/manage -p " + vcm_file + " --build --incremental"
            command = command.split(" ")
            start_time = time.time()
            lines = self.run_command(command)
            end_time = time.time()
            print "done: " + str(end_time - start_time)

            for line in lines:
                log_out.write(line + "\n")

            print "incremental exec ... " + unit,
            command = vcast_dir + "/manage -p " + vcm_file + " --execute --incremental"
            command = command.split(" ")
            start_time = time.time()
            lines = self.run_command(command)
            end_time = time.time()
            print "done: " + str(end_time - start_time)

            for line in lines:
                log_out.write(line + "\n")

        html_file = base_log + ".html"
        shutil.move(output_log, html_file)

        command = "git checkout " + unit_file
        command = command.split(" ")
        lines = self.run_command(command)

        print "rebuilding ... " + unit,
        command = vcast_dir + "/manage -p " + vcm_file + " --build-execute --incremental"
        command = command.split(" ")
        start_time = time.time()
        lines = self.run_command(command)
        end_time = time.time()
        print "done: " + str(end_time - start_time)

    def process_unit(self, unit):
        """
        process given unit
        """

        unit_file = "../src/" + unit.lower() + ".adb"

        cmd = "git checkout " + unit_file
        self.run_command(cmd.split(" "))

        unit_contents = [line.rstrip("\n") for line in open(unit_file)]
        unit_lines = unit_contents.__iter__()

        sp_matcher = r"\s*(function|procedure)\s+([A-Za-z_-]+)"

        all_sps = {}

        for line in unit_lines:
            match = re.match(sp_matcher, line)
            if match:
                found_sp = match.groups()[1]

                if found_sp in all_sps:
                    all_sps.update({found_sp: all_sps[found_sp] + 1})
                else:
                    all_sps.update({found_sp: 1})

        for curr_sp in all_sps:

            start = 0

            # for some randomness, skip the first instance of an overloaded
            # proc
            if all_sps[curr_sp] == 2:
                start = 1

            for instance in range(start, all_sps[curr_sp]):
                print "******************* " + curr_sp + " " + str(instance) + " *******************"

                self.process_sp(unit, curr_sp, instance)

                print "******************* " + curr_sp + " " + str(instance) + " *******************"

    def main(self):
        """
        high-level entry point
        """
        vcm_file = "ADA_EUROPE_2016.vcm"

        print "cleaning up ..."
        for curr_file in glob.glob("*.html"):
            os.remove(curr_file)

        for curr_file in glob.glob("avj.debug*"):
            os.remove(curr_file)

        for curr_file in glob.glob("*.txt"):
            os.remove(curr_file)

        for curr_file in glob.glob("../src/*.ad?"):
            command = "git checkout " + curr_file
            command = command.split(" ")
            self.run_command(command)
        print "done!"

        env_file = "ADA_EUROPE_2016/environment/TESTSUITE/TESTSUITE.env"
        env_contents = [line.rstrip("\n") for line in open(env_file)]
        env_lines = env_contents.__iter__()

        env_matcher = r"ENVIRO.UUT:(\S+)"
        all_units = []

        print "finding units ..."
        for line in env_lines:
            match = re.match(env_matcher, line)
            if match:
                uut = match.groups()[0]
                print uut.lower() + ".adb"
                all_units.append(uut)
        print "done!"

        vcm_file = "ADA_EUROPE_2016.vcm"
        vcast_dir = os.getenv(
            "VECTORCAST_DIR", "/home/avj/vcast/vc64__38705_cbt_for_ada")
        command = vcast_dir + "/manage -p " + vcm_file + " --release-locks"
        print "running: " + command
        command = command.split(" ")
        self.run_command(command, "yes")

        command = vcast_dir + "/manage -p " + vcm_file + " --clean"
        print "running: " + command
        command = command.split(" ")
        self.run_command(command)

        command = vcast_dir + "/manage -p " + vcm_file + " --build-execute"
        print "running: " + command
        command = command.split(" ")
        self.run_command(command)

        for unit in all_units:

            print "==================" + unit + "=================="
            self.process_unit(unit)
            print "==================" + unit + "=================="

if __name__ == "__main__":
    sys.stdout = os.fdopen(sys.stdout.fileno(), 'w', 0)

    evaluation_runner = EvaluationRunner()
    evaluation_runner.main()

# EOF
