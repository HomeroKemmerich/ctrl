G1=tf(5/2,[1 5.5 2.5])
step(G1)
t=0:0.01:14;
[y,t]=step(G1,t);
figure
plot(t,y)
who
fit
p=fit.coeff
d_p=polyder(p)
dd_p=polyder(d_p)
roots(dd_p)
p1=fit1.coeff
d_p1=polyder(p1)
dd_p2=polyder(d_p1)
roots(dd_p2)
p2=fit2.coeff
d_p2=polyder(p2)
dd_p2=polyder(d_p2)
roots(dd_p2)
r = roots(dd_p2)
r(6)
x=r(6)
a=polyval(d_p2,x)
y_aux = polyval(p2, x)
b=y_aux-a*x
y_reta=a.*t + b;
figure;
plot(t,y, 'k-', t,y_reta, 'b--')
axis([0 2 0 1])
axis([-0.5 2 -0.5 1])
grid