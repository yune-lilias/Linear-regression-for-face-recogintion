function jud1 = jud( beta, duefea, prediction)
    judg=zeros(1024,1);
    judge=zeros(15);
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
        if judge(k)<judge(k+1)
            a=judge(k+1)       
        end
    end
    jud1 =a;
end