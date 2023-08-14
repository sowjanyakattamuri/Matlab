function [T,Y] = vEuler(t0,tf,y0,h)
% [T,Y] contains information about each variable at each time step
% The ceil function rounds to the highest integer.
n=length(y0); nsteps=ceil((tf-t0)/h);
P=zeros(nsteps+1,n+1); 
t=t0;y=y0;
T(1,1)=t0; Y(1,:)=y0';
for i=1:nsteps
    % Make sure we hit tf on last step.
    if i==nsteps 
        h=tf-t;
    end
    y=y+h*f(y);
    t=t+h;
    T(i+1,1)=t; Y(i+1,:)=y';
end
%
function rhs=f(y)
 rhs(1,1)=y(1,1)*(1-y(1,1))-y(1,1)*y(1,2);
 rhs(1,2)=2*y(1,1)*y(1,2)-y(1,2);
