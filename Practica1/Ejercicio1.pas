{
Descargar  el  programa ImperativoEjercicioClase1.pas que  contiene  parte  del  código  del siguiente enunciado a resolver. 
Implementar lo indicado en el código.Se  desea  procesar  la  información  de  las  ventas  de  productos  de  un  comercio  
(como  máximo 50). Implementar un programa que invoque los siguientes módulos:

a. Un módulo que retorne la información de las ventas en un vector. De cada venta se conoce el  día  de la  venta,  código  
del  producto  (entre  1  y  15)  y  cantidad  vendida  (como  máximo  99 unidades). El código debe generarse automáticamente
(random) y la cantidad se debe leer. El ingreso de las ventas finaliza con el día de venta 0 (no se procesa).
b. Un módulo que muestre el contenido del vector resultante del punto a).
c. Un módulo que ordene el vector de ventas por código.
d. Un módulo que muestre el contenido del vector resultante del punto c).
e. Un módulo que elimine, del vector ordenado, las ventas con código de  producto entre  dos valores que se ingresan como parámetros. 
f. Un módulo que muestre el contenido del vector resultante del punto e).
g.  Un  módulo  que  retorne  la  información  (ordenadapor
código  de  producto  de  menor  a mayor) de cada código par de producto junto a la cantidad total de productos vendidos.
h. Un módulo que muestre la información obtenida en el punto g)
}

 e.
 var posInferior, posSuperior, salto, i: rango3; 
Begin
  posInferior:= BuscarPosicion (v, dimL, valorInferior);
  if (posInferior <> 0)
  then begin
        posSuperior:= BuscarPosicionDesde (v, dimL, posInferior, valorSuperior);        
        {Escribir el código correspondiente para hacer el corrimiento y disminuir la dimensión lógica}
        salto:=(posSuperior+1)-posInferior;
        if (posSuperior < diml)then
        begin
           writeln(diml);
           for i:= (posSuperior+1) to diml do  v[i-salto]:= v[i];
           diml:=diml-salto;
           writeln(diml);
        end;
   end;
end;
