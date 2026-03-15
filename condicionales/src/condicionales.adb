with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure condicionales is
   Nombre : String(1 .. 30);
   Nota : Integer;
   Carrera : Integer;
   Ultimo : Natural;
begin
   -- Capturar el nombre del estudiante
   Put("Ingrese el nombre del estudiante: ");
   Get_Line(Nombre, Ultimo);

   -- Capturar la calificación del estudiante
   Put("Ingrese la calificación del estudiante: ");
   Get(Nota);

   -- Capturar la carrera seleccionada
   Put("Ingrese la carrera (1 = Ingeniería, 2 = Medicina, 3 = Derecho): ");
   Get(Carrera);

   -- Evaluar si el estudiante aprobó o reprobó
   if Nota >= 70 then
      Put_Line("Aprobado");
   else
      Put_Line("Reprobado");
   end if;

   -- Evaluar el tipo de beca según la carrera
   case Carrera is
      when 1 => Put_Line("Beca tecnológica");
      when 2 => Put_Line("Beca científica");
      when 3 => Put_Line("Beca jurídica");
      when others => Put_Line("Carrera no reconocida");
   end case;

   -- Mostrar los resultados de forma ordenada
   Put_Line("\nResultados:");
   Put_Line("Nombre: " & Nombre(1 .. Ultimo));
   Put_Line("Calificación: " & Integer'Image(Nota));
   Put_Line("Carrera: " & Integer'Image(Carrera));
end condicionales;