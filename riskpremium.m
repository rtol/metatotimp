%riskpremium

disp('risk premium')

basec = 5700;       %per capita income
base1 = log(basec); %per capita utility, risk aversion = 1, impact = 0
base2 = 1-1/basec;  %per capita utility, risk aversion = 2, impact = 0

utiltol1 = log(basec*(1+imptol/100));    %per capita utility, risk aversion = 1
utiltol2 = 1-(basec*(1+imptol/100)).^-1; %per capita utility, risk aversion = 2
utilwmn1 = log(basec*(1+impwmnc/100));    %per capita utility, risk aversion = 1
utilwmn2 = 1-(basec*(1+impwmnc/100)).^-1; %per capita utility, risk aversion = 2
utilnrd1 = log(basec*(1+impnrd/100));    %per capita utility, risk aversion = 1
utilnrd2 = 1-(basec*(1+impnrd/100)).^-1; %per capita utility, risk aversion = 2
utilplg1 = log(basec*(1+impplg/100));    %per capita utility, risk aversion = 1
utilplg2 = 1-(basec*(1+impplg/100)).^-1; %per capita utility, risk aversion = 2
utilhop1 = log(basec*(1+imphop/100));    %per capita utility, risk aversion = 1
utilhop2 = 1-(basec*(1+imphop/100)).^-1; %per capita utility, risk aversion = 2
utiltol1s = log(basec*(1+imptols/100));    %per capita utility, risk aversion = 1
utiltol2s = 1-(basec*(1+imptols/100)).^-1; %per capita utility, risk aversion = 2
utilwmn1s = log(basec*(1+impwmncs/100));    %per capita utility, risk aversion = 1
utilwmn2s = 1-(basec*(1+impwmncs/100)).^-1; %per capita utility, risk aversion = 2
utilnrd1s = log(basec*(1+impnrds/100));    %per capita utility, risk aversion = 1
utilnrd2s = 1-(basec*(1+impnrds/100)).^-1; %per capita utility, risk aversion = 2
utilplg1s = log(basec*(1+impplgs/100));    %per capita utility, risk aversion = 1
utilplg2s = 1-(basec*(1+impplgs/100)).^-1; %per capita utility, risk aversion = 2
utilhop1s = log(basec*(1+imphops/100));    %per capita utility, risk aversion = 1
utilhop2s = 1-(basec*(1+imphops/100)).^-1; %per capita utility, risk aversion = 2

aveutiltol1 = sum(utiltol1,1)/bs; %average per capita utlity, risk aversion = 1
aveutiltol2 = sum(utiltol2,1)/bs; %average per capita utlity, risk aversion = 2
aveutilwmn1 = sum(utilwmn1,1)/bs; %average per capita utlity, risk aversion = 1
aveutilwmn2 = sum(utilwmn2,1)/bs; %average per capita utlity, risk aversion = 2
aveutilnrd1 = sum(utilnrd1,1)/bs; %average per capita utlity, risk aversion = 1
aveutilnrd2 = sum(utilnrd2,1)/bs; %average per capita utlity, risk aversion = 2
aveutilplg1 = sum(utilplg1,1)/bs; %average per capita utlity, risk aversion = 1
aveutilplg2 = sum(utilplg2,1)/bs; %average per capita utlity, risk aversion = 2
aveutilhop1 = sum(utilhop1,1)/bs; %average per capita utlity, risk aversion = 1
aveutilhop2 = sum(utilhop2,1)/bs; %average per capita utlity, risk aversion = 2
aveutiltol1s = sum(utiltol1s,1)/bs; %average per capita utlity, risk aversion = 1
aveutiltol2s = sum(utiltol2s,1)/bs; %average per capita utlity, risk aversion = 2
aveutilwmn1s = sum(utilwmn1s,1)/bs; %average per capita utlity, risk aversion = 1
aveutilwmn2s = sum(utilwmn2s,1)/bs; %average per capita utlity, risk aversion = 2
aveutilnrd1s = sum(utilnrd1s,1)/bs; %average per capita utlity, risk aversion = 1
aveutilnrd2s = sum(utilnrd2s,1)/bs; %average per capita utlity, risk aversion = 2
aveutilplg1s = sum(utilplg1s,1)/bs; %average per capita utlity, risk aversion = 1
aveutilplg2s = sum(utilplg2s,1)/bs; %average per capita utlity, risk aversion = 2
aveutilhop1s = sum(utilhop1s,1)/bs; %average per capita utlity, risk aversion = 1
aveutilhop2s = sum(utilhop2s,1)/bs; %average per capita utlity, risk aversion = 2

cetol1 = (exp(aveutiltol1) - basec)/basec*100;     %inverse utility, relative to base, percentage
cetol2 = ((1-aveutiltol2).^-1 - basec)/basec*100;
cewmn1 = (exp(aveutilwmn1) - basec)/basec*100;     %inverse utility, relative to base, percentage
cewmn2 = ((1-aveutilwmn2).^-1 - basec)/basec*100;
cenrd1 = (exp(aveutilnrd1) - basec)/basec*100;     %inverse utility, relative to base, percentage
cenrd2 = ((1-aveutilnrd2).^-1 - basec)/basec*100;
ceplg1 = (exp(aveutilplg1) - basec)/basec*100;     %inverse utility, relative to base, percentage
ceplg2 = ((1-aveutilplg2).^-1 - basec)/basec*100;
cehop1 = (exp(aveutilhop1) - basec)/basec*100;     %inverse utility, relative to base, percentage
cehop2 = ((1-aveutilhop2).^-1 - basec)/basec*100;
cetol1s = (exp(aveutiltol1s) - basec)/basec*100;     %inverse utility, relative to base, percentage
cetol2s = ((1-aveutiltol2s).^-1 - basec)/basec*100;
cewmn1s = (exp(aveutilwmn1s) - basec)/basec*100;     %inverse utility, relative to base, percentage
cewmn2s = ((1-aveutilwmn2s).^-1 - basec)/basec*100;
cenrd1s = (exp(aveutilnrd1s) - basec)/basec*100;     %inverse utility, relative to base, percentage
cenrd2s = ((1-aveutilnrd2s).^-1 - basec)/basec*100;
ceplg1s = (exp(aveutilplg1s) - basec)/basec*100;     %inverse utility, relative to base, percentage
ceplg2s = ((1-aveutilplg2s).^-1 - basec)/basec*100;
cehop1s = (exp(aveutilhop1s) - basec)/basec*100;     %inverse utility, relative to base, percentage
cehop2s = ((1-aveutilhop2s).^-1 - basec)/basec*100;

rptol1 = cetol1 - tolm;
rptol2 = cetol2 - tolm;
rpwmn1 = cewmn1 - wmnm;
rpwmn2 = cewmn2 - wmnm;
rpnrd1 = cenrd1 - nrdm;
rpnrd2 = cenrd2 - nrdm;
rpplg1 = cenrd1 - plgm;
rpplg2 = cenrd2 - plgm;
rphop1 = cehop1 - hopm;
rphop2 = cehop2 - hopm;
rptol1s = cetol1s - tolsm;
rptol2s = cetol2s - tolsm;
rpwmn1s = cewmn1s - wmnsm;
rpwmn2s = cewmn2s - wmnsm;
rpnrd1s = cenrd1s - nrdsm;
rpnrd2s = cenrd2s - nrdsm;
rpplg1s = cenrd1s - plgsm;
rpplg2s = cenrd2s - plgsm;
rphop1s = cehop1s - hopsm;
rphop2s = cehop2s - hopsm;