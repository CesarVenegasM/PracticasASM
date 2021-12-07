@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 06/12/2021
.data
var1: .asciz  "La suma es %d\n"
var2: .word 128, 32, 100, -30, 124

.text
.global main

main: push  {r4, lr}

  //Bucle para realizar la suma
  
    bne bucle //Nuevo llamado al bucle
    //Aqui se imprime el resultado
    
    //Recuperamos registros y salimos
    
