[nSmp,nFea] = size(fea);%ÿһ����һ������
for i = 1:nSmp
     fea(i,:) = fea(i,:) ./ max(1e-12,norm(fea(i,:)));
end
maxValue = max(max(fea));fea = fea/maxValue;