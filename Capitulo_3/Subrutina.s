@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computacion
@@ Ing. En Sistemas Computacionales
@@ Autor: Venegas Mendoza Cesar Ivan
@@ nickname: CesarVenegasM
@@ Fecha de revision: 06/12/2021

@@Sección codigo
.data
seed: .word 1
const1: .word 1103515245
const2: .word 12345

.text
.global myrand, mysrand
myrand: 
  ldr r1, = seed @ r1 lee al punturo denominado como seed
  ldr r0, [r1]  @r0 lee a r1 que es ahora el contenedor de seed
  ldr r2, [r1, #4] @r2 lee el valor de const1
  mul r3, r0, r2 @ r3= seed * 1103515245
  ldr r0, [r1, #8] @ r0 lee el valor de const2
  add r0, r0, r3 @ se añade la suma de r0= r3+ 12345
  str r0, [r1] @ se guarda r0 en la variable r1 la cual almacena a seed

/* Estas dos líneas devuelven "seed > >16 & 0x7fff ".
Con un pequeño truco evitamos el uso del AND */
  LSL r0, # 1
  LSR r0, # 17
  bx lr

mysrand: 
  ldr r1, = seed
  str r0, [r1]
  bx lr
