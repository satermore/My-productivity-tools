# Atajos de Productividad para Navegación y Windows

Este proyecto combina un *script* de AutoHotkey (AHK) y un archivo de configuración para la extensión SurfingKeys para optimizar la navegación en Brave/Chrome y mejorar la interacción general con Windows mediante atajos de teclado personalizados.

Esta configuración la llevo usando mucho tiempo sin ningún problema, esta preparada para ser editable con todo bien documentado para adaptarla a tus necesidades y gustos. 

---
**Requisitos**
* Teclado español (tecla `º` = `SC029`).
* AutoHotkey v1.x.
* Surfingkeys extension. 
* Adicionalmente Mute Tab extensión y configura `Ctrl` + `M` como atajo en Brave. Luego pulsando `Numpad /` hará la función de silenciar. Puedes usar la tecla `Numpad /` para cualquier programa/función siempre que configures tu atajo como `Ctrl` + `M`. 

---

## 1. AutoHotkey (`braveconfig.ahk & miconfi.ahk`)

El *script* de AutoHotkey está diseñado para mejorar la gestión de ventanas y pestañas del navegador Brave y para proporcionar atajos rápidos en Windows.
remapeando la tecla `º` del teclado español y usando `1` y `2` para moverte hacia derecha o izquierda en las pestañas, o usando `º + q` para cambiar el foco a la otra ventana de brave.  
Uso de **`Numpad 1-9`** para cambiar entre los programas de la barra de windows, haciendo más facil la navegación sin ratón. 
Además incluye `Numpad /` para usarlo con la extension Mute Tab extension o similares haciendo más comodo el silenciar pestañas) 


### Atajos de Teclado (AHK)

| Atajo | Acción | Contexto | Comentarios |
| :--- | :--- | :--- | :--- |
| **`º` + `q`** | Cambia cíclicamente entre las ventanas abiertas de **Brave**. | Global | Bloquea la tecla `º` sola. |
| **`º` + `r`** | Resetea el contador interno de la ventana actual (`current := 0`). | Global | Atajo de emergencia. |
| **`º` + `1`** | Cambia a la pestaña **anterior** (`Ctrl` + `Shift` + `Tab`). | Solo Brave  | Requiere que Brave esté activo. |
| **`º` + `2`** | Cambia a la pestaña **siguiente** (`Ctrl` + `Tab`). | Solo Brave  | Requiere que Brave esté activo. |
| **`Ctrl` + `q`** |Muestra/oculta la barra de marcadores en Brave/Chrome (`Ctrl` + `Shift` + `B`). | Global | |
| **`Win` + `x`** | Cierra la ventana activa (`Alt` + `F4`). | Global | Más rápido que `Alt` + `F4` tradicional. |
| **`Numpad 1-9`** | Ejecuta `Win` + `1-9`. | Global | Abre/cambia a los programas anclados en la barra de tareas de Windows. |
| **`Numpad /`** | Ejecuta `Ctrl` + `M`. | Global | Acceso rápido para la combinación `Ctrl` + `M` utilidad para silenciar pestaña (se necesita Mute Tab extensión o similar y remapear el control). |

---

## 2. SurfingKeys (`surfingkeysconfig.txt`)

SurfingKeys es una extensión para navegadores que permite navegar y controlar páginas web usando principalmente el teclado. 
Facilita abrir enlaces, cambiar de pestañas, buscar texto y ejecutar acciones rápidas sin depender del ratón, haciendo la navegación más ágil y eficiente.
Este archivo centraliza la configuración de la extensión SurfingKeys, combinando atajos personalizados con los comandos estándar, agrupados por funcionalidad.

### Atajos de Navegación (SurfingKeys)

| Función | Atajo | Acción | Comentarios |
| :--- | :--- | :--- | :--- |
| **Hints y Foco** | **`f`** | Muestra *hints* para hacer *click* en un enlace o elemento (misma pestaña). | |
| **Hints y Foco** | **`F (Shift + f)`** | Muestra **hints** para abrir enlaces en una nueva pestaña|
| **Hints y Foco** | **`.`** | **Quita el foco** de elementos activos (Útil en sitios que se pierde el foco como en twitter, reddit etc) |
| **Scroll** | **`j`** | Scroll hacia abajo. | |
| **Scroll** | **`k`** | Scroll hacia arriba. | |
| **Scroll** | **`gg`** | Scroll al inicio de la página. | |
| **Scroll** | **`hh`** | Scroll hasta el **fondo** de la página. |
| **Scroll** | **`e`** | Scroll hacia arriba.  | scroll para mano izquierda |
| **Scroll** | **`d`** | Scroll hacia abajo. | scroll para mano izquierda |
| **Utilidades** | **`<`** | Navega **atrás** en el historial |
| **Utilidades** | **`> (Shift + <)`** | Navega **adelante** en el historial |
| **Utilidades** | **`x`** | Cierra la pestaña actual. | |
| **Utilidades** | **`X (Shift + x)`** | Reabre la última pestaña cerrada. | |
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

* **Scroll Suave** activado (`settings.smoothScroll = true`).
* **Tamaño de Paso de Scroll** establecido en 180, cambiar valor para mas rapido o mas lento (`settings.scrollStepSize = 180`).

