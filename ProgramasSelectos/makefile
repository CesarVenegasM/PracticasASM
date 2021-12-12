/*Ejemplo: 
  g++ Ejemplo.s -g -o Ejemplo
Run: 
  ./Ejemplo
gdbRun:
  gdb Ejemplo
Limpiar:
  rm Ejemplo*/


Teclado: Teclado.o
ld -o Teclado Teclado.o

Teclado.o: Teclado.s
as -g -o Teclado.o Teclado.s
clean:
rm Teclado Teclado.o

