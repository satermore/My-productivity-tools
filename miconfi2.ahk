; -----------------------------------------------------
; Script completo de AutoHotkey para Brave
; 
; Funcionalidad:
;   - º + q → Cambia entre ventanas de Brave
;   - º + r → Resetea el contador (emergencia)
;   - º + 1 → Cambia a la pestaña anterior (Ctrl + Shift + Tab)
;   - º + 2 → Cambia a la pestaña siguiente (Ctrl + Tab)
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

; Variable global para recordar la ventana actual
current := 0

; --- CAMBIO DE VENTANAS (funciona globalmente) ---

; Atajo: º + q
SC029 & q::
    ; Enviar Escape para cerrar cualquier menú abierto
    Send, {Escape}
    Sleep, 100
    
    ; Obtener todas las ventanas de Brave abiertas
    WinGet, id, List, ahk_exe brave.exe

    ; Si no hay ventanas, salir
    if (id = 0)
        return

    ; Obtener la ventana actualmente activa
    WinGet, activeWindow, ID, A
    
    ; Buscar el índice de la ventana activa en la lista
    currentActiveIndex := 0
    Loop, %id%
    {
        if (id%A_Index% = activeWindow)
        {
            currentActiveIndex := A_Index
            break
        }
    }
    
    ; Si la ventana activa es de Brave, ir a la siguiente
    ; Si no, ir a la primera ventana de Brave
    if (currentActiveIndex > 0)
    {
        current := currentActiveIndex + 1
        if (current > id)
            current := 1
    }
    else
    {
        current := 1
    }

    ; Activar la ventana correspondiente
    this_id := id%current%
    WinActivate, ahk_id %this_id%
    
    ; Pequeña pausa para asegurar la activación
    Sleep, 50
return

; Atajo de emergencia para resetear: º + r
SC029 & r::
    current := 0
    Send, {Escape}
    ToolTip, Reseteado
    Sleep, 500
    ToolTip,
return

; --- Bloquea la tecla º sola ---
SC029::return

; --- CAMBIO DE PESTAÑAS (solo cuando Brave está activo) ---
#IfWinActive ahk_exe brave.exe

; º + 1 → Cambia a la pestaña anterior (Ctrl + Shift + Tab)
SC029 & 1::
    Send {Ctrl down}{Shift down}{Tab}{Shift up}{Ctrl up}
return

; º + 2 → Cambia a la pestaña siguiente (Ctrl + Tab)
SC029 & 2::
    Send {Ctrl down}{Tab}{Ctrl up}
return

#IfWinActive  ; Fin del contexto Brave

; Script AutoHotkey para Brave
; Funcionalidad:
; - Alt + X: Alterna la barra de marcadores (Ctrl + Shift + B)
; -----------------------------------------------------

!x::  ; Alt + X
{
    ; Activar la ventana de Brave
    WinActivate, ahk_exe brave.exe
    WinWaitActive, ahk_exe brave.exe, , 1  ; Espera 1 segundo

    ; Si no se activó Brave, mostrar mensaje y salir
    if !WinActive("ahk_exe brave.exe")
    {
        MsgBox, 16, Error, No se encontró una ventana de Brave activa.
        return
    }

    ; Enviar Ctrl+Shift+B con un pequeño retraso para mayor fiabilidad
    Send {Ctrl down}
    Sleep 10
    Send {Shift down}
    Sleep 10
    Send b
    Sleep 10
    Send {Shift up}
    Send {Ctrl up}
return
}