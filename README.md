Este es un pequeño curso para aprender el lenguaje de programación Ada. Actualmente, el famoso IDE GNAT ya no se utiliza ampliamente, ya que está más orientado a empresas. Por lo tanto, lo ideal es descargar e instalar Alire, una herramienta moderna y práctica para gestionar proyectos en Ada.

### Instalación de Alire

1. **Descargar Alire**:
   - Ve al repositorio oficial de Alire: [https://github.com/alire-project/alire/releases](https://github.com/alire-project/alire/releases).
   - Descarga el instalador correspondiente para tu sistema operativo.

2. **Instalar Alire**:
   - Ejecuta el instalador, si decides instalarlo en una ubicacion diferente no te olvides de agregarlo al path del sistema

3. **Verificar la Instalación**:
   - Abre una terminal (CMD o PowerShell).
   - Ejecuta el siguiente comando para verificar que Alire está instalado correctamente:
     ```bash
     alr --version
     ```
     Deberías ver la versión de Alire instalada.

4. **Usar Alire para Crear un Proyecto**:
   - Crea un nuevo proyecto con Alire:
     ```bash
     alr init nombre_proyecto --bin
     ```
     Esto generará una estructura básica para un proyecto ejecutable en Ada.

5. **Instalar Dependencias con Alire**:
   - Si tu proyecto requiere bibliotecas externas, puedes instalarlas con:
     ```bash
     alr with nombre_biblioteca
     ```