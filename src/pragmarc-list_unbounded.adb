-- PragmAda Reusable Component (PragmARC)
-- Copyright (C) 2002 by PragmAda Software Engineering.  All rights reserved.
-- **************************************************************************
--
-- History:
-- 2002 Oct 01     J. Carter          V1.4--Added Context to Iterate; use mode out to allow scalars
-- 2001 Dec 01     J. Carter          V1.3--Improved instantiation of Sort
-- 2001 May 01     J. Carter          V1.2--Added Is_Empty
-- 2000 Dec 01     J. Carter          V1.1--Revised implementation of Iterate
-- 2000 May 01     J. Carter          V1.0--Initial release
--
package body PragmARC.List_Unbounded is
   protected body Handle is
      procedure Clear is
         -- null;
      begin -- Clear
         Implementation.Clear (List => List);
      end Clear;

      function First return Position is
         -- null;
      begin -- First
         return Position (Implementation.First (List) );
      end First;

      function Last return Position is
         -- null;
      begin -- Last
         return Position (Implementation.Last (List) );
      end Last;

      function Off_List return Position is
         -- null;
      begin -- Off_List
         return Position (Implementation.Off_List (List) );
      end Off_List;

      function Next (Pos : Position) return Position is
         -- null;
      begin -- Next
         return Position (Implementation.Next (Implementation.Position (Pos), List) );
      exception -- Next
      when Implementation.Invalid_Position =>
         raise Invalid_Position;
      end Next;

      function Prev (Pos : Position) return Position is
         -- null;
      begin -- Prev
         return Position (Implementation.Prev (Implementation.Position (Pos), List) );
      exception -- Prev
      when Implementation.Invalid_Position =>
         raise Invalid_Position;
      end Prev;

      procedure Insert (Item : in Element; Before : in Position; New_Pos : out Position) is
         Result : Implementation.Position;
      begin -- Insert
         Implementation.Insert (Into => List, Item => Item, Before => Implementation.Position (Before), New_Pos => Result);
         New_Pos := Position (Result);
      exception -- Insert
      when Implementation.Invalid_Position =>
         raise Invalid_Position;
      end Insert;

      procedure Append (Item : in Element; After : in Position; New_Pos : out Position) is
         Result : Implementation.Position;
      begin -- Append
         Implementation.Append (Into => List, Item => Item, After => Implementation.Position (After), New_Pos => Result);
         New_Pos := Position (Result);
      exception -- Append
      when Implementation.Invalid_Position =>
         raise Invalid_Position;
      end Append;

      procedure Delete (Pos : in out Position) is
         -- null;
      begin -- Delete
         Implementation.Delete (From => List, Pos => Implementation.Position (Pos) );
      exception -- Delete
      when Implementation.Invalid_Position =>
         raise Invalid_Position;
      end Delete;

      procedure Get (Pos : Position; Item : out Element) is
      begin -- Get
         Implementation.Get (List, Implementation.Position (Pos), Item);
      exception -- Get
      when Implementation.Invalid_Position =>
         raise Invalid_Position;
      end Get;

      procedure Put (Pos : in Position; Item : in Element) is
         -- null;
      begin -- Put
         Implementation.Put (Into => List, Pos => Implementation.Position (Pos), Item => Item);
      exception -- Put
      when Implementation.Invalid_Position =>
         raise Invalid_Position;
      end Put;

      function Is_Empty return Boolean is
         -- null;
      begin -- Is_Empty
         return Implementation.Is_Empty (List);
      end Is_Empty;

      function Length return Natural is
         -- null;
      begin -- Length
         return Implementation.Length (List);
      end Length;

      procedure Iterate (Action : in Action_Ptr; Context : in out Context_Data'Class) is
         procedure Local_Action
            (Item : in out Element; Context : in out Context_Data'Class; Pos : in Implementation.Position; Continue : out Boolean)
         is
            -- null;
         begin -- Local_Action
            Action (Item => Item, Context => Context, Pos => Position (Pos), Continue => Continue);
         end Local_Action;
         pragma Inline (Local_Action);

         procedure Local is new Implementation.Iterate (Context_Data => Context_Data'Class, Action => Local_Action);
      begin -- Iterate
         Local (Over => List, Context => Context);
      end Iterate;

      procedure Sort (Less_Than : in Less_Ptr) is
         procedure Local is new Implementation.Sort ("<" => Less_Than.all);
      begin -- Sort
         Local (List => List);
      end Sort;
   end Handle;
end PragmARC.List_Unbounded;
--
-- This is free software; you can redistribute it and/or modify it under
-- terms of the GNU General Public License as published by the Free Software
-- Foundation; either version 2, or (at your option) any later version.
-- This software is distributed in the hope that it will be useful, but WITH
-- OUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
-- or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
-- for more details. Free Software Foundation, 59 Temple Place - Suite
-- 330, Boston, MA 02111-1307, USA.
--
-- As a special exception, if other files instantiate generics from this
-- unit, or you link this unit with other files to produce an executable,
-- this unit does not by itself cause the resulting executable to be
-- covered by the GNU General Public License. This exception does not
-- however invalidate any other reasons why the executable file might be
-- covered by the GNU Public License.


