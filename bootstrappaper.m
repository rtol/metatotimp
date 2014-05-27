clear all
vinput = csvread('totalimpact.csv');
baser = vinput(:,1:2);
constraint = vinput(:,3);
nordhaus = vinput(:,4);
n = length(baser)-sum(constraint);
base = baser(1:n,:);
temp = base(:,1);
imp = base(:,2);

tn = 61;
evaltemp = zeros(tn,1);
for vi=2:tn,
    evaltemp(vi) = evaltemp(vi-1)+0.1;
end

baseregr
bootstrap
smoothbootstrap
postprocess
bayesmodelave
censorweitzman
riskpremium
ambiguitypremium
report

save totimprev