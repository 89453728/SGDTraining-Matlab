function [W1,W2]=BackpropXOR(W1,W2,X,D)
alpha=.9; % training constant

N=4;
for k=1:N
    x=X(k,:)';
    d=D(k);
    
    v1=W1*x;
    y1=Sigmoid2(v1);    % first output layer
    v=W2*y1;            
    y=Sigmoid2(v);      % second output layer
    
    e=d-y;              % error layer 2
    delta=y.*(1-y).*e;  % delta layer 2
    
    e1=W2'*delta;       % error layer 1
    delta1=y1.*(1-y1).*e1; % delta layer 1
    
    dW1=alpha*delta1*x';% increment of w of layer 1
    W1=W1+dW1;
    
    dW2=alpha*delta*y1';% increment of w of layer 2
    W2=W2+dW2;
end
end