%����������������<br>%�ж�x�Ƿ񵥵�������0�����ǵ���������1�����ǵ���
function u = ismonotonic(x)
    u1 = length(findpeaks(x))*length(findpeaks(-x));%������/��Сֵ��һ��Ϊ0�����жϳ��������˳�������
    if u1 > 0
        u = 0;
    else
        u = 1;
    end