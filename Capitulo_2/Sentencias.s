@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 06/12/2021

.text
.global _start

_start:
  mov r1, #1 //r1 toma valor de 1
  mov r2, #2 //r2 toma el valor de 2
  cmp r1, r2 //Se hace la comparacion de r1 y r2
  bne else //llamada al metodo de else
  
if:
  add r0, r1, #5 //en este add se suma r5 y r1 y se guardan en r0
  b exit
  
else:
  add r0, r1, #6 //en este add se suma r6 y r1 y se guardan en r0
  
exit: //salida o stop del programa
  mov r7, #1
  svc 0
