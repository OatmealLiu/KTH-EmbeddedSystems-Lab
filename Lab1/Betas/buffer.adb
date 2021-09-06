package body Buffer is
   protected body CircularBuffer is

      -- := entry Put(X : Item) when count < Size
      -- X : Item := the Item waiting to be put into the buffer
      -- [procedure]
      --       - check if the buffer is full by the entry condition
      --       - put the Item into the buffer chunck pointed by In_Ptr
      --       - move In_Ptr to the next buffer chunck
      --       - increase the buffer occupancy counter Count by 1 if the Item is put into the buffer successfully
      entry Put(X: Item) when Count < Size is
      begin
         A(In_Ptr) := X;
         In_Ptr := In_Ptr + 1;
         Count := Count + 1;
      end Put;

      -- := entry Get(X : Item) when Count > 0
      -- X : Item := the Item waiting to be got from the buffer
      -- [procedure]
      --       - check if the buffer is empty by the entry condition
      --       - get the Item from the buffer chunck pointed by Out_Ptr
      --       - move Out_Ptr to the next buffer chunck
      --       - decrease the buffer occupancy counter Count by 1 if the Item is got from the buffer successfully
      entry Get(X: out Item) when Count > 0 is
      begin
         X := A(Out_Ptr);
         Out_Ptr := Out_Ptr + 1;
         Count := Count - 1;
      end Get;

   end CircularBuffer;
end Buffer;
