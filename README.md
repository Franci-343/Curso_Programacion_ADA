<div align="center">

![Ada Banner](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Ada_Mascot_with_text.svg/800px-Ada_Mascot_with_text.svg.png)

# Curso de Programación en Ada

Un curso estructurado y directo al punto para dominar las bases de Ada, el lenguaje conocido por su robustez, seguridad y tipado fuerte, ideal para sistemas críticos.

[![Alire Version](https://img.shields.io/badge/Alire-Package%20Manager-blue.svg)](https://alire.ada.dev/)
[![Status](https://img.shields.io/badge/Status-Completado-success.svg)]()
[![Ada](https://img.shields.io/badge/Language-Ada-001F3F.svg)]()

</div>

---

## Sobre el Curso

Este es un pequeño curso para aprender el lenguaje de programación Ada desde cero. Actualmente, el clásico IDE GNAT Studio ya no se utiliza ampliamente en entornos modernos de aprendizaje o proyectos independientes. Por lo tanto, en este curso utilizaremos **Alire**, el gestor oficial y moderno de paquetes para Ada.

---

## Estructura del Curso

Cada carpeta en este repositorio es un proyecto independiente de Alire que cubre un tema específico. Entra a cada una para ver su `README.md` y ejemplos prácticos:

- **[1. Hola Ada](hola_ada)** - Estructura básica de un programa.
- **[2. Impresión y Salida de Datos](impresion_salida_datos)** - Interacción básica con el usuario (`Get`, `Put_Line`).
- **[3. Variables y Constantes](variables_y_constantes)** - Tipos de datos, declaración y manejo de memoria.
- **[4. Operadores](operadores)** - Matemáticas, lógica y comparaciones.
- **[5. Condicionales](condicionales)** - Toma de decisiones (`if`, `case`).
- **[6. Bucles](bucles)** - Repetir acciones (`loop`, `for`, `while`).
- **[7. Funciones y Procedimientos](funciones_procedimientos)** - Modularidad y subprogramas.
- **[8. Sistema de Gestión de Acceso](sistema_gestion_acceso)** - **Proyecto Final**: Integración de todo lo aprendido en un simulador de control de ingresos y roles.

---

## Instalación y Configuración

### 1. Instalar Alire (Package Manager)
1. Ve al repositorio oficial de Alire: [Página Oficial (Releases)](https://github.com/alire-project/alire/releases).
2. Descarga el instalador correspondiente para tu sistema operativo.
3. Ejecuta el instalador. (*Nota: si cambias la ubicación por defecto, no olvides agregarlo al PATH del sistema*).

### 2. Verificar la Instalación
Abre tu terminal (CMD o PowerShell) y verifica tu versión:
```bash
alr --version
```

### 3. Comandos Útiles de Alire
Para ejecutar cualquier módulo de este curso:
1. Abre la terminal.
2. Navega a la carpeta del módulo deseado (ej. `cd bucles`).
3. Ejecuta el comando:
```bash
alr run
```

Para crear tus propios proyectos o descargar librerías:
- Crear proyecto nuevo: `alr init nombre_proyecto --bin`
- Instalar bibliotecas: `alr with nombre_biblioteca`

---

