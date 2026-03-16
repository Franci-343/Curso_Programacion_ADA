# 3. Variables y Constantes

Este módulo cubre el correcto manejo de la memoria a través de las variables y constantes. Ada es un lenguaje fuertemente tipado.

## Tipos Básicos
- **`Integer`**: Números enteros (ej. 1, -5, 42).
- **`Float`**: Números con decimales.
- **`String`**: Cadenas de caracteres. Nota: en Ada, el tamaño de los Strings usualmente debe conocerse o definirse, ej: `String(1 .. 20)`.
- **`Boolean`**: Valores verdaderos o falsos (`True` / `False`).

## Variables vs Constantes
- **Variables**: Pueden cambiar su valor durante la ejecución. Se asignan usando `:=`.
  ```ada
  Edad : Integer := 20;
  ```
- **Constantes**: Mantienen un único valor inmutable. Resultan útiles para valores predeterminados (como PI, configuraciones fijas).
  ```ada
  Max_Usuarios : constant Integer := 100;
  ```
