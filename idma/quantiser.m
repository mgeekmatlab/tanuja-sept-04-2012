function[tx4,lenq]=quantiser(tx3,n)
normalisatonfactor=ceil(min(tx3)*-1)+1;
x=tx3+normalisatonfactor;
[r,c]=size(x);
lenq=bitsrequired(2*n+1);
x1=dec2bin(x',lenq);
x2=reshape(x1',1,numel(x1));
tx4=str2num(x2')';
end
