function [ beta ] = calu(pic, duefea, people_num)
beta = zeros(10, 15);
for peopleno=0:people_num-1
        first = peopleno * 10 + 1;
        last = peopleno * 10 + 10;
        x     = duefea(:, first:last);
        beta(:, 1 + peopleno) = inv(x' * x) * x' * pic;
    end