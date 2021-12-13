@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 12/12/2021

  .include  "inter.inc"
.text
  ADDEXC 0x18, irq_handler

  mov r0, #0b11010010
  msr cpsr_c, r0
  mov sp, #0x8000
  mov r0, #0b11010011 
  msr cpsr_c, r0
  mov sp, #0x8000000

/* Asignamos el pin GPIO9 como salida*/
  ldr r0, =GPBASE
  mov r1, #0b00001000000000000000000000000000
  str r1, [r0, #GPFSEL0]

  ldr r0, =STBASE
  ldr r1, [r0, #STCLO]
  add r1, #0x400000 //agregamos los 4.19 segundos
  str r1, [r0, #STC1]

  ldr r0, =INTBASE
  mov r1, #0b0010
  str r1, [r0, #INTENIRQ1]
  mov r0, #0b01010011 
  msr cpsr_c, r0

bucle:  b bucle //orden del bucle sin fin
/*tratamos la interrupción*/
irq_handler:
  push  {r0, r1}
  ldr r0, =GPBASE
  mov r1, #0b00000000000000000000001000000000
  str r1, [r0, #GPSET0] //aquí se enciende el led
  pop {r0, r1} 
  subs  pc, lr, #4 
