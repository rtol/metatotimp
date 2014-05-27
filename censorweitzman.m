disp('censor Weitzman')

for i=1:bs,
    for j=1:tn,
        if impwmn(i,j) < -99,
           impwmnc(i,j) = -99;
        else
            impwmnc(i,j) = impwmn(i,j);
        end
        if impwmns(i,j) < -99,
           impwmncs(i,j) = -99;
        else
            impwmncs(i,j) = impwmns(i,j);
        end
    end
end