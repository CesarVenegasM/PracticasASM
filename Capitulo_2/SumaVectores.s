@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 06/12/2021

@@Sección de codigo
.data
var1: .asciz  "La suma es %d\n"
var2: .word 128, 32, 100, -30, 124

.text
.global main

main: push  {r4, lr}
//Se inicializan las variables y apuntamos r2 a var2
  mov r0, #5
  mov r1, #0
  ldr r2, =var2
  //Bucle para realizar la suma
  bucle:  ldr r3, [r2], #4
    add r1, r1, r3
    subs  r0, r0, #1
    bne bucle //Nuevo llamado al bucle
    //Aqui se imprime el resultado
    ldr r0, =var1
    bl  printf
    //Recuperamos registros y salimos
    pop {r4, lr}
    bx  lr
