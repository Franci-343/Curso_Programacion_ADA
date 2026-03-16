# 7. Funciones y Procedimientos

Ada promueve la modularidad máxima, y su base son las funciones y los procedimientos (Subprogramas).

## `procedure` (Procedimiento)
Bloque de código que ejecuta acciones pero **no devuelve** un resultado por sí mismo (retorno). Puedes usar parámetros `in`, `out` (devuelve el valor a la variable enviada) o `in out`.
```ada
procedure Sumar_Valores (A, B : in Integer; Resultado : out Integer) is
begin
   Resultado := A + B;
end Sumar_Valores;
```

## `function` (Función)
A diferencia de un procedimiento, la función **siempre devuelve** un resultado explícito usando su firma `return TIPO`. Solo pueden tener parámetros de entrada `in` en buenas prácticas convencionales.
```ada
function Multiplicar (A, B : in Integer) return Integer is
begin
   return A * B;
end Multiplicar;
```
