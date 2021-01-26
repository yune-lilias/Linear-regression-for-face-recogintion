function resu = Untitled2(bb)
load Yale_32x32.mat
due2;
due;
bb=11*bb;
pic=fea(bb,:);
pic=pic';
beta  = calu(pic, duefea,15);
prediction  = peo( beta, duefea, 15);
resu = jud1( beta, duefea, prediction,pic);
end