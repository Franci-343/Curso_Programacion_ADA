with Ada.Text_IO; use Ada.Text_IO;
with Ada.integer_Text_IO; use Ada.integer_Text_IO;

procedure Impresion_Salida_Datos is
   Edad : Integer := 0;
   Nombre : String(1 .. 20) := (others => ' '); -- le indicamos a ada que recibiremos una cadena de 20 caracteres, y que por defecto se llenará con espacios
   Apellido : String(1 .. 20) := (others => ' ');
   Ultimo_1 : Natural := 0;
   Ultimo_2 : Natural := 0;
begin
   Put_Line("Ingrese su nombre: ");
   Get_Line(Nombre,Ultimo_1); -- con esta función se obtiene la cadena de texto ingresada por el usuario, y se guarda en la variable Nombre, y se guarda la cantidad de caracteres ingresados en la variable Ultimo_1
   Put_Line("Ingrese su apellido: ");
   Get_Line(Apellido,Ultimo_2); -- con esta función se obtiene la cadena de texto ingresada por el usuario, y se guarda en la variable Apellido, y se guarda la cantidad de caracteres ingresados en la variable Ultimo_2
   Put_Line("Ingrese su edad: ");
   Get(Edad); -- con esta función se obtiene el número entero ingresado por el usuario

   Put_Line("Hola " & Nombre(1..Ultimo_1) & " " & Apellido(1..Ultimo_2) & ", tienes " & Integer'Image(Edad) & " años.");
end Impresion_Salida_Datos;