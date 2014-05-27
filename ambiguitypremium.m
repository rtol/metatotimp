%ambiguitypremium

disp('ambiguity premium')

aveimp = avep(1)*tolm + avep(2)*wmnm + avep(3)*plgm + avep(4)*nrdm + avep(5)*hopm;
aveimps = aveps(1)*tolsm + aveps(2)*wmnsm + aveps(3)*plgsm + aveps(4)*nrdsm + aveps(5)*hopsm;

aveutil1 = avep(1)*aveutiltol1 + avep(2)*aveutilwmn1 + avep(3)*aveutilplg1 + avep(4)*aveutilnrd1 + avep(5)*aveutilhop1;
aveutil1s = avep(1)*aveutiltol1s + avep(2)*aveutilwmn1s + avep(3)*aveutilplg1s + avep(4)*aveutilnrd1s + avep(5)*aveutilhop1s;
aveutil2 = avep(1)*aveutiltol2 + avep(2)*aveutilwmn2 + avep(3)*aveutilplg2 + avep(4)*aveutilnrd2 + avep(5)*aveutilhop2;
aveutil2s = avep(1)*aveutiltol2s + avep(2)*aveutilwmn2s + avep(3)*aveutilplg2s + avep(4)*aveutilnrd2s + avep(5)*aveutilhop2s;

ambeq01 = (exp(aveutil1) - basec)/basec*100;
ambeq02 = ((1-aveutil2).^-1 - basec)/basec*100;

aux11 = avep(1)*log(aveutiltol1) + avep(2)*log(aveutilwmn1) + avep(3)*log(aveutilplg1) + avep(4)*log(aveutilnrd1) + avep(5)*log(aveutilhop1);
aux21 = avep(1)*(1-aveutiltol1.^-1) + avep(2)*(1-aveutilwmn1.^-1) + avep(3)*(1-aveutilplg1.^-1) + avep(4)*(1-aveutilnrd1.^-1) + avep(5)*(1-aveutilhop1.^-1);
aux12 = avep(1)*log(aveutiltol2) + avep(2)*log(aveutilwmn2) + avep(3)*log(aveutilplg2) + avep(4)*log(aveutilnrd2) + avep(5)*log(aveutilhop2);
aux22 = avep(1)*(1-aveutiltol2.^-1) + avep(2)*(1-aveutilwmn2.^-1) + avep(3)*(1-aveutilplg2.^-1) + avep(4)*(1-aveutilnrd2.^-1) + avep(5)*(1-aveutilhop2.^-1);

ambeq11 = (exp(exp(aux11)) - basec)/basec*100;
ambeq21 = (exp((1-aux21).^-1) - basec)/basec*100;
ambeq12 = ((1-exp(aux12)).^-1 - basec)/basec*100;
ambeq22 = ((1-(1-aux12).^-1).^-1 - basec)/basec*100;

ambeq01s = (exp(aveutil1s) - basec)/basec*100;
ambeq02s = ((1-aveutil2s).^-1 - basec)/basec*100;

aux11s = avep(1)*log(aveutiltol1s) + avep(2)*log(aveutilwmn1s) + avep(3)*log(aveutilplg1s) + avep(4)*log(aveutilnrd1s) + avep(5)*log(aveutilhop1s);
aux21s = avep(1)*(1-aveutiltol1s.^-1) + avep(2)*(1-aveutilwmn1s.^-1) + avep(3)*(1-aveutilplg1s.^-1) + avep(4)*(1-aveutilnrd1s.^-1) + avep(5)*(1-aveutilhop1s.^-1);
aux12s = avep(1)*log(aveutiltol2s) + avep(2)*log(aveutilwmn2s) + avep(3)*log(aveutilplg2s) + avep(4)*log(aveutilnrd2) + avep(5)*log(aveutilhop2s);
aux22s = avep(1)*(1-aveutiltol2s.^-1) + avep(2)*(1-aveutilwmn2s.^-1) + avep(3)*(1-aveutilplg2s.^-1) + avep(4)*(1-aveutilnrd2s.^-1) + avep(5)*(1-aveutilhop2s.^-1);

ambeq11s = (exp(exp(aux11s)) - basec)/basec*100;
ambeq21s = (exp((1-aux21s).^-1) - basec)/basec*100;
ambeq12s = ((1-exp(aux12s)).^-1 - basec)/basec*100;
ambeq22s = ((1-(1-aux12s).^-1).^-1 - basec)/basec*100;
