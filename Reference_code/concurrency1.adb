with Ada.Text_IO;
use Ada.Text_IO;

procedure Concurrency1 is
    N : Integer := 0;
    task type Add1;
    task type Add2;
    T2 : Add2;
    T1 : Add1;
    
    task body Add2 is
    begin
        for I in 1..2 loop
            N := N * 2;
            Put_Line("N = " & Integer'Image(N));
        end loop;
    end Add2;

    task body Add1 is
    begin
        for I in 1..20 loop
            N := N + 1;
            Put_Line("N = " & Integer'Image(N));
        end loop;
    end Add1;





begin
    delay 1.0;
    Put_Line("N = " & Integer'Image(N));
end Concurrency1;