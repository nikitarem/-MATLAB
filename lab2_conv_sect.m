%% Л.Р. №2 - Свертка сигналов: секционная

clear; clc; close all;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% ЗАДАНИЕ

x=[1 2 3 4 5 4 3 3 2 2 1 1];%сигнал
h=[1 4 2];%ИХ фильтра
%дополнительно
el=2;%количество блоков сигнала

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% ОСНОВНАЯ ПРОГРАММА

%графики
figure('Name','Исходные данные');
subplot(1,2,1);bar(x);title 'Исходный сигнал';grid on;
subplot(1,2,2);bar(h);title 'Импульсная характеристика фильтра';grid on;

%разделение вектора сигнала на матрицу блоков
st=length(x)/el;%длина блока
M=rot90(fliplr(reshape(x,st,[])));

%свертка секционная
figure('Name','Секционная свертка поблочно');
for n=1:1:el;
    sv=M(n,:);
    sect1=conv(sv,h);
    subplot(1,el,n);
    bar(sect1);
    grid on;
    sect(n,:)=sect1;
end;

%объединение блоков в один
if el==1; %проверка количества блоков
    mat_read=sect;
else;
    for j=1:1:el;
        if j==1;%первый блок
            mat0=sect(j,1:end);
            mat0(end-1)=mat0(end-1)+sect(j+1,1);
            mat0(end)=mat0(end)+sect(j+1,2);
            mat_read=mat0;
        elseif j>1 & j~=el;% последующие блоки
            mat0=sect(j,3:end);
            mat0(end-1)=mat0(end-1)+sect(j+1,1);
            mat0(end)=mat0(end)+sect(j+1,2);
            mat_read=[mat_read mat0];
        elseif j==el;%последний блок
            mat0=sect(j,3:end);
            mat_read=[mat_read mat0];
        end;
    end;
end;

%график
figure('Name','Секционная свертка');
bar(mat_read);
title 'Секционная свертка полностью';
grid on;
