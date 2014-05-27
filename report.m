disp('likelihood')
likb = [ptolb pwmnb pplgb pnrdb phopb]

disp('bootstrap likelihood')
likbs =  [avep; p05; p95]

disp('smoothed bootstrap likelihood')
liksm =  [aveps; p05s; p95s]

disp('results')
impbas = [imptolb impwmnb impplgb impnrdb imphopb];
tolfinal =  [tolm; tol05; tol95;tolsm;tol05s;tol95s];
wmnfinal = [wmnm; wmn05; wmn95; wmnsm; wmn05s; wmn95s];
plgfinal = [plgm; plg05; plg95; plgsm; plg05s; plg95s];
nrdfinal = [nrdm; nrd05; nrd95; nrdsm; nrd05s; nrd95s];
hopfinal = [hopm; hop05; hop95; hopsm; hop05s; hop95s];
bmafinal = [bmaavg; bmap05; bmap95; bmasavg; bmasp05; bmasp95];
riskav0 =  [aveimp; tolm; wmnm; plgm; nrdm; hopm];
riskav0s =  [aveimps; tolsm; wmnsm; plgsm; nrdsm; hopsm];
riskav1 = [ambeq01; cetol1; cewmn1; ceplg1; cenrd1; cehop1];
riskav1s = [ambeq01s; cetol1s; cewmn1s; ceplg1s; cenrd1s; cehop1s];
riskav2 = [ambeq02; cetol2; cewmn2; ceplg2; cenrd2; cehop2];
riskav2s = [ambeq02s; cetol2s; cewmn2s; ceplg2s; cenrd2s; cehop2s];
ambeq = [ambeq01; ambeq11; ambeq21; ambeq02; ambeq12; ambeq22];
ambeqs = [ambeq01s; ambeq11s; ambeq21s; ambeq02s; ambeq12s; ambeq22s];
