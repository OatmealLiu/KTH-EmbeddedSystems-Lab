with Ada.Text_IO;
use Ada.Text_IO;

procedure Box_App_Rendezvous_Select is
    task type Box(Initial_Value : Integer;  -- task specification
                  Min_Value : Integer;
                  Max_Value : Integer) is
        entry Add(Number : Integer);
        entry Subtract(Number : Integer);
        entry Read;
    end Box;

    task body Box is                        -- task definition
        X : Integer := Initial_Value;
    begin
        loop
            select
                when X < Max_Value =>   -- guard of Add()
                    accept Add(Number : Integer) do
                        X := X + Number;
                    end Add;
                or
                when X > 0 =>           -- guard of Subtract()
                    accept Subtract(Number : Integer) do
                        X := X - Number;
                    end Subtract;
                or
                accept Read do          -- no guard for Read()
                    Put_Line("Coins:" & Integer'Image(X));
                end Read;
                or
                    terminate;
            end select;
        end loop;
    end Box;

    -- initialization a task
    B : Box(2,0,4); -- Box includes initially 2 coins
                    -- SIze: 4 coins
                    -- B is the ID of the Server

    task type Put_Money_Task;
    task type Get_Money_Task;
    task type Check_Money_Task;

    task body Put_Money_Task is
    begin
        for I in 1..5 loop
            B.Add(1);
        end loop;
    end Put_Money_Task;

    task body Get_Money_Task is
    begin
        for I in 1..5 loop
            B.Subtract (1);
        end loop;
    end Get_Money_Task;

    task body Check_Money_Task is
    begin
        for I in 1..5 loop
            B.Read;
        end loop;
    end Check_Money_Task;

    P1, P2 : Put_Money_Task;
    T1, T2 : Get_Money_Task;
    C1, C2 : Check_Money_Task;

begin
    null;
end Box_App_Rendezvous_Select;

