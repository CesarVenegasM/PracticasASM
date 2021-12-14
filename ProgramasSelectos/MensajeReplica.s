
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 09/12/2021




.section	.bss
.comm buffer, 48	     /reservar 48 bytes en el buffer

.section	.data
msg:
	.ascii	"** Greeter **\nPlease enter your name: "
msgLen = . - msg
msg2:
	.ascii	"Hello "
msg2Len = . - msg2

.section	.text
.globl	_start
_start:

mov r0, $1	/@ Imprimir el mensaje del programa		    
ldr r1, =msg
ldr r2, =msgLen
mov r7, $4
svc $0

mov r7, $3	/@ Leer Syscal	    
mov r0, $1		
ldr r1, =buffer
mov r2, $0x30
svc $0

mov r0, $1	//Imprimir msg2	    
ldr r1, =msg2
ldr r2, =msg2Len
mov r7, $4
svc $0

mov r0, $1		//Imprimir lo que el usuario ingresó    
ldr r1, =buffer
mov r2, $0x30
mov r7, $4
svc $0

mov r7, $1	           /salir de syscall
svc $0		          
.end
