function resu = jud1( beta, duefea, prediction,pic)
    judg=zeros(1024,1);
    judge=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    resu=1;
    for i=1:15
       judg(:,1)=(prediction(:, i)-pic(:,1)).^2;
       t=0;
       for j=1:1024
       t=judg(j,1)+t;
       end
       judge(i)=t;
    end
    a=judge(1);
    for k=1:14
        if a>judge(k+1)
            a=judge(k+1);
            resu =k+1;
        end
    end   
end