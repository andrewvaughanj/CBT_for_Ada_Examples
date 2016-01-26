-- VectorCAST 6.4b (01/11/16)
-- Test Case Script
-- 
-- Environment    : TESTSUITE
-- Unit(s) Under Test: ADA_WORDS ASKI BAG_TEST_HELP CONDITIONS FL_TIME FORKER LB_TEST_HELP LOCKS NAV_TYPES OPER_DEF REFLECT_TESTER TYPES
-- 
-- Script Features
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:ADA_DIRECT_ARRAY_INDEXING
--

-- Unit: ADA_WORDS

-- Subprogram: IS_DELIMITER

-- Test Case: <<MAX>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DELIMITER
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DELIMITER
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DELIMITER
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DELIMITER
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) case C ==> '&' | ''' | '(' | ')' | '*' | '+' | ',' | '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '|'
   Test Case Generation Notes:
     Conflict: A branch uses an unsupported enumeral (C) in branch 1
     Conflict: Cannot determine any comparisons (ADA_WORDS.IS_DELIMITER.C)
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DELIMITER
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) case C ==> others
   Test Case Generation Notes:
     Conflict: A branch uses an unsupported enumeral (C) in branch 1
     Conflict: Cannot determine any comparisons (ADA_WORDS.IS_DELIMITER.C)
TEST.END_NOTES:
TEST.END

-- Test Case: IS_DELIMITER.001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DELIMITER
TEST.NEW
TEST.NAME:IS_DELIMITER.001
TEST.END

-- Subprogram: IS_DIGIT

-- Test Case: <<MAX>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DIGIT
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DIGIT
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DIGIT
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: IS_DIGIT-PATH-001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DIGIT
TEST.NEW
TEST.NAME:IS_DIGIT-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: IS_DIGIT.001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_DIGIT
TEST.NEW
TEST.NAME:IS_DIGIT.001
TEST.END

-- Subprogram: IS_IDENTIFIER

-- Test Case: <<MAX>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 7
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if Word = "" ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 7
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if Word = "" ==> FALSE
      (4) if not Is_Letter ( Word ( First ) ) ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Is_Letter ( Word ( First ) )) in branch 4
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-003-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:BASIS-PATH-003-TEMPLATE
TEST.BASIS_PATH:3 of 7
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if Word = "" ==> FALSE
      (4) if not Is_Letter ( Word ( First ) ) ==> FALSE
      (7) for I in First +1 .. Word ' Last ==> FALSE
      (15) if Prev = '_' ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Is_Letter ( Word ( First ) )) in branch 4
     Conflict: Unable to validate literal-to-expression comparison in branch 15
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-004-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:BASIS-PATH-004-TEMPLATE
TEST.BASIS_PATH:4 of 7
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if Word = "" ==> FALSE
      (4) if not Is_Letter ( Word ( First ) ) ==> FALSE
      (7) for I in First +1 .. Word ' Last ==> FALSE
      (15) if Prev = '_' ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Is_Letter ( Word ( First ) )) in branch 4
     Conflict: Unable to validate literal-to-expression comparison in branch 15
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-005-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:BASIS-PATH-005-TEMPLATE
TEST.BASIS_PATH:5 of 7
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (1) if Word = "" ==> FALSE
      (4) if not Is_Letter ( Word ( First ) ) ==> FALSE
      (7) for I in First +1 .. Word ' Last ==> TRUE
      (8) if Word ( I ) = '_' and then Prev = '_' ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Is_Letter ( Word ( First ) )) in branch 4
     Conflict: Unable to validate expression-to-expression comparison in branch 7
     Conflict: Unable to validate literal-to-expression comparison in branch 8
     Conflict: Unable to validate literal-to-expression comparison in branch 8
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-006-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:BASIS-PATH-006-TEMPLATE
TEST.BASIS_PATH:6 of 7
TEST.NOTES:
This is an automatically generated test case.
   Test Path 6
      (1) if Word = "" ==> FALSE
      (4) if not Is_Letter ( Word ( First ) ) ==> FALSE
      (7) for I in First +1 .. Word ' Last ==> TRUE
      (8) if Word ( I ) = '_' and then Prev = '_' ==> FALSE
      (11) if not ( Is_Letter ( Prev ) or else Is_Digit ( Prev ) or else Prev = '_' ) ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Is_Letter ( Word ( First ) )) in branch 4
     Conflict: Unable to validate expression-to-expression comparison in branch 7
     Conflict: Unable to validate literal-to-expression comparison in branch 8
     Conflict: Unable to validate literal-to-expression comparison in branch 8
     Conflict: A condition in this branch uses an operand that cannot be set (Is_Letter ( Prev )) in branch 11
     Conflict: A condition in this branch uses an operand that cannot be set (else Is_Digit ( Prev )) in branch 11
     Conflict: Unable to validate literal-to-expression comparison in branch 11
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-007-TEMPLATE
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:BASIS-PATH-007-TEMPLATE
TEST.BASIS_PATH:7 of 7
TEST.NOTES:
This is an automatically generated test case.
   Test Path 7
      (1) if Word = "" ==> FALSE
      (4) if not Is_Letter ( Word ( First ) ) ==> FALSE
      (7) for I in First +1 .. Word ' Last ==> TRUE
      (8) if Word ( I ) = '_' and then Prev = '_' ==> FALSE
      (11) if not ( Is_Letter ( Prev ) or else Is_Digit ( Prev ) or else Prev = '_' ) ==> FALSE
      (15) if Prev = '_' ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Is_Letter ( Word ( First ) )) in branch 4
     Conflict: Unable to validate expression-to-expression comparison in branch 7
     Conflict: Unable to validate literal-to-expression comparison in branch 8
     Conflict: Unable to validate literal-to-expression comparison in branch 8
     Conflict: A condition in this branch uses an operand that cannot be set (Is_Letter ( Prev )) in branch 11
     Conflict: A condition in this branch uses an operand that cannot be set (else Is_Digit ( Prev )) in branch 11
     Conflict: Unable to validate literal-to-expression comparison in branch 11
     Conflict: Unable to validate literal-to-expression comparison in branch 15
TEST.END_NOTES:
TEST.END

-- Test Case: IS_IDENTIFIER.001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_IDENTIFIER
TEST.NEW
TEST.NAME:IS_IDENTIFIER.001
TEST.END

-- Subprogram: IS_LETTER

-- Test Case: <<MAX>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LETTER
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LETTER
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LETTER
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: IS_LETTER-PATH-001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LETTER
TEST.NEW
TEST.NAME:IS_LETTER-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: IS_LETTER.001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LETTER
TEST.NEW
TEST.NAME:IS_LETTER.001
TEST.END

-- Subprogram: IS_LOWER_LETTER

-- Test Case: <<MAX>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LOWER_LETTER
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LOWER_LETTER
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LOWER_LETTER
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: IS_LOWER_LETTER-PATH-001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LOWER_LETTER
TEST.NEW
TEST.NAME:IS_LOWER_LETTER-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: IS_LOWER_LETTER.001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_LOWER_LETTER
TEST.NEW
TEST.NAME:IS_LOWER_LETTER.001
TEST.END

-- Subprogram: IS_SEPARATOR

-- Test Case: <<MAX>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_SEPARATOR
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_SEPARATOR
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_SEPARATOR
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: IS_SEPARATOR-PATH-001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_SEPARATOR
TEST.NEW
TEST.NAME:IS_SEPARATOR-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: IS_SEPARATOR.001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_SEPARATOR
TEST.NEW
TEST.NAME:IS_SEPARATOR.001
TEST.END

-- Subprogram: IS_UPPER_LETTER

-- Test Case: <<MAX>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_UPPER_LETTER
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_UPPER_LETTER
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_UPPER_LETTER
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: IS_UPPER_LETTER-PATH-001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_UPPER_LETTER
TEST.NEW
TEST.NAME:IS_UPPER_LETTER-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: IS_UPPER_LETTER.001
TEST.UNIT:ADA_WORDS
TEST.SUBPROGRAM:IS_UPPER_LETTER
TEST.NEW
TEST.NAME:IS_UPPER_LETTER.001
TEST.END

-- Unit: ASKI

-- Subprogram: IS_STRICT(character)boolean

-- Test Case: <<MAX>>
TEST.UNIT:ASKI
TEST.SUBPROGRAM:IS_STRICT(character)boolean
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ASKI
TEST.SUBPROGRAM:IS_STRICT(character)boolean
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ASKI
TEST.SUBPROGRAM:IS_STRICT(character)boolean
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: IS_STRICT(character)boolean.001
TEST.UNIT:ASKI
TEST.SUBPROGRAM:IS_STRICT(character)boolean
TEST.NEW
TEST.NAME:IS_STRICT(character)boolean.001
TEST.END

-- Subprogram: IS_STRICT(string)boolean

-- Test Case: <<MAX>>
TEST.UNIT:ASKI
TEST.SUBPROGRAM:IS_STRICT(string)boolean
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:ASKI
TEST.SUBPROGRAM:IS_STRICT(string)boolean
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:ASKI
TEST.SUBPROGRAM:IS_STRICT(string)boolean
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: IS_STRICT(string)boolean.001
TEST.UNIT:ASKI
TEST.SUBPROGRAM:IS_STRICT(string)boolean
TEST.NEW
TEST.NAME:IS_STRICT(string)boolean.001
TEST.END

-- Unit: BAG_TEST_HELP

-- Subprogram: PUT

-- Test Case: <<MAX>>
TEST.UNIT:BAG_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:BAG_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:BAG_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: PUT-PATH-001
TEST.UNIT:BAG_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:PUT-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: PUT.001
TEST.UNIT:BAG_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:PUT.001
TEST.END

-- Unit: CONDITIONS

-- Subprogram: (PT)CONDITION_PROTECT.BROADCAST

-- Test Case: (PT)CONDITION_PROTECT.BROADCAST.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.BROADCAST
TEST.NEW
TEST.NAME:(PT)CONDITION_PROTECT.BROADCAST.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.BROADCAST
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.BROADCAST
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.BROADCAST
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: (PT)CONDITION_PROTECT.GET

-- Test Case: (PT)CONDITION_PROTECT.GET.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.GET
TEST.NEW
TEST.NAME:(PT)CONDITION_PROTECT.GET.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.GET
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.GET
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.GET
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.GET
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if not Free and then Id = Owner ==> FALSE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set (Free) in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.GET
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if not Free and then Id = Owner ==> TRUE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set (Free) in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Subprogram: (PT)CONDITION_PROTECT.OWNS

-- Test Case: (PT)CONDITION_PROTECT.OWNS-PATH-001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.OWNS
TEST.NEW
TEST.NAME:(PT)CONDITION_PROTECT.OWNS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: (PT)CONDITION_PROTECT.OWNS.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.OWNS
TEST.NEW
TEST.NAME:(PT)CONDITION_PROTECT.OWNS.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.OWNS
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.OWNS
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.OWNS
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: (PT)CONDITION_PROTECT.RELEASE

-- Test Case: (PT)CONDITION_PROTECT.RELEASE.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.RELEASE
TEST.NEW
TEST.NAME:(PT)CONDITION_PROTECT.RELEASE.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.RELEASE
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.RELEASE
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.RELEASE
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: (PT)CONDITION_PROTECT.SIGNAL

-- Test Case: (PT)CONDITION_PROTECT.SIGNAL.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.SIGNAL
TEST.NEW
TEST.NAME:(PT)CONDITION_PROTECT.SIGNAL.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.SIGNAL
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.SIGNAL
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.SIGNAL
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: (PT)CONDITION_PROTECT.WAIT

-- Test Case: (PT)CONDITION_PROTECT.WAIT.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.WAIT
TEST.NEW
TEST.NAME:(PT)CONDITION_PROTECT.WAIT.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.WAIT
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.WAIT
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.WAIT
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.WAIT
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if Free or else Condition_Protect.Wait ' Caller /= Owner ==> FALSE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set (Free) in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:(PT)CONDITION_PROTECT.WAIT
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if Free or else Condition_Protect.Wait ' Caller /= Owner ==> TRUE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set (Free) in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Subprogram: BROADCAST

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:BROADCAST
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:BROADCAST
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:BROADCAST
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:BROADCAST
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if Wakeup_Queue ' Count /= 0 ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:BROADCAST
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if Wakeup_Queue ' Count /= 0 ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BROADCAST-PATH-001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:BROADCAST
TEST.NEW
TEST.NAME:BROADCAST-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: BROADCAST.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:BROADCAST
TEST.NEW
TEST.NAME:BROADCAST.001
TEST.END

-- Subprogram: GET(condition)

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:GET(condition)
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:GET(condition)
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:GET(condition)
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: GET(condition).001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:GET(condition)
TEST.NEW
TEST.NAME:GET(condition).001
TEST.END

-- Subprogram: GET(condition,duration)boolean

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:GET(condition,duration)boolean
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:GET(condition,duration)boolean
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:GET(condition,duration)boolean
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: GET(condition,duration)boolean.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:GET(condition,duration)boolean
TEST.NEW
TEST.NAME:GET(condition,duration)boolean.001
TEST.END

-- Subprogram: IS_OWNER

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:IS_OWNER
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:IS_OWNER
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:IS_OWNER
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: IS_OWNER-PATH-001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:IS_OWNER
TEST.NEW
TEST.NAME:IS_OWNER-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: IS_OWNER.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:IS_OWNER
TEST.NEW
TEST.NAME:IS_OWNER.001
TEST.END

-- Subprogram: RELEASE

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:RELEASE
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:RELEASE
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:RELEASE
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:RELEASE
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if Free or else Ada.Task_Identification.Current_Task /= Owner ==> FALSE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set (Free) in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:RELEASE
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if Free or else Ada.Task_Identification.Current_Task /= Owner ==> TRUE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set (Free) in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: RELEASE-PATH-001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:RELEASE
TEST.NEW
TEST.NAME:RELEASE-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: RELEASE.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:RELEASE
TEST.NEW
TEST.NAME:RELEASE.001
TEST.END

-- Subprogram: SIGNAL

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:SIGNAL
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:SIGNAL
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:SIGNAL
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:SIGNAL
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if Wakeup_Queue ' Count /= 0 ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:SIGNAL
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if Wakeup_Queue ' Count /= 0 ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate literal-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: SIGNAL-PATH-001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:SIGNAL
TEST.NEW
TEST.NAME:SIGNAL-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: SIGNAL.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:SIGNAL
TEST.NEW
TEST.NAME:SIGNAL.001
TEST.END

-- Subprogram: WAIT(condition)

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:WAIT(condition)
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:WAIT(condition)
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:WAIT(condition)
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: WAIT(condition).001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:WAIT(condition)
TEST.NEW
TEST.NAME:WAIT(condition).001
TEST.END

-- Subprogram: WAIT(condition,duration)boolean

-- Test Case: <<MAX>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:WAIT(condition,duration)boolean
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:WAIT(condition,duration)boolean
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:WAIT(condition,duration)boolean
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: WAIT(condition,duration)boolean.001
TEST.UNIT:CONDITIONS
TEST.SUBPROGRAM:WAIT(condition,duration)boolean
TEST.NEW
TEST.NAME:WAIT(condition,duration)boolean.001
TEST.END

-- Unit: FL_TIME

-- Subprogram: "+"

-- Test Case: +.001
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"+"
TEST.NEW
TEST.NAME:+.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"+"
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"+"
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"+"
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"+"
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if Left.Positiv = Right.Positiv ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"+"
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if Left.Positiv = Right.Positiv ==> FALSE
      (3) elsif Left.Positiv ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Left.Positiv) in branch 3
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-003-TEMPLATE
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"+"
TEST.NEW
TEST.NAME:BASIS-PATH-003-TEMPLATE
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if Left.Positiv = Right.Positiv ==> FALSE
      (3) elsif Left.Positiv ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Left.Positiv) in branch 3
TEST.END_NOTES:
TEST.END

-- Subprogram: "-"(time_type)time_type

-- Test Case: -(time_type)time_type.001
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"-"(time_type)time_type
TEST.NEW
TEST.NAME:-(time_type)time_type.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"-"(time_type)time_type
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"-"(time_type)time_type
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"-"(time_type)time_type
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: "-"(time_type,time_type)time_type

-- Test Case: -(time_type,time_type)time_type.001
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"-"(time_type,time_type)time_type
TEST.NEW
TEST.NAME:-(time_type,time_type)time_type.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"-"(time_type,time_type)time_type
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"-"(time_type,time_type)time_type
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"-"(time_type,time_type)time_type
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: "<"

-- Test Case: <.001
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:<.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if Left.Positiv = Right.Positiv ==> TRUE
      (2) if Left.Positiv ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Left.Positiv) in branch 2
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if Left.Positiv = Right.Positiv ==> TRUE
      (2) if Left.Positiv ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set (Left.Positiv) in branch 2
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-003-TEMPLATE
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:BASIS-PATH-003-TEMPLATE
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if Left.Positiv = Right.Positiv ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Subprogram: ABS_TIME

-- Test Case: <<MAX>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:ABS_TIME
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:ABS_TIME
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:ABS_TIME
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: ABS_TIME-PATH-001
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:ABS_TIME
TEST.NEW
TEST.NAME:ABS_TIME-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: ABS_TIME.001
TEST.UNIT:FL_TIME
TEST.SUBPROGRAM:ABS_TIME
TEST.NEW
TEST.NAME:ABS_TIME.001
TEST.END

-- Unit: FORKER

-- Subprogram: DECODE_EXIT

-- Test Case: <<MAX>>
TEST.UNIT:FORKER
TEST.SUBPROGRAM:DECODE_EXIT
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:FORKER
TEST.SUBPROGRAM:DECODE_EXIT
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:FORKER
TEST.SUBPROGRAM:DECODE_EXIT
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-PARTIAL
TEST.UNIT:FORKER
TEST.SUBPROGRAM:DECODE_EXIT
TEST.NEW
TEST.NAME:BASIS-PATH-001-PARTIAL
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if ( Status and Stop_Mask ) = Stop_Mask ==> FALSE
      (2) elsif ( Status and Stop_Mask ) = 0 ==> FALSE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set in branch 2
TEST.END_NOTES:
TEST.VALUE:FORKER.DECODE_EXIT.STATUS:<<MIN>>
TEST.VALUE:FORKER.DECODE_EXIT.CAUSE:<<MIN>>
TEST.VALUE:FORKER.DECODE_EXIT.CODE:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:FORKER
TEST.SUBPROGRAM:DECODE_EXIT
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if ( Status and Stop_Mask ) = Stop_Mask ==> FALSE
      (2) elsif ( Status and Stop_Mask ) = 0 ==> TRUE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set in branch 1
     Conflict: A condition in this branch uses an operand that cannot be set in branch 2
TEST.END_NOTES:
TEST.VALUE:FORKER.DECODE_EXIT.STATUS:<<MIN>>
TEST.VALUE:FORKER.DECODE_EXIT.CAUSE:<<MIN>>
TEST.VALUE:FORKER.DECODE_EXIT.CODE:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-003-PARTIAL
TEST.UNIT:FORKER
TEST.SUBPROGRAM:DECODE_EXIT
TEST.NEW
TEST.NAME:BASIS-PATH-003-PARTIAL
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if ( Status and Stop_Mask ) = Stop_Mask ==> TRUE
   Test Case Generation Notes:
     Conflict: A condition in this branch uses an operand that cannot be set in branch 1
TEST.END_NOTES:
TEST.VALUE:FORKER.DECODE_EXIT.STATUS:<<MIN>>
TEST.VALUE:FORKER.DECODE_EXIT.CAUSE:<<MIN>>
TEST.VALUE:FORKER.DECODE_EXIT.CODE:<<MIN>>
TEST.END

-- Test Case: DECODE_EXIT.001
TEST.UNIT:FORKER
TEST.SUBPROGRAM:DECODE_EXIT
TEST.NEW
TEST.NAME:DECODE_EXIT.001
TEST.END

-- Unit: LB_TEST_HELP

-- Subprogram: PUT

-- Test Case: <<MAX>>
TEST.UNIT:LB_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:LB_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:LB_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: PUT-PATH-001
TEST.UNIT:LB_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:PUT-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: PUT.001
TEST.UNIT:LB_TEST_HELP
TEST.SUBPROGRAM:PUT
TEST.NEW
TEST.NAME:PUT.001
TEST.END

-- Unit: LOCKS

-- Subprogram: (PT)LOCK_PROTECT.CLOSE

-- Test Case: (PT)LOCK_PROTECT.CLOSE.001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.CLOSE
TEST.NEW
TEST.NAME:(PT)LOCK_PROTECT.CLOSE.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.CLOSE
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.CLOSE
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.CLOSE
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: (PT)LOCK_PROTECT.OPEN

-- Test Case: (PT)LOCK_PROTECT.OPEN.001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.OPEN
TEST.NEW
TEST.NAME:(PT)LOCK_PROTECT.OPEN.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.OPEN
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.OPEN
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.OPEN
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: (PT)LOCK_PROTECT.WAIT

-- Test Case: (PT)LOCK_PROTECT.WAIT-PATH-001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.WAIT
TEST.NEW
TEST.NAME:(PT)LOCK_PROTECT.WAIT-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: (PT)LOCK_PROTECT.WAIT.001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.WAIT
TEST.NEW
TEST.NAME:(PT)LOCK_PROTECT.WAIT.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.WAIT
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.WAIT
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:(PT)LOCK_PROTECT.WAIT
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: CLOSE

-- Test Case: <<MAX>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:CLOSE
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:CLOSE
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:CLOSE
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: CLOSE-PATH-001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:CLOSE
TEST.NEW
TEST.NAME:CLOSE-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: CLOSE.001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:CLOSE
TEST.NEW
TEST.NAME:CLOSE.001
TEST.END

-- Subprogram: OPEN

-- Test Case: <<MAX>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:OPEN
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:OPEN
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:OPEN
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: OPEN-PATH-001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:OPEN
TEST.NEW
TEST.NAME:OPEN-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: OPEN.001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:OPEN
TEST.NEW
TEST.NAME:OPEN.001
TEST.END

-- Subprogram: WAIT(lock)

-- Test Case: <<MAX>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:WAIT(lock)
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:WAIT(lock)
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:WAIT(lock)
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: WAIT(lock).001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:WAIT(lock)
TEST.NEW
TEST.NAME:WAIT(lock).001
TEST.END

-- Subprogram: WAIT(lock,duration)boolean

-- Test Case: <<MAX>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:WAIT(lock,duration)boolean
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:WAIT(lock,duration)boolean
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:WAIT(lock,duration)boolean
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: WAIT(lock,duration)boolean.001
TEST.UNIT:LOCKS
TEST.SUBPROGRAM:WAIT(lock,duration)boolean
TEST.NEW
TEST.NAME:WAIT(lock,duration)boolean.001
TEST.END

-- Unit: NAV_TYPES

-- Subprogram: "+"(t_angle,t_angle)t_angle

-- Test Case: +(t_angle,t_angle)t_angle.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_angle)t_angle
TEST.NEW
TEST.NAME:+(t_angle,t_angle)t_angle.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_angle)t_angle
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_angle)t_angle
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_angle)t_angle
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: "+"(t_angle,t_degree)t_angle

-- Test Case: +(t_angle,t_degree)t_angle.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_degree)t_angle
TEST.NEW
TEST.NAME:+(t_angle,t_degree)t_angle.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_degree)t_angle
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_degree)t_angle
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_degree)t_angle
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: "+"(t_angle,t_drift)t_angle

-- Test Case: +(t_angle,t_drift)t_angle.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_drift)t_angle
TEST.NEW
TEST.NAME:+(t_angle,t_drift)t_angle.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_drift)t_angle
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_drift)t_angle
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"+"(t_angle,t_drift)t_angle
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: "-"(t_angle,t_angle)t_angle

-- Test Case: -(t_angle,t_angle)t_angle.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_angle)t_angle
TEST.NEW
TEST.NAME:-(t_angle,t_angle)t_angle.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_angle)t_angle
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_angle)t_angle
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_angle)t_angle
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: "-"(t_angle,t_angle)t_drift

-- Test Case: -(t_angle,t_angle)t_drift.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_angle)t_drift
TEST.NEW
TEST.NAME:-(t_angle,t_angle)t_drift.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_angle)t_drift
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_angle)t_drift
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_angle)t_drift
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: "-"(t_angle,t_drift)t_angle

-- Test Case: -(t_angle,t_drift)t_angle.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_drift)t_angle
TEST.NEW
TEST.NAME:-(t_angle,t_drift)t_angle.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_drift)t_angle
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_drift)t_angle
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"-"(t_angle,t_drift)t_angle
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Subprogram: "<"

-- Test Case: <.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:<.001
TEST.END

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if A1.Degrees /= A2.Degrees ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES."<".A1.DEGREES:<<MIN>>
TEST.VALUE:NAV_TYPES."<".A2.DEGREES:<<MAX>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:"<"
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if A1.Degrees /= A2.Degrees ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES."<".A1.DEGREES:<<MAX>>
TEST.VALUE:NAV_TYPES."<".A2.DEGREES:<<MAX>>
TEST.END

-- Subprogram: ">"

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:">"
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:">"
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:">"
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: >.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:">"
TEST.NEW
TEST.NAME:>.001
TEST.END

-- Test Case: BASIS-PATH-001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:">"
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if A1.Degrees /= A2.Degrees ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES.">".A1.DEGREES:<<MIN>>
TEST.VALUE:NAV_TYPES.">".A2.DEGREES:<<MAX>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:">"
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if A1.Degrees /= A2.Degrees ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES.">".A1.DEGREES:<<MAX>>
TEST.VALUE:NAV_TYPES.">".A2.DEGREES:<<MAX>>
TEST.END

-- Subprogram: REDUCTION

-- Test Case: <<MAX>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-PARTIAL
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:BASIS-PATH-001-PARTIAL
TEST.BASIS_PATH:1 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) while Loc_Deg > T_Degree ' Last ==> FALSE
      (3) if Loc_Deg < 0 ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate literal-to-expression comparison in branch 3
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES.REDUCTION.DEG:<<MIN>>
TEST.VALUE:NAV_TYPES.REDUCTION.MIN:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) while Loc_Deg > T_Degree ' Last ==> FALSE
      (3) if Loc_Deg < 0 ==> TRUE
      (4) if Loc_Min /= 0 ==> FALSE
      (6) while Loc_Deg < 0 ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate literal-to-expression comparison in branch 3
     Conflict: Unable to validate literal-to-expression comparison in branch 4
     Conflict: Unable to validate literal-to-expression comparison in branch 6
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES.REDUCTION.DEG:<<MIN>>
TEST.VALUE:NAV_TYPES.REDUCTION.MIN:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-003-PARTIAL
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:BASIS-PATH-003-PARTIAL
TEST.BASIS_PATH:3 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) while Loc_Deg > T_Degree ' Last ==> FALSE
      (3) if Loc_Deg < 0 ==> TRUE
      (4) if Loc_Min /= 0 ==> FALSE
      (6) while Loc_Deg < 0 ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate literal-to-expression comparison in branch 3
     Conflict: Unable to validate literal-to-expression comparison in branch 4
     Conflict: Unable to validate literal-to-expression comparison in branch 6
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES.REDUCTION.DEG:<<MIN>>
TEST.VALUE:NAV_TYPES.REDUCTION.MIN:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-004-PARTIAL
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:BASIS-PATH-004-PARTIAL
TEST.BASIS_PATH:4 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) while Loc_Deg > T_Degree ' Last ==> FALSE
      (3) if Loc_Deg < 0 ==> TRUE
      (4) if Loc_Min /= 0 ==> TRUE
      (6) while Loc_Deg < 0 ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate literal-to-expression comparison in branch 3
     Conflict: Unable to validate literal-to-expression comparison in branch 4
     Conflict: Unable to validate literal-to-expression comparison in branch 6
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES.REDUCTION.DEG:<<MIN>>
TEST.VALUE:NAV_TYPES.REDUCTION.MIN:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-005-PARTIAL
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:BASIS-PATH-005-PARTIAL
TEST.BASIS_PATH:5 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (1) while Loc_Deg > T_Degree ' Last ==> TRUE
      (3) if Loc_Deg < 0 ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate literal-to-expression comparison in branch 3
TEST.END_NOTES:
TEST.VALUE:NAV_TYPES.REDUCTION.DEG:<<MIN>>
TEST.VALUE:NAV_TYPES.REDUCTION.MIN:<<MIN>>
TEST.END

-- Test Case: REDUCTION.001
TEST.UNIT:NAV_TYPES
TEST.SUBPROGRAM:REDUCTION
TEST.NEW
TEST.NAME:REDUCTION.001
TEST.END

-- Unit: OPER_DEF

-- Subprogram: BEFORE

-- Test Case: <<MAX>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if Oper_1.Date.Year /= Oper_2.Date.Year ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (3) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-003-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:BASIS-PATH-003-TEMPLATE
TEST.BASIS_PATH:3 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (3) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> FALSE
      (5) elsif Oper_1.Date.Day /= Oper_2.Date.Day ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
     Conflict: Unable to validate expression-to-expression comparison in branch 5
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-004-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:BASIS-PATH-004-TEMPLATE
TEST.BASIS_PATH:4 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (3) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> FALSE
      (5) elsif Oper_1.Date.Day /= Oper_2.Date.Day ==> FALSE
      (7) elsif abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
     Conflict: Unable to validate expression-to-expression comparison in branch 5
     Conflict: Unable to validate expression-to-expression comparison in branch 7
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-005-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:BASIS-PATH-005-TEMPLATE
TEST.BASIS_PATH:5 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (1) if Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (3) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> FALSE
      (5) elsif Oper_1.Date.Day /= Oper_2.Date.Day ==> FALSE
      (7) elsif abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> FALSE
      (9) elsif Oper_1.Kind /= Oper_2.Kind ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
     Conflict: Unable to validate expression-to-expression comparison in branch 5
     Conflict: Unable to validate expression-to-expression comparison in branch 7
     Conflict: Unable to validate expression-to-expression comparison in branch 9
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-006-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:BASIS-PATH-006-TEMPLATE
TEST.BASIS_PATH:6 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 6
      (1) if Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (3) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> FALSE
      (5) elsif Oper_1.Date.Day /= Oper_2.Date.Day ==> FALSE
      (7) elsif abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> FALSE
      (9) elsif Oper_1.Kind /= Oper_2.Kind ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
     Conflict: Unable to validate expression-to-expression comparison in branch 5
     Conflict: Unable to validate expression-to-expression comparison in branch 7
     Conflict: Unable to validate expression-to-expression comparison in branch 9
TEST.END_NOTES:
TEST.END

-- Test Case: BEFORE.001
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:BEFORE
TEST.NEW
TEST.NAME:BEFORE.001
TEST.END

-- Subprogram: CONVERT

-- Test Case: <<MAX>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CONVERT
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CONVERT
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CONVERT
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: CONVERT-PATH-001
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CONVERT
TEST.NEW
TEST.NAME:CONVERT-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: CONVERT.001
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CONVERT
TEST.NEW
TEST.NAME:CONVERT.001
TEST.END

-- Subprogram: CURRENT_DATE

-- Test Case: <<MAX>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CURRENT_DATE
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CURRENT_DATE
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CURRENT_DATE
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: CURRENT_DATE-PATH-001
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CURRENT_DATE
TEST.NEW
TEST.NAME:CURRENT_DATE-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: CURRENT_DATE.001
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:CURRENT_DATE
TEST.NEW
TEST.NAME:CURRENT_DATE.001
TEST.END

-- Subprogram: SMALLER

-- Test Case: <<MAX>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> FALSE
      (3) elsif Oper_1.Date.Year /= Oper_2.Date.Year ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-003-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:BASIS-PATH-003-TEMPLATE
TEST.BASIS_PATH:3 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> FALSE
      (3) elsif Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (5) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
     Conflict: Unable to validate expression-to-expression comparison in branch 5
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-004-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:BASIS-PATH-004-TEMPLATE
TEST.BASIS_PATH:4 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> FALSE
      (3) elsif Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (5) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> FALSE
      (7) elsif Oper_1.Date.Day /= Oper_2.Date.Day ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
     Conflict: Unable to validate expression-to-expression comparison in branch 5
     Conflict: Unable to validate expression-to-expression comparison in branch 7
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-005-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:BASIS-PATH-005-TEMPLATE
TEST.BASIS_PATH:5 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (1) if abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> FALSE
      (3) elsif Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (5) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> FALSE
      (7) elsif Oper_1.Date.Day /= Oper_2.Date.Day ==> FALSE
      (9) elsif Oper_1.Kind /= Oper_2.Kind ==> TRUE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
     Conflict: Unable to validate expression-to-expression comparison in branch 5
     Conflict: Unable to validate expression-to-expression comparison in branch 7
     Conflict: Unable to validate expression-to-expression comparison in branch 9
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-006-TEMPLATE
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:BASIS-PATH-006-TEMPLATE
TEST.BASIS_PATH:6 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 6
      (1) if abs ( Oper_1.Amount ) /= abs ( Oper_2.Amount ) ==> FALSE
      (3) elsif Oper_1.Date.Year /= Oper_2.Date.Year ==> FALSE
      (5) elsif Oper_1.Date.Month /= Oper_2.Date.Month ==> FALSE
      (7) elsif Oper_1.Date.Day /= Oper_2.Date.Day ==> FALSE
      (9) elsif Oper_1.Kind /= Oper_2.Kind ==> FALSE
   Test Case Generation Notes:
     Conflict: Unable to validate expression-to-expression comparison in branch 1
     Conflict: Unable to validate expression-to-expression comparison in branch 3
     Conflict: Unable to validate expression-to-expression comparison in branch 5
     Conflict: Unable to validate expression-to-expression comparison in branch 7
     Conflict: Unable to validate expression-to-expression comparison in branch 9
TEST.END_NOTES:
TEST.END

-- Test Case: SMALLER.001
TEST.UNIT:OPER_DEF
TEST.SUBPROGRAM:SMALLER
TEST.NEW
TEST.NAME:SMALLER.001
TEST.END

-- Unit: REFLECT_TESTER

-- Subprogram: TEST

-- Test Case: <<MAX>>
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: TEST-PATH-001
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST
TEST.NEW
TEST.NAME:TEST-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: TEST.001
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST
TEST.NEW
TEST.NAME:TEST.001
TEST.END

-- Subprogram: TEST()integer

-- Test Case: <<MAX>>
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST()integer
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST()integer
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST()integer
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: TEST()integer.001
TEST.UNIT:REFLECT_TESTER
TEST.SUBPROGRAM:TEST()integer
TEST.NEW
TEST.NAME:TEST()integer.001
TEST.END

-- Unit: TYPES

-- Subprogram: ID_OF(letter)lid

-- Test Case: <<MAX>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:ID_OF(letter)lid
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:ID_OF(letter)lid
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:ID_OF(letter)lid
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: ID_OF(letter)lid.001
TEST.UNIT:TYPES
TEST.SUBPROGRAM:ID_OF(letter)lid
TEST.NEW
TEST.NAME:ID_OF(letter)lid.001
TEST.END

-- Subprogram: ID_OF(positive)lid

-- Test Case: <<MAX>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:ID_OF(positive)lid
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:ID_OF(positive)lid
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:ID_OF(positive)lid
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: ID_OF(positive)lid.001
TEST.UNIT:TYPES
TEST.SUBPROGRAM:ID_OF(positive)lid
TEST.NEW
TEST.NAME:ID_OF(positive)lid.001
TEST.END

-- Subprogram: LETTER_OF

-- Test Case: <<MAX>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:LETTER_OF
TEST.NEW
TEST.NAME:<<MAX>>
TEST.END

-- Test Case: <<MID>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:LETTER_OF
TEST.NEW
TEST.NAME:<<MID>>
TEST.END

-- Test Case: <<MIN>>
TEST.UNIT:TYPES
TEST.SUBPROGRAM:LETTER_OF
TEST.NEW
TEST.NAME:<<MIN>>
TEST.END

-- Test Case: LETTER_OF-PATH-001
TEST.UNIT:TYPES
TEST.SUBPROGRAM:LETTER_OF
TEST.NEW
TEST.NAME:LETTER_OF-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.END

-- Test Case: LETTER_OF.001
TEST.UNIT:TYPES
TEST.SUBPROGRAM:LETTER_OF
TEST.NEW
TEST.NAME:LETTER_OF.001
TEST.END
