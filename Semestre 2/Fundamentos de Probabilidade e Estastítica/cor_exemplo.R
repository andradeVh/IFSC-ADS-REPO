# Correlação exemplo Cap3

x = c(6,8,10,12)
y = c(70,110,130,150)
#x = c(1,2,3,4,5,6,7,8,9)
#y = c(2,4,6,8,10,12,14,16,18)
#y = c(0,-1,9,3,21,8,41,-3,1)
R = cor(y,x)
R
R2 = R*R
R2
plot(x,y)
lm(y~x)
eq = lm(y~x)
abline(eq)
