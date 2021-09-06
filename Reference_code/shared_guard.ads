package Shared_Guard is
    protected type Shared_Variable(Initial_Value : Integer;
                                   Min_Value : Integer;
                                   Max_Value : Integer) is
        entry Add(Number : Integer);
        entry Subtract(Number : Integer);
        procedure Write(Number : Integer);
        function Read return Integer;
    private
        X : Integer := Initial_Value;
        Min : Integer := Min_Value;
        Max : Integer := Max_Value;
    end Shared_Variable;
end Shared_Guard;