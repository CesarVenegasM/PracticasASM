@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 13/12/2021


@ ---------------------------------------
@	Seccion de datos
@ ---------------------------------------
	
	.data
	.balign 4	
hello:  .asciz "Hello World!\n\n"
seconds:
	.int	1		@ 1 sec
microsec:
	.int	500000		@ 0.5 sec
	
n	.req    r6              @ counter
max	.req	r5		@ max # iterations

@ ---------------------------------------
@	Seccion de codigo
@ ---------------------------------------
	
	.text
	.global main
	.extern printf
	.extern sleep
	.extern usleep
	
main:   push 	{ip, lr}	@ push return address + dummy register
				@ for alignment

	mov	n, #0
	mov	max, #10
	
loop:	cmp	n, max		@ n>max?
	bgt	done		@ yes, done
				@ no, output string
	
        ldr 	r0, =hello
        bl 	printf		@ print string and r1 as param

@	ldr	r0, =seconds	@ use sleep for integer # of 
@	ldr	r0, [r0]	@ seconds
@	bl	sleep

	ldr	r0, =microsec	@ use usleep for microsecond
	ldr	r0, [r0]	@ delays.
	bl	usleep
	
	add	n, #1		@ n++
	b	loop

done:	
        pop 	{ip, pc}	@ pop return address into pc
