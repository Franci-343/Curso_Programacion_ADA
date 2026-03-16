with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Reporte_Temperaturas is
   Temp1, Temp2, Temp3, Temp4, Temp5 : Float;
   Suma : Float := 0.0;
   Indice : Integer;
   Valor : Float;
   Confirmado : Boolean := False;
   Confirmacion : String(1 .. 5);
   Pos : Natural;
begin
   -- Solicitar al usuario el ingreso de 5 temperaturas
   Put_Line("Ingrese temperatura 1: ");
   Get(Temp1);
   Put_Line("Ingrese temperatura 2: ");
   Get(Temp2);
   Put_Line("Ingrese temperatura 3: ");
   Get(Temp3);
   Put_Line("Ingrese temperatura 4: ");
   Get(Temp4);
   Put_Line("Ingrese temperatura 5: ");
   Get(Temp5);

   -- Usar un bucle for para sumar las temperaturas
   for Indice in 1 .. 5 loop
      case Indice is
         when 1 => Suma := Suma + Temp1;
         when 2 => Suma := Suma + Temp2;
         when 3 => Suma := Suma + Temp3;
         when 4 => Suma := Suma + Temp4;
         when 5 => Suma := Suma + Temp5;
         when others => null;
      end case;
   end loop;

   -- Usar un bucle loop para mostrar cada temperatura individualmente
   Indice := 1;
   loop
      case Indice is
         when 1 => Put_Line("Temperatura 1: " & Float'Image(Temp1));
         when 2 => Put_Line("Temperatura 2: " & Float'Image(Temp2));
         when 3 => Put_Line("Temperatura 3: " & Float'Image(Temp3));
         when 4 => Put_Line("Temperatura 4: " & Float'Image(Temp4));
         when 5 => Put_Line("Temperatura 5: " & Float'Image(Temp5));
         when others => exit;
      end case;
      Indice := Indice + 1;
   end loop;

   -- Mostrar la suma total
   Put_Line("\nSuma total: " & Float'Image(Suma));

   -- Usar un bucle while para confirmar el reporte
   while not Confirmado loop
      Put_Line("¿Desea confirmar el reporte? (True/False): ");
      Get_Line(Confirmacion, Pos);
      if Confirmacion(1 .. Pos) = "True" then
         Confirmado := True;
         Put_Line("Reporte confirmado.");
      elsif Confirmacion(1 .. Pos) = "False" then
         Confirmado := False;
         Put_Line("Reporte no confirmado.");
      else
         Put_Line("Entrada inválida. Intente de nuevo.");
      end if;
   end loop;
end Reporte_Temperaturas;