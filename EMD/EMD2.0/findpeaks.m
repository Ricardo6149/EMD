%����������������
function n = findpeaks(x)%����Ѱ�Ҽ�ֵ�㣬�ú���ֻ���󼫴�ֵ
%   Find peaks.
%   n = findpeaks(x)
    %n = find(diff(diff(x) > 0) < 0);%һ�׵�������0���׵���С��0�ĵ�
    %u = find(x(n+1)>x(n));
    n = find(diff(sign(diff(x)))==-2);
    u = find(x(n));
    n(u) = n(u) + 1;
end
