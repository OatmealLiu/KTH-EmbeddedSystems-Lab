with Ada.Text_IO;
use Ada.Text_IO;

procedure Modular_Types is
	
	type Counter_Value is mod 10; 
	package Counter_Value_IO is 
		new Ada.Text_IO.Modular_IO (Counter_Value);

   Count : Counter_Value := 5;

begin
	Put("First value of type Counter_Value: ");
   Counter_Value_IO.Put(Counter_Value'First,1);
	Put_Line(" ");
	Put("Last value of type Counter_Value: ");	
	Counter_Value_IO.Put(Counter_Value'Last,1);
	Put_Line(" ");
	for I in 1..5 loop
		Count := Count + 6;
		Counter_Value_IO.Put(Count);
		Put_Line("");
	end loop;	
end Modular_Types;
