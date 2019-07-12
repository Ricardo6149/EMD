%������
function imf = emd(x)
% Empiricial Mode Decomposition (Hilbert-Huang Transform)
% imf = emd(x)
% Func : findpeaks
    x = transpose(x(:));%��������ת��
    imf = [];
    while ~ismonotonic(x)%���x���ǿյ����ݣ�ִ��if��������
        x1 = x;
        sd = Inf;%��ֵ
        while (sd == 0) || ~isimf(x1)
            s1 = getspline(x1);
            s2 = -getspline(-x1);
            x2 = x1-(s1+s2)/2;
            sd = sum((x1-x2))/numel((x1-x2));
            x1 = x2;
        end
        imf(end+1,:) = x1;
        x = x-x1;
    end
    %imf(end+1,:) = x;

