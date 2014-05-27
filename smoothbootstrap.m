disp('kernel regression')

[grid1, grid2, freq1, freq2, biv, cond2on1, cond1on2, cexp1, cexp2] = bivkernrest(baser(:,1),baser(:,2),0.1,0.1,0,-inf,1-constraint);
%[grid1, grid2, freq1, freq2, biv, cond2on1, cond1on2, cexp1, cexp2] = bivkern(base(:,1),base(:,2),0.1,0.1);

disp('smoothed bootstrap')

bivstack = reshape(biv,size(biv,1)*size(biv,2),1);

grdstk1 = reshape(repmat(grid1,1,size(biv,2)),size(biv,1)*size(biv,2),1);
grdstk2 = reshape(repmat(grid2',size(biv,1),1),size(biv,1)*size(biv,2),1);

grids=length(grdstk1);
cumstack = zeros(grids,1);
cumstack(1) = bivstack(1);
for vi=2:grids,
    cumstack(vi) = bivstack(vi) + cumstack(vi-1);
end

vtemp = zeros(n,1);
vimp = zeros(n,1);

tols = zeros(bs,3);
wmns = zeros(bs,3);
plgs = zeros(bs,2);
nrds = zeros(bs,2);
hops = zeros(bs,2);

imptols = zeros(bs,tn);
impwmns = zeros(bs,tn);
impplgs = zeros(bs,tn);
impnrds = zeros(bs,tn);
imphops = zeros(bs,tn);

for vb = 1:bs,
    for vi = 1:n,
        vrand = random('unif',0,1);
        vskip = sum(cumstack > vrand);
        vtemp(vi) = grdstk1(grids-vskip+1);
        vimp(vi)  = grdstk2(grids-vskip+1);
    end
    [tols(vb,1) tols(vb,2) tols(vb,3)] = fittol(vtemp,vimp);
    imptols(vb,:) = evaltol(evaltemp,[tols(vb,1) tols(vb,2)]);
    [wmns(vb,1) wmns(vb,2) wmns(vb,3)] = fitweitzman(vtemp,vimp);
    impwmns(vb,:) = evalweitzman(evaltemp,[wmns(vb,1) wmns(vb,2)]);
    [plgs(vb,1) plgs(vb,2)] = fitploeg(vtemp,vimp);
    impplgs(vb,:) = evalploeg(evaltemp,plgs(vb,1));
    [nrds(vb,1) nrds(vb,2)] = fitnordhaus(vtemp,vimp);
    impnrds(vb,:) = evalnordhaus(evaltemp,nrds(vb,1));
    [hops(vb,1) hops(vb,2)] = fithope(vtemp,vimp);
    imphops(vb,:) = evalhope(evaltemp,nrds(vb,1));
end

clear v*