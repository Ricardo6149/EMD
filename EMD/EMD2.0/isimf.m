%���������������á��жϵ�ǰx�ǲ�����IMF
function u = isimf(x)
    N  = length(x);
    u1 = sum(x(1:N-1).*x(2:N) < 0);%��x��y=0�ύ��ĸ���
    u2 = length(findpeaks(x))+length(findpeaks(-x));%��ֵ�����
    if abs(u1-u2) <= 1
        u = 1;
    else
        u = 0;
    end
end