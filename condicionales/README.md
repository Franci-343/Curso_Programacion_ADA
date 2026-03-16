# 5. Condicionales

Este módulo introdujo la lógica para la toma de decisiones en Ada, permitiendo que el programa ejecute diferentes porciones de código de acuerdo a distintas situaciones.

## `if - then - elsif - else`
A diferencia de otros lenguajes, el bloque se cierra de forma estricta con `end if;`:
```ada
if Nota >= 70 then
   Put_Line("Aprobado");
elsif Nota >= 60 then
   Put_Line("Aprobación en suspenso");
else
   Put_Line("Reprobado");
end if;
```

## `case`
Excelente alternativa a cadenas largas de `elsif`, ideal para menús o enumeraciones. Siempre debe abarcar todos los valores posibles (utiliza `when others =>` por seguridad).
```ada
case Opcion is
   when 1 => Put_Line("Has elegido la opción 1");
   when 2 => Put_Line("Has elegido la opción 2");
   when others => Put_Line("Opción no válida");
end case;
```
