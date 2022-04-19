function [ y2 ] = trx( x )
k=1;
x=upper(x);
for i=1:length(x)
   z=x(i); 
    if (strcmp(z,'0'))
           y(k)='0';
       elseif(strcmp(z,'A'))
           y(k)='A';
       elseif(strcmp(z,'C'))
          y(k)='B'; 
       elseif(strcmp(z,'G'))
          y(k)='C';
       elseif(strcmp(z,'T'))
          y(k)='D';
        elseif(strcmp(z,'|'))
          y(k)='1';
        elseif(strcmp(z,':'))
          y(k)='2';
           elseif(strcmp(z,'-'))
          y(k)='3';
         elseif(strcmp(z,char(0))||strcmp(z,char(32))||strcmp(z,char(32)))%%space value
          y(k)='4';
   end      
   k=k+1; 
end
%disp(y)
y2=reshape(y',1,length(y));   
end