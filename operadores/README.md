# 4. Operadores

Como todo lenguaje, Ada cuenta con una gama robusta de operadores lógicos y matemáticos.

## Operadores Aritméticos
- Suma (`+`), Resta (`-`), Multiplicación (`*`), División (`/`)
- Modulo o Resto (`mod`, `rem`): Usado principalmente para verificar si un número es par o impar, o ajustar valores en rangos.
- Exponenciación (`**`): Ej. `2 ** 3` es 8.

## Operadores Relacionales
- `>` Mayor que
- `<` Menor que
- `>=` Mayor o igual
- `<=` Menor o igual
- `=` Igual (A diferencia de otros lenguajes, no es `==`)
- `/=` Diferente de (A diferencia de otros lenguajes, no es `!=`)

## Operadores Lógicos
- `and` / `and then` (El "then" permite evaluación de corto circuito para evitar crasheos si la primera parte es falsa).
- `or` / `or else` (El "else" permite evaluación de corto circuito).
- `not` (Inversión o negación).
