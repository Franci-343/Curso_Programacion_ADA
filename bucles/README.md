# 6. Bucles

Este módulo se centra en cómo hacer iteraciones, es decir, repetir operaciones de código.

## `loop` sin límites
Es el ciclo más básico que repetirá eternamente a menos que indiquemos una condición de salida `exit when`:
```ada
loop
   -- código a repetir --
   exit when Contador = 10;
end loop;
```

## `for` loop
El más útil para iterar sobre rangos o arreglos exactos. Declara su propio iterador implícitamente:
```ada
for I in 1 .. 5 loop
   Put_Line("Iteración: " & Integer'Image(I));
end loop;
```

## `while` loop
Repite mientras una condición booleana sea verdadera `True`:
```ada
while Opcion /= 0 loop
   -- operaciones --
   Get(Opcion);
end loop;
```
