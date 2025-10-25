# Atajos de Productividad para Navegación y Windows

Este proyecto combina un *script* de AutoHotkey (AHK) y un archivo de configuración para la extensión SurfingKeys para optimizar la navegación en Brave/Chrome y mejorar la interacción general con Windows mediante atajos de teclado personalizados.

El script fue creado por Sater.

---

## 1. AutoHotkey (`ahk.txt`)

El *script* de AutoHotkey está diseñado para mejorar la gestión de ventanas y pestañas del navegador Brave y para proporcionar atajos rápidos en Windows.

**Requisitos AHK**
* [cite_start]AutoHotkey v1.x[cite: 3].
* [cite_start]Teclado español (tecla `º` = `SC029`)[cite: 4, 39].

### Atajos de Teclado (AHK)

| Atajo | Acción | Contexto | Comentarios |
| :--- | :--- | :--- | :--- |
| **`º` + `q`** | [cite_start]Cambia cíclicamente entre las ventanas abiertas de **Brave**[cite: 1, 8]. | Global | [cite_start]Bloquea la tecla `º` sola[cite: 19]. |
| **`º` + `r`** | [cite_start]Resetea el contador interno de la ventana actual (`current := 0`)[cite: 2, 18]. | Global | [cite_start]Atajo de emergencia[cite: 2]. |
| **`º` + `1`** | [cite_start]Cambia a la pestaña **anterior** (`Ctrl` + `Shift` + `Tab`)[cite: 2, 20, 37, 44]. | [cite_start]Solo Brave [cite: 19, 39] | [cite_start]Requiere que Brave esté activo[cite: 39]. |
| **`º` + `2`** | [cite_start]Cambia a la pestaña **siguiente** (`Ctrl` + `Tab`)[cite: 3, 21, 38, 45]. | [cite_start]Solo Brave [cite: 19, 39] | [cite_start]Requiere que Brave esté activo[cite: 39]. |
| **`Alt` + `X`** | [cite_start]Alterna la barra de marcadores (`Ctrl` + `Shift` + `B`)[cite: 23]. | Global | [cite_start]Activa la ventana de Brave primero si no lo está[cite: 24]. |
| **`Ctrl` + `Q`** | [cite_start]Muestra/oculta la barra de marcadores en Brave/Chrome (`Ctrl` + `Shift` + `B`)[cite: 36]. | Global | |
| **`Win` + `X`** | [cite_start]Cierra la ventana activa (`Alt` + `F4`)[cite: 34, 35]. | Global | [cite_start]Más rápido que `Alt` + `F4` tradicional[cite: 34]. |
| **`Numpad 1-9`** | [cite_start]Ejecuta `Win` + `1-9`[cite: 32]. | Global | [cite_start]Abre/cambia a los programas anclados en la barra de tareas de Windows[cite: 30]. |
| **`Numpad /`** | [cite_start]Ejecuta `Ctrl` + `M`[cite: 33]. | Global | [cite_start]Acceso rápido para la combinación `Ctrl` + `M`[cite: 33]. |

---

## 2. SurfingKeys (`surfingkeysconfig.txt`)

Este archivo centraliza la configuración de la extensión SurfingKeys, combinando atajos personalizados con los comandos estándar, agrupados por funcionalidad. [cite_start]Se ha configurado el debug a `true`[cite: 47].

### Atajos de Navegación (SurfingKeys)

| Función | Atajo | Acción | Comentarios |
| :--- | :--- | :--- | :--- |
| **Scroll** | **`j`** | Scroll hacia abajo. | |
| **Scroll** | **`k`** | Scroll hacia arriba. | |
| **Scroll** | **`d`** | [cite_start]Scroll hacia abajo (remapeado de `j`)[cite: 54]. | |
| **Scroll** | **`u`** | Scroll hacia arriba por media página. | |
| **Scroll** | **`gg`** | Scroll al inicio de la página. | |
| **Scroll** | **`G`** | Scroll al final de la página. | |
| **Scroll** | **`hh`** | [cite_start]Scroll hasta el **fondo** de la página[cite: 53]. | Comando personalizado; [cite_start]`h` y `hh` desmapeados[cite: 52]. |
| **Historial** | **`<`** | [cite_start]Navega **atrás** en el historial[cite: 48]. | Comando personalizado; [cite_start]`<` original desmapeado[cite: 48]. |
| **Historial** | **`>`** | [cite_start]Navega **adelante** en el historial[cite: 49]. | Comando personalizado; [cite_start]`>` original desmapeado[cite: 48]. |
| **Historial** | **`H`** | Navega atrás en el historial. | |
| **Historial** | **`L`** | Navega adelante en el historial. | |
| **Historial** | **`S`** | Navega hacia atrás en el historial. | |
| **Historial** | **`D`** | Navega hacia adelante en el historial. | |
| **Pestañas y URL** | **`t`** | [cite_start]Abre la búsqueda de pestañas (`t` desmapeado)[cite: 54]. | |
| **Pestañas y URL** | **`o`** | Abre la omnibar (para historial, *bookmarks*, etc.). | |
| **Pestañas y URL** | **`T`** | Busca en las pestañas abiertas. | |
| **Pestañas y URL** | **`x`** | Cierra la pestaña actual. | |
| **Pestañas y URL** | **`X`** | Reabre la última pestaña cerrada. | |
| **Pestañas y URL** | **`yy`** | Copia la URL de la página actual. | |
| **Pestañas y URL** | **`p`** | Pega y abre la URL del portapapeles en la pestaña actual. | |
| **Pestañas y URL** | **`P`** | Pega y abre la URL del portapapeles en una nueva pestaña. | |
| **Pestañas y URL** | **`B`** | Abre un *bookmark*. | |
| **Hints y Foco** | **`f`** | Muestra *hints* para hacer *click* en un enlace o elemento (misma pestaña). | |
| **Hints y Foco** | **`F`** | [cite_start]Muestra **hints** para abrir enlaces en una nueva pestaña **en segundo plano**[cite: 56]. | Comando personalizado; [cite_start]`F` original desmapeado[cite: 55]. |
| **Hints y Foco** | **`.`** | [cite_start]**Quita el foco** de elementos activos (input, textarea, `contentEditable`) y enfoca el scroll principal[cite: 58, 59, 60, 61, 62, 63, 64]. | Comando personalizado; [cite_start]`.` original desmapeado[cite: 57]. |
| **Otros** | **`r`** | Recarga la página. | |
| **Otros** | **`zi` / `zo` / `zz`** | Zoom in / Zoom out / Zoom reset. | |

### Marcadores Rápidos (Quick Marks)

[cite_start]Todos los marcadores rápidos utilizan el prefijo `,` seguido de una letra para abrir el sitio web en una nueva pestaña[cite: 50].

| Atajo | Sitio Web |
| :--- | :--- |
| **`,y`** | [cite_start]Open YouTube [cite: 50] |
| **`,t`** | [cite_start]Open Twitter [cite: 50] |
| **`,w`** | [cite_start]Open WhatsApp Web [cite: 50] |
| **`,c`** | [cite_start]Open ChatGPT [cite: 50] |
| **`,i`** | [cite_start]Open Instagram [cite: 51] |
| **`,m`** | [cite_start]Open Gmail [cite: 51] |
| **`,g`** | [cite_start]Open Gemini [cite: 51] |
| **`,r`** | [cite_start]Open Reddit [cite: 51] |

### Configuraciones Adicionales SurfingKeys

* [cite_start]**Scroll Suave** activado (`settings.smoothScroll = true`)[cite: 47].
* [cite_start]**Tamaño de Paso de Scroll** establecido en 180 (`settings.scrollStepSize = 180`)[cite: 47].
* [cite_start]Se aplica un **Tema personalizado** con colores oscuros y fuente `Input Sans Condensed`[cite: 67, 72].
* [cite_start]Se habilitó el debug en la consola (`settings.debug = true`)[cite: 47].
