pragma Priority_Specific_Dispatching(Round_Robin_Within_Priorities, 1, 2);

with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Real_Time;
use Ada.Real_Time;

procedure Round_Robin_Priorities is
    package Int_IO is new Ada.Text_IO.Integer_IO(Integer);

    Dummy : Integer;

    task type Round_Robin(Id : Integer; Prio : Integer) is
        pragma Priority(Prio);
    end Round_Robin;

    task body Round_Robin is
    begin
        loop
            Put("Round Robin Task ");
            Int_IO.Put(Id, 1);
            Put_Line("");
            for I in 1..1000 loop -- Waiting loop
                for J in 1..50000 loop
                    Dummy := I * 3 - 2 * J; -- Dummy Function
                end loop;
            end loop;
        end loop;
    end Round_Robin;

    -- Round Robin Tasks
    RR_1 : Round_Robin(1,1);
    RR_2 : Round_Robin(2,2);
    RR_3 : Round_Robin(3,2);
begin
    null;
end Round_Robin_Priorities;