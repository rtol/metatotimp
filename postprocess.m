disp('post-process')

ptolb = exp(tolb(:,3));
pwmnb = exp(wmnb(:,3));
pplgb = exp(plgb(:,2));
pnrdb = exp(nrdb(:,2));
phopb = exp(hopb(:,2));
scale = ptolb + pwmnb + pplgb + pnrdb + phopb;
ptolb = ptolb./scale;
pwmnb = pwmnb./scale;
pplgb = pplgb./scale;
pnrdb = pnrdb./scale;
phopb = phopb./scale;

ptol = exp(tol(:,3));
pwmn = exp(wmn(:,3));
pplg = exp(plg(:,2));
pnrd = exp(nrd(:,2));
phop = exp(hop(:,2));
scale = ptol + pwmn + pplg + pnrd + phop;
ptol = ptol./scale;
pwmn = pwmn./scale;
pplg = pplg./scale;
pnrd = pnrd./scale;
phop = phop./scale;

ptols = exp(tols(:,3));
pwmns = exp(wmns(:,3));
pplgs = exp(plgs(:,2));
pnrds = exp(nrds(:,2));
phops = exp(hops(:,2));
scale = ptols + pwmns + pplgs + pnrds + phops;
ptols = ptols./scale;
pwmns = pwmns./scale;
pplgs = pplgs./scale;
pnrds = pnrds./scale;
phops = phops./scale;

clear scale

avep = [sum(ptol) sum(pwmn) sum(pplg) sum(pnrd) sum(phop)]/bs;
aveps = [sum(ptols) sum(pwmns) sum(pplgs) sum(pnrds) sum(phops)]/bs;

p05 = [prctile(ptol,5) prctile(pwmn,5) prctile(pplg,5) prctile(pnrd,5) prctile(phop,5)];
p05s = [prctile(ptols,5) prctile(pwmns,5) prctile(pplgs,5) prctile(pnrds,5) prctile(phops,5)];

p95 = [prctile(ptol,95) prctile(pwmn,95) prctile(pplg,95) prctile(pnrd,95) prctile(phop,95)];
p95s = [prctile(ptols,95) prctile(pwmns,95) prctile(pplgs,95) prctile(pnrds,95) prctile(phop,95)];

tolm = sum(imptol)/bs;
wmnm = sum(impwmn)/bs;
plgm = sum(impplg)/bs;
nrdm = sum(impnrd)/bs;
hopm = sum(imphop)/bs;
tolsm = sum(imptols)/bs;
wmnsm = sum(impwmns)/bs;
plgsm = sum(impplgs)/bs;
nrdsm = sum(impnrds)/bs;
hopsm = sum(imphops)/bs;
tol05 = prctile(imptol,5);
wmn05 = prctile(impwmn,5);
plg05 = prctile(impplg,5);
nrd05 = prctile(impnrd,5);
hop05 = prctile(imphop,5);
tol95 = prctile(imptol,95);
wmn95 = prctile(impwmn,95);
plg95 = prctile(impplg,95);
nrd95 = prctile(impnrd,95);
hop95 = prctile(imphop,95);

tol05s = prctile(imptols,5);
wmn05s = prctile(impwmns,5);
plg05s = prctile(impplgs,5);
nrd05s = prctile(impnrds,5);
hop05s = prctile(imphops,5);

tol95s = prctile(imptols,95);
wmn95s = prctile(impwmns,95);
plg95s = prctile(impplgs,95);
nrd95s = prctile(impnrds,95);
hop95s = prctile(imphops,95);
