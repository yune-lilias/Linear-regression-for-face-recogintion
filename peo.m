function [ prediction ] = peo( beta, duefea, people_num )
    prediction = zeros(size(duefea, 1), people_num);
    for i=0:people_num-1
        start = i*10 + 1; 
        stop  = i*10 + 10;
        prediction(:, i + 1) = duefea(:, start:stop) * beta(:, i + 1);
    end
end

