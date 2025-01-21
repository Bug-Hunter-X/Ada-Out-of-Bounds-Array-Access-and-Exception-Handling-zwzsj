```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (others => 0); -- Initialize array

   function Get_Value (Index : Integer) return Integer is
   begin
      if Index in MyArr'Range then
         return MyArr(Index);
      else
         return -1; -- Handle out-of-bounds index
      end if;
   end Get_Value;

begin
   MyArr(1) := 10;
   MyArr(5) := 50;
   MyArr(11):=100; -- This is an out-of-bounds access! 
   --Ada will raise Constraint_Error exception 
   put_line("Value at index 5:" & Get_Value(5)'Img); 
   put_line("Value at index 11:" & Get_Value(11)'Img); -- This may cause an exception or unexpected behavior.
end Example;
```