with Ada.Text_IO;
use Ada.Text_IO;

procedure Debug_T1 is
    N : Natural := 10;
begin
    for I in 1..20 loop
        Put_Line ("N = " & Natural'Image(N));
        N := N - 1;
    end loop;
end Debug_T1;