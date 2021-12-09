@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 09/12/2021

.data
var1: .asciz " %d\n"
.text
.global main

main: push {r4, lr}
//Introduzco los 4 primeros parametros del registro 0 al 3
  mov r0, #1
  mov r1, #2
  mov r2, #3
  mov r3, #4
  
//Introduzco el quinto parametro por pila
  mov r4, #5
  push  {r4}
  
//Llamada a funcion poly3
//poly3 (1, 2, 3, 4, 5) 
  bl  poly3
  
//Equilibro la pila
  add sp, #4
  
//Paso resultado de la funcion a r1, cadena a imprimir a r0 y llamo a la funcion
  mov r1, r0
  ldr r0, =var1
  bl  printf
  
//Segunda llamada a poly
//poly3 (1 , -1 , 1 , -1 , 8)
  mov r0, #1
  mov r1, #-1
  mov r2, #1
  mov r3, #-1
  mov r4, #8
  push  {r4}
  bl  poly3
  add sp, #4
  
//imprimo resultado de segunda llamada
  mov r1, r0
  ldr r0, =var1
  bl  printf
  
//Tercera llamada poly3 (2, 0, 0, 0, 8)
  mov r0, #2
  mov r1, #0
  mov r2, #0
  mov r3, #0
  mov r4, #8
  push  {r4}
  bl  poly3
  add sp, #4
  mov r1, r0
  ldr r0, =var1
  bl  printf
  
//Recupero registros y salgo de main
  pop {r4, lr}
  bx  lr

  .equ  param5, 4*1

poly3:  push {r4} 
  ldr r4, [sp, #param5]
  smlabb  r3, r2, r4, r3 
  smulbb  r2, r4, r4
  smlabb  r3, r1, r2, r3 
  smulbb  r2, r2, r4
  smlabb  r0, r0, r2, r3 
  pop {r4} 
  bx  lr //fin
