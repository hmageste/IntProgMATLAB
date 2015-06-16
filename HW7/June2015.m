function days_info = June2015
days_info = {30,3};
for i = 1 : 30
    days_info{i,1} = 'June';
    days_info{i,2} = i;
    [~, days_info{i,3}] = weekday(datenum(sprintf('Jun.%d.2015',i),'mmm.dd.yyyy'));
end
end

%% alternative solution
function x = June2015
    t = datetime(2015,6,1:30);
    x = cat(1,month(t,'name'),num2cell(day(t)),day(t,'shortname'))';
end