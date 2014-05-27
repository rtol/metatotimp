disp('Bayesian model average');
bmas = [imptols(random('unid',bs,1,round(aveps(1)*bs)),:); impwmns(random('unid',bs,1,round(aveps(2)*bs)),:); impplgs(random('unid',bs,1,round(aveps(3)*bs)),:); impnrds(random('unid',bs,1,round(aveps(4)*bs)),:); imphops(random('unid',bs,1,round(aveps(5)*bs)),:)];
bma = [imptol(random('unid',bs,1,round(avep(1)*bs)),:); impwmn(random('unid',bs,1,round(avep(2)*bs)),:); impplg(random('unid',bs,1,round(avep(3)*bs)),:); impnrd(random('unid',bs,1,round(avep(4)*bs)),:); imphop(random('unid',bs,1,round(avep(5)*bs)),:)];

bmasavg = sum(bmas,1)/size(bmas,1);
bmasp95 = prctile(bmas,95);
bmasp05 = prctile(bmas,05);

bmaavg = sum(bma,1)/size(bma,1);
bmap95 = prctile(bma,95);
bmap05 = prctile(bma,05);
