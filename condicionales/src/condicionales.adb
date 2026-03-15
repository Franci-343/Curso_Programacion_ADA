with Ada.Text_IO; use Ada.Text_IO;

procedure condicionales is
   Edad : Integer := 0;
begin
   if Edad < 18 then
      Put_Line("Eres menor de edad.");
   else
      Put_Line("Eres mayor de edad.");
   end if;

end condicionales;