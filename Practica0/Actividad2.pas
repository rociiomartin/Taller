{
a) Implemente un módulo CargarVector que cree un vector de enteros
con a lo sumo 50 valores aleatorios. Los valores, generados
aleatoriamente (entre un mínimo y máximo recibidos por parámetro),
deben ser almacenados en el vector en el mismo orden que se
generaron, hasta que se genere el cero.
}

procedure CargarVector(var v:vector;var diml:integer;var min,max:integer);
var
    ale:integer;
begin
    diml:=0;
    ale := random (max-min+1)+min;
    while (diml < DF) and (ale <> 0) do
    begin
        diml:=diml+1;
        v[diml]:=ale;
        ale := random (max-min+1)+min;
    end;
end;


{
b) Implemente un módulo ImprimirVector que reciba el vector generago
en a) e imprima todos los valores del vector en el mismo orden que
están almacenados. ¿Qué cambiaría para imprimir en orden inverso? --> diml downto 1
}
procedure ImprimirVector(v:vector; diml:integer);
var
    i:integer;
begin
    for i:=1 to diml do writeln(v[i]);
end;

{
c) Escriba el cuerpo principal que invoque a los módulos ya
implementados.
}
program ProgramaVectores;
const
    DF=50;
type
    rango=1..DF;
    vector=array [rango] of integer;

//modulos a) y b)
.
.
.

//pp
var
    v:vector;
    diml,min,max:integer;
begin
    randomize; 
    writeln('Ingrese min y max');
    readln(min);readln(max);
    CargarVector(v,diml,min,max);
    ImprimirVector(v,diml); 
end.
