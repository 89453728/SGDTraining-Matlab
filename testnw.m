function r=testnw(X,W)
N=4;
r=zeros(1,N);
for epoch=1:N
    r(epoch)=nw(X(epoch,:),W);
end
end