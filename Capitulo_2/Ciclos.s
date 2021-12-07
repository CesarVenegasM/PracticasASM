@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 06/12/2021

.data
var1:  .asciz "%d\012 \000"
.text
       .global main

main:
        push    {r4, lr}
        mov     r4, #0 //el registro 4 toma el valor de 0

bfor:
        mov     r1, r4 //r1 toma el valor de r4
        ldr     r0, =var1
        add     r4, r4, #1 //actualizamos el valor de r4 por r4 + 1
        bl      printf
        cmp     r4, #6 //comparación
        bne     bfor //regreso al for
        pop     {r4, pc}
        pop     {r4, lr}        
        bx      lr
