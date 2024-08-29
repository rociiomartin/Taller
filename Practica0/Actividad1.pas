{
a)Compile y ejecute el programa descargado
b) Responda ¿Qué hace el programa?--> genera un número aleatorio de 0 a 99 y lo imprime.
}

program NumAleatorio;
var ale: integer;
begin
randomize; {Elige una semilla distinta cada vez que se ejecuta el programa.}
           {La semilla sirve para generar series de números aleatorios distintos.}
           {Sin la llamada al procedimiento randomize, en todas las ejecuciones
           del programa se elige siempre la misma serie de números aleatorios.}
ale := random (100);
writeln ('El número aleatorio generado es: ', ale); {devuelve un valor aleatorio en el intervalo 0 a 99}
readln;
end.

{ c)Modifique el programa para que imprima 20 números aleatorios. }

program ProgramaNumAleatorio;
var ale,i: integer;
begin
    randomize; 
    for i:=1 to 20 do
    begin
        ale := random (100);
        writeln ('El numero aleatorio generado es: ', ale);
    end;
    writeln ('Presione cualquier tecla para finalizar');
    readln;
end.

{
d) Modifique el programa para que imprima N números aleatorios en el rango (A,B), 
donde N, A y B son números enteros que se leen por teclado.
}

program ProgramaNumAleatorio;
var
  ale,i,N,A,B: integer;
begin
    randomize; 
    writeln ('Ingrese N,A,B');
    readln (N);readln(A);readln (B);
    for i:=1 to N do
    begin
        ale := random (B-A+1)+A; 
        writeln ('El numero aleatorio generado es: ', ale);
    end;
    writeln ('Presione cualquier tecla para finalizar');
    readln;
end.

{
e) Modifique el programa para que imprima números aleatorios en el rango (A,B) 
hasta que se genere un valor igual a F, el cual no debe imprimirse. F, A y B
son números enteros que se leen por teclado.
}
program ProgramaNumAleatorio;
var 
  ale,F,A,B: integer;
begin
    writeln ('Ingrese F,A,B');
    readln (F);readln(A);readln (B);
    randomize;
    ale := random (B-A+1)+A; 
    while (ale <> F)do
    begin
        ale := random (B-A+1)+A; 
        writeln ('El numero aleatorio generado es: ', ale);
    end;
    writeln ('Presione cualquier tecla para finalizar');
    readln;
end.


