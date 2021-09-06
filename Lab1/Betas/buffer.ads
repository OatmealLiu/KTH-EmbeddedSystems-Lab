package Buffer is
   Size: constant Integer := 3;              -- size of the chunck
   subtype Item is Integer;
   type Index is mod Size;                   -- unsigned int 3
   type Item_Array is array(Index) of Item;  -- an 3-elements array of Integer

   protected type CircularBuffer is
      entry Put(X: in Item);                 -- put the Item into the buffer
      entry Get(X: out Item);                -- get the Item from the buffer
   private
      A: Item_Array;                         -- 3-elements container
      In_Ptr, Out_Ptr: Index := 0;           -- In-pointer and Out-pointer, which are mod-3
      Count: Integer range 0..Size := 0;     -- Current occupancy counter
   end CircularBuffer;

end Buffer;

