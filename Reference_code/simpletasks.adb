with Ada.Text_IO;
use Ada.Text_IO;

procedure SimpleTasks is
    N : Integer := 0;
    task type Simple;       -- Task Specification
    T1, T2 : Simple;        -- Task Declaration
                            -- both have the same body

    task body Simple is     -- Task Definition
    begin
        for I in 1..20 loop
            N := N + 1;
        end loop;
    end Simple;

begin
    delay 2.0;              -- Wait 2 sec
                            -- both tasks have completed
    Put("N = " & Integer'Image(N));
end SimpleTasks;

