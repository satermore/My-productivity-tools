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

