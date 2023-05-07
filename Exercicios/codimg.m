close all
A=[-20 -40; -30 -30];
b=[-93; -105];
lb=[0;0];
ub=[4; 3];
plotregion(A,b,lb,ub,[0.3,0.3,0.9]);

points=[0 0 5 5; 0 4 4 0];

r=0.05;
th = 0:pi/50:2*pi;
hold on

plotregion(A,b,lb,ub,[0.7,0.2,0.3], transp, points, '.');

for i=0:4
    for j=0:3
        p=[i; j];
        if(min(A*p-b)> -0.001)
            xc = r*cos(th) +i;
            yc = r*sim(th) +j;
            circles=fill(xc, yc, 'b');
        end
    end
end
xc = r*cos(th) +0;
yc = r*sim(th) +93/40;
circles=fill(xc, yc, 'r');

xc = r*cos(th) +7/2;
yc = r*sim(th) +0;
circles=fill(xc, yc, 'r');

xc = r*cos(th) +47/20;
yc = r*sim(th) +23/20;
circles=fill(xc, yc, 'r');

axis equal;
grid on;
xlim([-0.5 4]);
ylim([-0.5 3]);
