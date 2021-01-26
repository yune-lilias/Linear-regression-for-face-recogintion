duefea=zeros(1024,150);
a=1;
for b=1:15
   for i=1:10
       duefea(:,10*(b-1)+i)=fea(a,:);
       a=a+1;
   end
   a=a+1;
end
