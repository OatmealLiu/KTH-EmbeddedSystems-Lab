-- Package: Semaphores
--
-- ==> Complete the code at the indicated places

package body Semaphores is
   protected body CountingSemaphore is
      entry Wait when Count > 0 is                   -- To be completed
      begin
         Count := Count - 1;     -- acquire one slot if current slots are higher than zero
                                 -- if there is no slot available, the task will be suspended in the queue
      end;

      entry Signal when Count < Max is                 -- To be completed
      begin
         count := Count + 1;     -- release one slot if Current slots are smaller than Max one
      end Signal;
      
   end CountingSemaphore;
end Semaphores;

