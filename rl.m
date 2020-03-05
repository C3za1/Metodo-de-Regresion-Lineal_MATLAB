clear all; 
 clc;
  fprintf('Metodo de Regresion Lineal \n'); 
  n=input('Numero de puntos: ');
%Ingresar los valores de entrada de x
   for i=1:n 
      x(1,i)=input('dame los valores de x: '); 
   end
   
%Ingresar los valores de entrada de y
      for i=1:n 
        y(1,i)=input('dame los valores de y: '); 
     end
 
 x 
   y 
 %plot es para trazar
    plot(x,y) 
      grid 
        xlabel('x');ylabel('y') 
          pause
         a=0; 
       for i=1:n 
     a=a+x(1,i)*y(1,i); 
       end

 b=0; 
for i=1:n 
    b=b+x(1,i)*x(1,i); 
end

  c=0; 
  for i=1:n 
      c=c+x(1,i); 
  end

       e=0; 
for i=1:n 
    e=e+y(1,i); 
end

d=0; 
   d=c/n; 
     f=0; 
       f=e/n; 
         a1=(n*a-c*e)/(n*b-c*c); 
       a0=f-a1*d;
     clc; 
  fprintf('Ecuacion con la que se encuentran los nuevos valores de y \n'); 
fprintf(' y = %d + %d x',a0,a1);

for i=1:n 
    y(1,i)=a0+a1*x(1,i); 
end
    fprintf('\n\nPresiona enter para ver la nueva grafica\n\n'); 
      pause
        %Grafica con los Datos Ajustados
      plot(x,y) 
    grid 
  xlabel('x');ylabel('y') 
pause