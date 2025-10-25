; =====================================================
; SCRIPT PERSONALIZADO DE ATAJOS PARA WINDOWS Y BRAVE
; Autor: Sater
; =====================================================
; Este script combina todos los atajos en un único archivo
; Los comentarios están detallados para recordar fácilmente
; qué hace cada sección.
; =====================================================

; -----------------------------------------------------
; [1] Numpad 1-9 → Win + 1-9
; Con estos atajos puedes abrir/cambiar a los programas
; anclados en la barra de tareas de Windows.
; Ejemplo: Numpad1 = Win+1 → abre el 1º programa anclado.
; -----------------------------------------------------
Numpad1::Send, #{1}
Numpad2::Send, #{2}
Numpad3::Send, #{3}
Numpad4::Send, #{4}
Numpad5::Send, #{5}
Numpad6::Send, #{6}
Numpad7::Send, #{7}
Numpad8::Send, #{8}
Numpad9::Send, #{9}

; -----------------------------------------------------
; [2] Numpad / → Ctrl + M
; Acceso rápido para la combinación Ctrl+M.
; (Depende de tu programa, en algunos silencia micrófono).
; -----------------------------------------------------
NumpadDiv::Send ^m

; -----------------------------------------------------
; [3] Win + X → Alt + F4
; Sirve para cerrar la ventana activa.
; Más rápido que Alt+F4 tradicional.
; -----------------------------------------------------
LWin & x::Send !{F4}

; -----------------------------------------------------
; [4] Ctrl + Q → Ctrl + Shift + B
; Muestra/oculta la barra de marcadores en Brave/Chrome.
; -----------------------------------------------------
^q::Send ^+b


; -----------------------------------------------------
; Script de AutoHotkey para navegar pestañas en Brave
;
; Funcionalidad:
;   - º + 1 → Cambia a la pestaña anterior (Ctrl + Shift + Tab)
;   - º + 2 → Cambia a la pestaña siguiente (Ctrl + Tab)
;
; Contexto:
;   - Solo funciona cuando Brave está activo
;
; Requisitos:
;   - AutoHotkey v1.x
;   - Teclado español (º = SC029)
; -----------------------------------------------------

; --- Configuración básica ---
#SingleInstance Force       ; Evita múltiples instancias del script
#NoEnv                      ; Mejora el rendimiento
SetWorkingDir %A_ScriptDir% ; Establece el directorio del script
SetBatchLines -1            ; Ejecuta el script a máxima velocidad

; --- Contexto: Brave activo ---
#IfWinActive ahk_exe brave.exe

; --- Atajos personalizados ---

; º + 1 → Cambia a la pestaña anterior (Ctrl + Shift + Tab)
SC029 & 1::
    Send {Ctrl down}{Shift down}{Tab}{Shift up}{Ctrl up}
return

; º + 2 → Cambia a la pestaña siguiente (Ctrl + Tab)
SC029 & 2::
    Send {Ctrl down}{Tab}{Ctrl up}
return

; --- Bloquea la tecla º sola ---
SC029::return

#IfWinActive  ; Fin del contexto Brave
