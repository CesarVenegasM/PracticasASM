@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 09/12/2021


.data
var1: .asciz " %d\n"
seed: .word 1
const1: .word 1103515245
const2: .word 12345

.text
.global main


main: push {r4, r5} @Se guarfan los registros r4 y r5

  mov r0, #42 @Se llama a mysrand con el valor de 42
  bl mysrand

  mov r4, #5 @Se inicializa el bucle en r4

bucle:      @bucle que imprime 5 numeros aleatorios
  bl myrand  @se lee un numero aleatorio 
  mov r1, r0 @se asigna el valor a r1
  ldr r0, =var1  @Se hace cadena con r0
  bl printf @Llamada a la funcion printf
  subs r4, r4, #1 @decremento del contador
  bne bucle @salida si se se llega a 0

/* Recuperamos registros y salimos */
  pop {r4, r5}
  bx lr
  
myrand: ldr r1, =seed
  ldr r0, [r1]
  ldr r2, [r1, #4]
  mul r3, r0, r2
  ldr r0, [r1, #8]
  add r0, r0, r3
  str r0, [r1]
  mov r0, r0, LSL #1
  mov r0, r0, LSR #17
  bx lr
  
mysrand: ldr r1, =seed
  str r0, [r1]
  bx lr
