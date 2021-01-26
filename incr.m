function [ beta ] = incr(pic, duefea, people_num)
beta = zeros(10, 15);
for i=1:15
Xi=duefea(:,10*(i-1)+1);
Aiti=inv(Xi'*Xi);
Aitin=Aiti;
for j=2:10
Aiti=Aitin;
xj=duefea(:,10*(i-1)+j);
alpha=Xi'*xj;
c=(xj)'*xj;
t=1/(c-alpha'*Aiti*alpha);
yinext=Aiti*alpha;
Aitin=[Aiti,zeros(j-1,1);zeros(1,j-1),0]+t*[yinext;-1]*[yinext',-1];
Xi=[Xi,xj];
end
beta(:,i)=Aitin*Xi'*pic;
end

