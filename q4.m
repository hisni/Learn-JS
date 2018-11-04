n=500:500:5000;
for i=500:500:5000
    A = rand(i);
    t=cputime;
    det(A);
    y(i/500)= cputime-t;
    %fprintf("n=%d => Time=%d\n",i,y(i/500));
end

hold on;
loglog(n,y,'r*');
p = polyfit(n,y,1);
x1= linspace(500,5000,10000);
y1 = polyval(p,n);

plot(n,y1);