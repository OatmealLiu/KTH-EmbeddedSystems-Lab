with Ada.Text_IO;
use Ada.Text_IO;
with Shared_Guard;
use Shared_Guard;

procedure Box_App is
    Box : Shared_Variable(3,0,3);

    task type Put_Money_Task;
    task type Get_Money_Task;
    task type Check_Money_Task;

    T1 : Put_Money_Task;
    T2 : Get_Money_Task;
    T3 : Check_Money_Task;
    T4 : Put_Money_Task;
    T5 : Check_Money_Task;


    task body Put_Money_Task is
    begin
        for I in 1..3 loop
            Box.Add(1);
        end loop;
    end Put_Money_Task;

    task body Get_Money_Task is
    begin
        for I in 1..4 loop
            Box.Subtract(1);
        end loop;
    end Get_Money_Task;

    task body Check_Money_Task is
        
    begin
        for I in 1..3 loop
            Put("Coins: ");
            Put_Line (Integer'Image(Box.Read));
        end loop;   
    end Check_Money_Task;
begin
    null;
end Box_App;