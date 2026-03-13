with Ada.Text_IO; use Ada.Text_IO;

procedure Operadores is
   A, B: Integer := 10;
   Resultado_Suma : Integer := 0;
   Resultado_Resta : Integer := 0;
   Resultado_Multiplicacion : Integer := 0;
   Resultado_Division : Float := 0.0;
   Es_Igual : Boolean := False;
   Es_Mayor : Boolean := False;
   Es_Menor : Boolean := False;
begin
   -- Operaciones aritméticas
   Resultado_Suma := A + B;
   Resultado_Resta := A - B;
   Resultado_Multiplicacion := A * B;
   Resultado_Division := Float(A) / Float(B);

   -- Operaciones relacionales
   Es_Igual := A = B;
   Es_Mayor := A > B;
   Es_Menor := A < B;

   -- Mostrar resultados
   Put_Line("El resultado de la suma es: " & Integer'Image(Resultado_Suma));
   Put_Line("El resultado de la resta es: " & Integer'Image(Resultado_Resta));
   Put_Line("El resultado de la multiplicación es: " & Integer'Image(Resultado_Multiplicacion));
   Put_Line("El resultado de la división es: " & Float'Image(Resultado_Division));

   Put_Line("¿A es igual a B? " & Boolean'Image(Es_Igual));
   Put_Line("¿A es mayor que B? " & Boolean'Image(Es_Mayor));
   Put_Line("¿A es menor que B? " & Boolean'Image(Es_Menor));
end Operadores;