@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computación
@@ Ing. En Sistemas Computacionales

@ Ejemplo

@@autor: CesarVenegasM
@@Fecha de revisión: 06 de Diciembre del 2021

@@CODIGO

.data
var1:   .asciz " %d\012 \000"
.text
    .global main
main:
  push {r4, lr}
  mov r4, #100 //empezamos en 100 asignado a r4

bfor:
    mov r1, r4 //r1 guarda el valor de r4
    ldr r0, =var1
    bl  printf
    subs  r4, r4, #2 //r4 ahora vale r4 -2
    bne bfor
    mov r0, r4
    pop {r4, lr}
    pop {r4, pc}
