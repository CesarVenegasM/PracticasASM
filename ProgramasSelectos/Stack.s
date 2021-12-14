@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 11/12/2021

.global main

main:
     mov   r0, #2  //Inicializacion de r0
     push  {r0}    //Guardar R0 en la pila
     mov   r0, #3  // Guardar R0
     pop   {r0}    // Restablecer R0 a su valor inicial
     bx    lr      // Finalizar el programa
