clear all
vinput = csvread('totalimpact.csv');
baser = vinput(:,1:2);
constraint = vinput(:,3);
nordhaus = vinput(:,4);
n = length(baser)-sum(constraint);
base = baser(1:n,:);
temp = base(:,1);
imp = base(:,2);

tempsa = temp(nordhaus(1:n)==0);
impsa = imp(nordhaus(1:n)==0);

nn = sum(nordhaus)

nr = length(impsa)

tempsa1 = tempsa;
impsa1 = impsa;
tempsa2 = tempsa;
impsa2 = impsa;

%average of Nordhaus' estimates
tempsa1(nr+1) = sum(temp(nordhaus(1:n)==1))/nn;
impsa1(nr+1)=sum(imp(nordhaus(1:n)==1))/nn;

%Nordhaus' most recent estimate
tempsa2(nr+1) = temp(n);
impsa2(nr+1) = imp(n);

disp('base regressions');

[tolsa1(1) tolsa1(2) tolsa1(3)] = fittol(tempsa1,impsa1);
[wmnsa1(1) wmnsa1(2) wmnsa1(3)] = fitweitzman(tempsa1,impsa1);
[plgsa1(1) plgsa1(2)] = fitploeg(tempsa1,impsa1);
[nrdsa1(1) nrdsa1(2)] = fitnordhaus(tempsa1,impsa1);
[hopsa1(1) hopsa1(2)] = fithope(tempsa1,impsa1);

[tolsa2(1) tolsa2(2) tolsa2(3)] = fittol(tempsa2,impsa2);
[wmnsa2(1) wmnsa2(2) wmnsa2(3)] = fitweitzman(tempsa2,impsa2);
[plgsa2(1) plgsa2(2)] = fitploeg(tempsa2,impsa2);
[nrdsa2(1) nrdsa2(2)] = fitnordhaus(tempsa2,impsa2);
[hopsa2(1) hopsa2(2)] = fithope(tempsa2,impsa2);

disp('kernel regressions')
tempr = baser(:,1);
impr = baser(:,2);
tempsa3 = tempr(nordhaus==0);
impsa3 = impr(nordhaus==0);
constrsa3 = constraint(nordhaus==0);

[grid1, grid2, freq1, freq2, biv, cond2on1, cond1on2, cexp1, cexp2] = bivkernrest(tempsa3,impsa3,0.1,0.1,0,-inf,1-constrsa3);

tempsa4 = tempr(nordhaus==1);
impsa4 = impr(nordhaus==1);
constrsa4 = constraint(nordhaus==1);

[grid1n, grid2n, freq1n, freq2n, bivn, cond2on1n, cond1on2n, cexp1n, cexp2n] = bivkernrest(tempsa4,impsa4,0.1,0.1,0,-inf,1-constrsa4);

tempsa5 = tempr;
impsa5 = impr;
constrsa5 = constraint;
tempsa5(n+2) = 6.0;
impsa5(n+2)= -6.7;
constrsa5(n+2) = 0;

[grid1n2, grid2n2, freq1n2, freq2n2, bivn2, cond2on1n2, cond1on2n2, cexp1n2, cexp2n2] = bivkernrest(tempsa5,impsa5,0.1,0.1,0,-inf,1-constrsa5);
