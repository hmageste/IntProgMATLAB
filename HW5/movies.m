function res = movies( hr1, min1, durmin1, hr2, min2, durmin2 )
overlap = hr2*60 + min2 - (hr1*60 + min1 + durmin1);
res = overlap>=0 && overlap<=30;
end