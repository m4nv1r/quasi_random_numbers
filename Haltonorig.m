function r = Haltonorig(index,base)
% 'index' is the positive integer that will be decomposed. 
% 'base' is the prime base.
r = 0;
f = 1;
i = index;
while (i >0)
    f = f/base;
    r = r + f * mod(i,base);
    i = floor(i/base);
end
return
end