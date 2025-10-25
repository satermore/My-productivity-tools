# Atajos de Productividad para Navegación y Windows

Este proyecto combina un *script* de AutoHotkey (AHK) y un archivo de configuración para la extensión SurfingKeys para optimizar la navegación en Brave/Chrome y mejorar la interacción general con Windows mediante atajos de teclado personalizados.

El script fue creado por Sater.

---

## 1. AutoHotkey (`ahk.txt`)

El *script* de AutoHotkey está diseñado para mejorar la gestión de ventanas y pestañas del navegador Brave y para proporcionar atajos rápidos en Windows.

**Requisitos AHK**
* AutoHotkey v1.x.
* Teclado español (tecla `º` = `SC029`).

### Atajos de Teclado (AHK)

| Atajo | Acción | Contexto | Comentarios |
| :--- | :--- | :--- | :--- |
| **`º` + `q`** | Cambia cíclicamente entre las ventanas abiertas de **Brave**. | Global | Bloquea la tecla `º` sola. |
| **`º` + `r`** | Resetea el contador interno de la ventana actual (`current := 0`). | Global | Atajo de emergencia. |
| **`º` + `1`** | Cambia a la pestaña **anterior** (`Ctrl` + `Shift` + `Tab`). | Solo Brave  | Requiere que Brave esté activo. |
| **`º` + `2`** | Cambia a la pestaña **siguiente** (`Ctrl` + `Tab`). | Solo Brave  | Requiere que Brave esté activo. |
| **`Alt` + `X`** | Alterna la barra de marcadores (`Ctrl` + `Shift` + `B`). | Global | Activa la ventana de Brave primero si no lo está. |
| **`Ctrl` + `Q`** |Muestra/oculta la barra de marcadores en Brave/Chrome (`Ctrl` + `Shift` + `B`). | Global | |
| **`Win` + `X`** | Cierra la ventana activa (`Alt` + `F4`). | Global | Más rápido que `Alt` + `F4` tradicional. |
| **`Numpad 1-9`** | Ejecuta `Win` + `1-9`. | Global | Abre/cambia a los programas anclados en la barra de tareas de Windows. |
| **`Numpad /`** | Ejecuta `Ctrl` + `M`. | Global | Acceso rápido para la combinación `Ctrl` + `M`. |

---

## 2. SurfingKeys (`surfingkeysconfig.txt`)

Este archivo centraliza la configuración de la extensión SurfingKeys, combinando atajos personalizados con los comandos estándar, agrupados por funcionalidad.

### Atajos de Navegación (SurfingKeys)

| Función | Atajo | Acción | Comentarios |
| :--- | :--- | :--- | :--- |
| **Hints y Foco** | **`f`** | Muestra *hints* para hacer *click* en un enlace o elemento (misma pestaña). | |
| **Hints y Foco** | **`F`** | Muestra **hints** para abrir enlaces en una nueva pestaña|
| **Hints y Foco** | **`.`** | **Quita el foco** de elementos activos (Útil en sitios que se pierde el foco como en twitter, reddit etc) |
| **Scroll** | **`j`** | Scroll hacia abajo. | |
| **Scroll** | **`k`** | Scroll hacia arriba. | |
| **Scroll** | **`gg`** | Scroll al inicio de la página. | |
| **Scroll** | **`hh`** | Scroll hasta el **fondo** de la página. |
| **Scroll** | **`e`** | Scroll hacia arriba.  | scroll para mano izquierda |
| **Scroll** | **`d`** | Scroll hacia abajo. | scroll para mano izquierda |
| **Utilidades** | **`<`** | Navega **atrás** en el historial |
| **Utilidades** | **`>`** | Navega **adelante** en el historial |
| **Utilidades** | **`x`** | Cierra la pestaña actual. | |
| **Utilidades** | **`X`** | Reabre la última pestaña cerrada. | |
| **Utilidades** | **`yy`** | Copia la URL de la página actual. | |
| **Utilidades** | **`r`** | Recarga la página. | |

### Marcadores Rápidos

Todos los marcadores rápidos utilizan el prefijo `,` seguido de una letra para abrir el sitio web en una nueva pestaña.
Puedes editar los tuyos en el archivo surfingkeysconfig. 

| Atajo | Sitio Web |
| :--- | :--- |
| **`,y`** | Open YouTube |
| **`,t`** | Open Twitter  |
| **`,w`** | Open WhatsApp Web |
| **`,c`** | Open ChatGPT |
| **`,i`** | Open Instagram  |
| **`,m`** | Open Gmail  |
| **`,g`** | Open Gemini  |
| **`,r`** | Open Reddit  |

### Configuraciones Adicionales SurfingKeys

* **Scroll Suave** activado (`settings.smoothScroll = true`)[cite: 47].
* **Tamaño de Paso de Scroll** establecido en 180, cambiar valor para mas rapido o mas lento (`settings.scrollStepSize = 180`).

