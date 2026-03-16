with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Funciones_Procedimientos is
   -- funcion suma
   function Sumar(A, B : Integer) return Integer is
   begin
      return A + B;
   end Sumar;
   -- funcion resta
   function Restar(A, B : Integer) return Integer is
   begin
      return A - B;
   end Restar;
   -- funcion multiplicacion
   function Multiplicar(A, B : Integer) return Integer is
   begin
      return A * B;
   end Multiplicar;
   -- funcion division
   function Dividir(A, B : Integer) return Integer is
   begin
      if B /= 0 then
         return A / B;
      else
         Put_Line("Error: División por cero");
         return 0; -- o algún valor que indique error
      end if;
   end Dividir;


   procedure MostrarResultados(A, B : Integer) is
   begin
      Put_Line("Resultados:");
      Put_Line("Suma: " & Integer'Image(Sumar(A, B)));
      Put_Line("Resta: " & Integer'Image(Restar(A, B)));
      Put_Line("Multiplicación: " & Integer'Image(Multiplicar(A, B)));
      Put_Line("División: " & Integer'Image(Dividir(A, B)));
   end MostrarResultados;
   -- numeros que el usuario ingresa
   Num1: Integer;
   Num2: Integer;
begin
   -- Capturar los números del usuario
   Put("Ingrese el primer número: ");
   Ada.Integer_Text_IO.Get(Num1);
   Put("Ingrese el segundo número: ");
   Ada.Integer_Text_IO.Get(Num2);

   -- Mostrar los resultados de las operaciones
   MostrarResultados(Num1, Num2);
   
end Funciones_Procedimientos;