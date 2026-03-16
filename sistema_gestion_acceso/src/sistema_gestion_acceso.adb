with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Sistema_Gestion_Acceso is
   -- Buffers para entrada
   Usuario : String(1 .. 20);
   Contrasena : String(1 .. 20);
   Ult_Usuario : Natural;
   Ult_Contrasena : Natural;
   Codigo_Rol : Integer;
   Confirmacion : String(1 .. 5);
   Pos : Natural;
   Cerrar_Sesion : Boolean := False;

   procedure Ingresar_Datos(Usuario_Out : out String; Ult_User : out Natural;
                            Pass_Out : out String; Ult_Pass : out Natural;
                            Rol_Out : out Integer) is
      Role_Str : String(1 .. 8);
      DPos     : Natural;
   begin
      Put("Ingrese su nombre de usuario: ");
      Get_Line(Usuario_Out, Ult_User);

      Put("Ingrese su contraseña: ");
      Get_Line(Pass_Out, Ult_Pass);

      Put("Ingrese su código de rol (1=Admin, 2=Editor, 3=Lector): ");
      -- Leer como línea y convertir a Integer para evitar mezclas con Get
      Get_Line(Role_Str, DPos);
      if DPos > 0 then
         begin
            Rol_Out := Integer'Value(Role_Str(1 .. DPos));
         exception
            when Constraint_Error =>
               Rol_Out := 0;
         end;
      else
         Rol_Out := 0;
      end if;
   end Ingresar_Datos;

   function Verificar_Credenciales(U : in String; U_L : in Natural;
                                   P : in String; P_L : in Natural) return Boolean is
   begin
      return (U_L = 5 and then U(1 .. U_L) = "admin")
         and then (P_L = 4 and then P(1 .. P_L) = "1234");
   end Verificar_Credenciales;

   procedure Mostrar_Acceso(Rol : in Integer) is
   begin
      Put_Line("Acceso permitido.");
      case Rol is
         when 1 =>
            Put_Line("Rol: Administrador");
            Put_Line("Usted tiene acceso total al sistema.");
         when 2 =>
            Put_Line("Rol: Editor");
            Put_Line("Usted puede editar contenido.");
         when 3 =>
            Put_Line("Rol: Lector");
            Put_Line("Usted solo puede ver contenido.");
         when others =>
            Put_Line("Rol desconocido.");
      end case;
   end Mostrar_Acceso;

   procedure Menu_Rol(Rol : in Integer) is
   begin
      Put_Line("Opciones disponibles:");
      case Rol is
         when 1 =>
            Put_Line("- Gestionar usuarios");
            Put_Line("- Modificar configuración");
         when 2 =>
            Put_Line("- Editar contenido");
            Put_Line("- Proponer cambios");
         when 3 =>
            Put_Line("- Ver contenido");
         when others =>
            Put_Line("- Sin opciones disponibles");
      end case;
   end Menu_Rol;

begin
   -- Loop principal del sistema
   while not Cerrar_Sesion loop
      -- Ingresar datos
      Ingresar_Datos(Usuario, Ult_Usuario, Contrasena, Ult_Contrasena, Codigo_Rol);

      -- Verificar credenciales
      if Verificar_Credenciales(Usuario, Ult_Usuario, Contrasena, Ult_Contrasena) then
         Mostrar_Acceso(Codigo_Rol);
         Menu_Rol(Codigo_Rol);
      else
         Put_Line("Credenciales inválidas. Acceso denegado.");
      end if;

      -- Preguntar si desea cerrar sesión (validar entrada con while)
      loop
         Put("¿Desea cerrar sesión? (True/False): ");
         Get_Line(Confirmacion, Pos);
         if Pos = 4 and then Confirmacion(1 .. 4) = "True" then
            Cerrar_Sesion := True;
            Put_Line("Cerrando sesión...");
            exit;
         elsif Pos = 5 and then Confirmacion(1 .. 5) = "False" then
            Put_Line("--- Nueva sesión ---");
            exit;
         else
            Put_Line("Entrada inválida. Intente de nuevo.");
         end if;
      end loop;
   end loop;
end Sistema_Gestion_Acceso;
