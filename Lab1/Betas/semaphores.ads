-- Package: Semaphores
-- 
-- ==> Do not change this file!

package Semaphores is
   protected type CountingSemaphore(Max: Natural; Initial: Natural)  is
      entry Wait;                   -- Wait: protected_object's function with an entry condition
      entry Signal;                 -- Signal: protected_object's function with an entry condition
   private
      Count : Natural := Initial;   -- Count: private var - Natural-type, which will be initialized by Initial arg.
      MaxCount : Natural := Max;    -- MaxCount: private var - Natural-type, which will be initialized by Max arg.
   end CountingSemaphore;
end Semaphores;

