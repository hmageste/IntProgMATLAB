function days_info = May2015
days_info(1:31) = struct('month', 'May', 'date', '0', 'day', 'dom' );
for i = 1 : 31
    days_info(i).date = i;
    [~, days_info(i).day] = weekday(datenum(sprintf('May.%d.2015',i),'mmm.dd.yyyy'));
end
end