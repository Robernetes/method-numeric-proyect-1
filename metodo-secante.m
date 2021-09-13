##
## CODIGO SOBRE EL METODO DE SECANTE
## MEDIANTE PARAMETROS DADOS POR EL USUARIO
##

fprintf("\t")
funcion = input('Escriba la f(x) entre parentesis:','s')
funcion = inline(funcion);
a = input("Ingrese el intervalo a: ");
b = input("Ingrese el intervalo b: ");
xr = input("Ingrese el valor real aprox.");
i=1;
Era = 1/1000;
fprintf("%s\t%s\t%s\t%s\t%s\t\%s\t\%s\n", 'i','a','b','xrc','f(a)','f(b)','Er');
while i ~= 0
xrc = a - (funcion(a)*(b-a))/(funcion(b)-funcion(a));
Er = abs((xr-xrc)/xr)*100;
fprintf("%d\t",i)
fprintf("%.4f\t",a)
fprintf("%.4f\t",b)
fprintf("%.4f\t",xrc)
fprintf("%.4f\t",funcion(a))
fprintf("%.4f\t",funcion(b))
fprintf("%.4f\t",Er)
if Er > Era
i++;
else
i=0;
endif
a=b;
b=xrc;
fprintf("\n")
endwhile
fprintf(" La raiz aproximada es: %.4f \n", xr)

