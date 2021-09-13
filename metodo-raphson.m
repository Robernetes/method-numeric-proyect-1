clc
disp('Metodo de Newton Raphson')

f=input('Ingrese la funcion f(x):','s'); 
d=input('Ingrese la derivada de la funcion dy/dx:','s'); 
pi=input('Ingrese el punto de inicio:');
err=input('Ingrese porcentaje de error:');

%Se utiliza la funcion ezplot para graficar la funcion
ezplot(f)
grid on

%Se convierte de string a function los datos ingresados
d=inline(d);
f=inline(f);

ea=100;
j=0;
while ea>err
 %Aproximamos la raiz con la fórmula 
 xi=pi-(f(pi)/d(pi));
 % Se calculamos el porcentaje de error
 ea=abs(((xi-pi)/xi)*100);
 pi=xi;
 %Se imprime la raiz por cada iteracion
 fprintf('\nRaiz= %10.3f en %d Iteraciones',pi,j);
 %Se imrine el porcentage de error por cada iteración
 fprintf('\nError= %10.3f en %d Iteraciones',ea,j);
 fprintf("\n");
 j=j+1;
end

%Se muestran los resultados en pantalla (con 5 decimales)
fprintf('\nRaiz= %5.5f en %d Iteraciones',pi,j)
