{
a) Implemente un módulo CargarListaOrdenada que cree una lista de
enteros y le agregue valores aleatorios entre el 100 y 150, hasta que se
genere el 120. Los valores dentro de la lista deben quedar ordenados
de menor a mayor.
}
procedure CargarListaOrdenada(var l:lista);
  procedure InsertarOrdenado(var l:lista; num:integer);
  var
    aux,ant,act:lista;
  begin
    act:=l;
    ant:=l;
    new(aux);
    aux^.datos:= num;
    while (act<>nil) and (act^.datos < aux^.datos) do
    begin
        ant:=act;
        act:=l^.sig;
    end;
    if act = l then l:=aux
               else ant^.sig:=aux;
    aux^.sig:=act;
  end;
var
  ale:integer;
begin
  ale:= random (MAX-MIN +1)+MIN;
  while ( ale <> FIN )do
  begin
    InsertarOrdenado(l,ale);
    ale:= random (MAX-MIN +1)+MIN;
  end;
end;

{
b) Reutilice el módulo ImprimirLista que reciba una lista generada en a) e
imprima todos los valores de la lista en el mismo orden que están
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
c) Implemente un módulo BuscarElementoOrdenado que reciba la lista
generada en a) y un valor entero y retorne true si el valor se encuentra
en la lista y false en caso contrario.
}

{
d) Invocar desde el programa principal a los módulos implementados
para crear una lista ordenada, mostrar todos sus elementos y
determinar si un valor leído por teclado se encuentra o no en la lista.
}
