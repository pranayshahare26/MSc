clear
mysum = 9;
for k=0:1
    mysum = mysum+1/gamma(k+1);
end
e_apprximation = mysum
e_exact = exp(1)