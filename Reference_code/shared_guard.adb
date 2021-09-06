with Ada.Text_IO;
use Ada.Text_IO;

package body Shared_Guard is
    protected body Shared_Variable is
        entry Add(Number : Integer) when X < Max is
        begin
            X := X + Number;
            Put_Line ("Added 1 coin - Coins:" & Integer'Image(X));

        end;

        entry Subtract(Number : Integer) when X > Min is
        begin
            X := X - Number;
            Put_Line ("Taken 1 coin - Coins:" & Integer'Image(X));
        end;

        procedure Write(Number : Integer) is
        begin
            X := Number;
        end Write;

        function Read return Integer is
        begin
            return X;
        end Read;
    end Shared_Variable;
end Shared_Guard;
