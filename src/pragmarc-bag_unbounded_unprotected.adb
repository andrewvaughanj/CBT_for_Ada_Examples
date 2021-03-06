-- PragmAda Reusable Component (PragmARC)
-- Copyright (C) 2002 by PragmAda Software Engineering.  All rights reserved.
-- **************************************************************************
--
-- History:
-- 2002 Oct 01     J. Carter          V1.3--Added Context to Iterate; use mode out to allow scalars
-- 2002 May 01     J. Carter          V1.2--Added Assign
-- 2001 May 01     J. Carter          V1.1--Improved time complexity of Empty
-- 2000 May 01     J. Carter          V1.0--Initial release
--
package body PragmARC.Bag_Unbounded_Unprotected is
   procedure Assign (To : out Handle; From : in Handle) is
      -- null;
   begin -- Assign
      Implementation.Assign (To => To.List, From => From.List);
   end Assign;

   procedure Clear (Bag : in out Handle) is
      -- null;
   begin -- Clear
      Implementation.Clear (Bag.List);
   end Clear;

   procedure Add (Item : in Element; Into : in out Handle) is
      Pos : Implementation.Position;
   begin -- Add
      Implementation.Insert (Into => Into.List, Item => Item, Before => Implementation.First (Into.List), New_Pos => Pos);
   end Add;

   -- Internal Find function used by Delete, Update, and Find
   -- Result points to matching Node if found; is null otherwise
   --
   type Search_Result (Found : Boolean := False) is record
      case Found is
      when False =>
         null;
      when True =>
         Pos : Implementation.Position;
      end case;
   end record;

   function Find (Key : Element; Bag : Handle) return Search_Result is
      Pos : Implementation.Position := Implementation.First (Bag.List);
      Item : Element;
      use type Implementation.Position;
   begin -- Find
      Search : loop
         exit Search when Pos = Implementation.Off_List (Bag.List);

         Implementation.Get (Bag.List, Pos, Item);
         if Key = Item then
            return (Found => True, Pos => Pos);
         end if;

         Pos := Implementation.Next (Pos, Bag.List);
      end loop Search;

      return (Found => False);
   end Find;

   procedure Delete (Item : in Element; From : in out Handle) is
      Temp : Search_Result := Find (Item, From);
   begin -- Delete
      if Temp.Found then
         Implementation.Delete (From => From.List, Pos => Temp.Pos);
      end if;
   end Delete;

   procedure Update (Item : in Element; Bag : in out Handle) is
      Temp : constant Search_Result := Find (Item, Bag);
   begin -- Update
      if Temp.Found then
         Implementation.Put (Into => Bag.List, Item => Item, Pos => Temp.Pos);
      end if;
   end Update;

   function Find (Key : Element; Bag : Handle) return Find_result is
      Temp : constant Search_Result := Find (Key, Bag);
      Item : Element;
   begin -- Find
      if Temp.Found then
         Implementation.Get (Bag.List, Temp.Pos, Item);
         return (Found => True, Item => Item);
      else
         return (Found => False);
      end if;
   end Find;

   function Empty (Bag : Handle) return Boolean is
      -- null;
   begin -- Empty
      return Implementation.Is_Empty (Bag.List);
   end Empty;

   function Size (Bag : Handle) return Natural is
      -- null;
   begin -- Size
      return Implementation.Length (Bag.List);
   end Size;

   procedure Iterate (Over : in out Handle; Context : in out Context_Data) is
      procedure Action
         (Item : in out Element; Context : in out Context_Data; Pos : in Implementation.Position; Continue : out Boolean)
      is
         -- null;
      begin -- Action
         Action (Item => Item, Context => Context, Continue => Continue);
      end Action;

      procedure Iterate is new Implementation.Iterate (Context_Data => Context_Data, Action => Action);
   begin -- Iterate
      Iterate (Over => Over.List, Context => Context);
   end Iterate;
end PragmARC.Bag_Unbounded_Unprotected;
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


