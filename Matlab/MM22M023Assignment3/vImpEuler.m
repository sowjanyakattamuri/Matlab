function [T,Y] = vImpEuler(t0,tf,y0,h)
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
    % Iterate Implicit Euler equation using Newton's method
    itmax=100; tol=1e-10; yi=y;
    for k=1:itmax
        r=-(y-yi-h*f(y));
        J=eye(n)-h*ssjac(y);
        delta=J\r;
        y=y+delta;
        % Can use this to check for QC: 
        %disp(num2str(norm(delta)))
        if norm(delta)<=tol
            break
        end
    end
    if k==itmax
        disp(['Error. Newton method did not convegere at time step ',num2str(i)])
        return
    end
    t=t+h;
    T(i+1,1)=t; Y(i+1,:)=y;
end
%
function rhs=f(y)
n=length(y);
 rhs(1,1)=y(1,1)*(1-y(1,1))-y(1,1)*y(2,1);
 rhs(2,1)=2*y(1,1)*y(2,1)-y(2,1);
%
function J=ssjac(y)
% This function calculates tßhe Jacobian of the rhs function, f(y),
% namely df_i/dy_j
n=length(y);
J=zeros(n,n);
J(1,1)=1-2*y(1,1)-y(2,1);
J(1,2)=-y(1,1);
J(2,1)=2*y(2,1);
J(2,2)=2*y(1,1)-1;
