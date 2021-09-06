-- protected type Shared_Variable(Initial_Value : Integer) is
--     procedure Add(Number : Integer);
--     procedure Subtract(Number : Integer);
--     procedure Write(Number : Integer);
--     function Read return Integer;
-- private
--     X : Integer := Initial_Value;
-- end Shared_Variable;

package body Shared is
    protected body Shared_Variable is
        procedure Add(Number : Integer) is
        begin
            X := X + Number;
        end Add;

        procedure Subtract(Number : Integer) is
        begin
            X := X - Number;
        end Subtract;

        procedure Write(Number : Integer) is
        begin
            X := Number;
        end Write;

        function Read return Integer is
        begin
            return X;
        end Read;
    end Shared_Variable;
end Shared;

