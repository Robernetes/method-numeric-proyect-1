clc
fx = input('Ingrese el f(x) entre parentesis:','s')
fx = inline(Funcion);

xi = input('Ingrese el valor de xi inferior: ');
xu = input('Ingrese el valor de xu superior: ');

ci = input('¿Cuantas iteraciones son?:');
a=1;

if fx(xi)*fx(xu)<0

fprintf("%s\t%s\t%s\t%s\t%s\t\%s\t\%s\n", 'i','xi','xu','xr','f(xi)','f(xr)', 'f(xi)*f(xr)')

while i < ci
    xr = xu-((fx(xu)*(xi-xu))/(fx(xi)-fx(xu)));
    fprintf("%d\t", i) 
    fprintf("%.4f\t", xi)
    fprintf("%.4f\t", xu)
    fprintf("%.4f\t", xr)
    fprintf("%.4f\t", fx(xi))
    fprintf("%.4f\t", fx(xr))

 if funcion(xi)*fx(xr)<0
    fx("%.4f\t", fx(xi)*fx(xr)) 
     xu = aux; 

 elseif fx(xi)*fx(xr)>0
    fprintf("%.4f\t", fx(xi)*fx(xr))
    xi = aux;

 elseif fx(xr)==0
    fprintf("%s","es la raiz encontrada")
    break 

 endif
    fprintf("\n")   
i++;

endwhile

     fprintf(" La raiz mas cercana es : %.4f \n", xr)
else
 fprintf("%s","hay un error o este metodo no funciona")
endif
