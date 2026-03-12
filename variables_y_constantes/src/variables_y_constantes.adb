with Ada.Text_IO; use Ada.Text_IO;

procedure variables_y_constantes is
   Nombre : String := "Juan";
   Edad : Integer := 30;
   Profesion : String := "Ingeniero";
   Disponible : Boolean := True;

   PAIS_DEFAULT : constant String := "España";
   MAX_NOMBRE : constant Integer := 50;
begin
   Put_Line("Nombre: " & Nombre);
   Put_Line("Edad: " & Integer'Image(Edad));
   Put_Line("Profesion: " & Profesion);
   Put_Line("Disponible: " & Boolean'Image(Disponible));

   Put_Line("PAIS_DEFAULT: " & PAIS_DEFAULT);
   Put_Line("MAX_NOMBRE: " & Integer'Image(MAX_NOMBRE));
end variables_y_constantes;