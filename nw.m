function y=nw(X,W)
v=sum(X.*W);
y=Sigmoid(v);
end