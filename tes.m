load Yale_32x32.mat
due2;
due;
pic=fea(11,:);
pic=pic';
beta  = calu(pic, duefea,15)
beta2  = incr(pic, duefea, 15)