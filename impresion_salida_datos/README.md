# 2. Impresión y Salida de Datos

En este módulo profundizamos en cómo comunicarnos con el usuario recibiendo y mostrando datos.

## Conceptos Clave
- **`Get` / `Get_Line`**: Permiten capturar un valor o una cadena completa de texto insertada por el usuario desde la terminal.
- Paquetes específicos para tipos de datos:
  - Para entradas/salidas de enteros usamos: `Ada.Integer_Text_IO`.
  - Para entradas/salidas de flotantes usamos: `Ada.Float_Text_IO`.
- **`'Image`**: Un atributo extremadamente útil en Ada que convierte un tipo de dato numérico (como `Integer` o `Float`) a su representación en `String` para poder concatenarlo e imprimirlo fácilmente con el operador `&`.

## Ejemplo de uso rápido:
```ada
Put_Line("Tu número es: " & Integer'Image(Numero));
```
