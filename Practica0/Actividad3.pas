{
a) Implemente un módulo CargarLista que cree una lista de enteros y le
agregue valores aleatorios entre el 100 y 150, hasta que se genere el
120.
}
procedure CargarLista(var l:lista);
  procedure AgregarAdelante(var l:lista; num:integer);
  var
    nue:lista;
  begin
    new(nue);
    nue^.datos:=num;
    nue^.sig:=l;
    l:=nue;
  end;
var
  ale:integer;
begin
  ale:= random (MAX-MIN +1)+MIN;
  while ( ale <> FIN )do
  begin
    AgregarAdelante(l,ale);
    ale:= random (MAX-MIN +1)+MIN;
  end;
end;
{
b) Implemente un módulo ImprimirLista que reciba una lista generada en
a) e imprima todos los valores de la lista en el mismo orden que están
almacenados.
}

procedure ImprimirLista(l:lista);
begin
    while ( l <> nil ) do
    begin
        writeln(l^.datos);
        l:=l^.sig;
    end;
end;

{
c) Implemente un módulo BuscarElemento que reciba la lista generada
en a) y un valor entero y retorne true si el valor se encuentra en la lista
y false en caso contrario.
}

function BuscarElemento (l:lista; num:integer):boolean;
var
    exito:boolean;
begin
    exito:=false;
    while ( ( l <> nil ) and (not exito) )do 
    begin
        if ( l^.datos = num)then exito:=true
                            else l:=l^.sig;
    end;
    BuscarElemento:=exito;
end;

{
d) Invocar desde el programa principal a los módulos implementados
para crear una lista, mostrar todos sus elementos y determinar si un
valor leído por teclado se encuentra o no en la lista.
}
program Actividad3;
const
    MAX=150;MIN=100;FIN=120;
type
    lista=^nodo;
    nodo=record
            datos:integer;
            sig:lista;
          end;
          
//PROCESOS
.
.
.

var
    l:lista;
    num:integer;
begin
    l:=nil;
    randomize;
    CargarLista(l);
    ImprimirLista(l);
    num:=random (MAX-MIN +1)+MIN;
    if ( BuscarElemento(l,num) ) then writeln ('Se encontro')
                                 else writeln ('No se encontro');
end.
