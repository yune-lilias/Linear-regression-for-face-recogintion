# Linear-regression-in-face-recoginze
(Program finished years before)
Use linear regression classifier in face recognize
Training data and testing data are from the mat file
Unitiled2 is the main function
The first 10 image of each person is used in training, 
and Unitile2(n) means picking the 11th image of nth person for testing
Result is which person should it be.
All 15 testing pictures are recognized collectedly 

Untitled2.m: main function
due2.m: normalization
due.m: read training data
calu.m: find 15 beta value (for each person, result is 10*15 matrix)
peo.m: apply 15 beta to testing data, find y value
jud1.m.: comnpared each y original testing data, find minimun distance

incr.m: use increment learning to find beta
tes.m: compare beta by calu.m and incr.m
