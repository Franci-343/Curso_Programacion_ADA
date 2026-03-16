with Ada.Text_IO; use Ada.Text_IO;

procedure bucles is
   I : Integer := 0;
begin
   -- imprimir numeros del 0 al 4 usando un bucle
   Put_Line("Bucle FOR:");
   loop
      Put_Line("Valor de I: " & Integer'Image(I));
      I := I + 1;
      exit when I >= 5;
   end loop;

   Put_Line("Bucle WHILE:");
   I := 0; -- reiniciar I para el siguiente bucle
   while I < 5 loop
      Put_Line("Valor de I: " & Integer'Image(I));
      I := I + 1;
   end loop;

   Put_Line("Bucle for con rango:");
   for J in 0 .. 4 loop
      Put_Line("Valor de J: " & Integer'Image(J));
   end loop;
end bucles;