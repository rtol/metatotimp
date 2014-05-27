disp('bootstrap')
vtemp = zeros(n,1);
vimp = zeros(n,1);

bs = 10000;

tol = zeros(bs,3);
wmn = zeros(bs,3);
plg = zeros(bs,2);
nrd = zeros(bs,2);
hop = zeros(bs,2);

imptol = zeros(bs,tn);
impwmn = zeros(bs,tn);
impplg = zeros(bs,tn);
impnrd = zeros(bs,tn);
imphop = zeros(bs,tn);

for vb = 1:bs,
    for vi = 1:n,
        vrand = random('unid',n);
        vtemp(vi) = base(vrand,1);
        vimp(vi) = base(vrand,2);
    end
    [tol(vb,1) tol(vb,2) tol(vb,3)] = fittol(vtemp,vimp);
    imptol(vb,:) = evaltol(evaltemp,[tol(vb,1) tol(vb,2)]);
    [wmn(vb,1) wmn(vb,2) wmn(vb,3)] = fitweitzman(vtemp,vimp);
    impwmn(vb,:) = evalweitzman(evaltemp,[wmn(vb,1) wmn(vb,2)]);
    [plg(vb,1) plg(vb,2)] = fitploeg(vtemp,vimp);
    impplg(vb,:) = evalploeg(evaltemp,plg(vb,1));
    [nrd(vb,1) nrd(vb,2)] = fitnordhaus(vtemp,vimp);
    impnrd(vb,:) = evalnordhaus(evaltemp,nrd(vb,1));
    [hop(vb,1) hop(vb,2)] = fithope(vtemp,vimp);
    imphop(vb,:) = evalhope(evaltemp,hop(vb,1));
end

clear v*