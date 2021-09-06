with Ada.Text_IO;
use Ada.Text_IO;

package body Greetings is
    procedure Hello is
    begin
        Put_Line("Hello World!");
    end Hello;

    procedure Propose is
    begin
        Put_Line("Giulia, I love you!");
    end Propose;

    procedure Goodbye is
    begin
        Put_Line("Ciao Ciao!");
    end Goodbye;
end Greetings;
