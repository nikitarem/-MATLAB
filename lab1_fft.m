clear; clc; close all;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% ЗАДАНИЕ

%прямоугольник
Apul=1; %амплитуда прямоугольника
Tupul=10^-3; %длительность импульса
Fm=5*10^5; %максимальная частота
Tpul=10^-3; %период сигнала
Tspul=1/(2*Fm); %шаг дискретизации прямоугольника

%синусоида
Asin=1; %амплитуда синусоиды
fsin=5*10^6; %частота синусоиды
Tssin=0.05*1/fsin; %шаг дисктеризации синусоиды

%гауссовский импульс
Agu=1; %амплитуда колокола
a=0.1; %ширина колокола
Tgaus=1; %предел колокола
Tsgaus=0.03*Tgaus; %шаг дисктеризации гауссовского испульса

%треугольный импульс
Atr=1; %амплитуда треугольника
Tutr=1; %длительнусть импульса
Tstr=0.1*Tutr; %шаг дисктеризации треугольника

%дополнительно
N=1024; %размерность БПФ

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% ОСНОВНАЯ ПРОГРАММА

%построение аналогового сигнала
t1=0:0.1*Tupul:Tpul; %временная ось прямоугольника
St1=(Apul).*(t1<=Tupul)+(0).*(t1>Tupul); %прямоугольник
t2=[0:0.01*1/fsin:1/fsin]; %временная ось синусоиды
St2=Asin*sin(2*pi*fsin*t2); %синусоида
t3=[-Tgaus:0.01*Tgaus:Tgaus]; %временная ось гаус имп
St3=Agu*exp(-t3.^2/(2*a^2)); %гауссовский импульс
t4=[-Tutr/2:0.01*Tutr:Tutr/2]; %временная ось треугоьлника
St4=tripuls(t4); %треугольник

figure('Name','Аналоговые сигналы','NumberTitle','off');
subplot (2,2,1); plot(t1,St1); 
title 'Прямоугольный импульс'; grid on;
axis([0 Tpul -0.1*Apul Apul*1.1]);
subplot (2,2,2); plot(t2,St2); 
title 'Синусоидальный сигнал'; grid on;
axis([0 1/fsin 1.1*min(St2) 1.1*max(St2)]);
subplot (2,2,3); plot(t3,St3); 
title 'Гауссовский импульс'; grid on;
axis([-Tgaus Tgaus 0.1*min(St3) 1.1*max(St3)]);
subplot (2,2,4); plot(t4,St4); 
title 'Треугольный импульс'; grid on;
axis([-Tutr Tutr 0.1*min(St4) 1.1*max(St4)]);

%построение дискретного сигнала
t1=0:Tspul:Tpul;
St1=(Apul).*(t1<=Tupul)+(0).*(t1>Tupul); 
t2=[0:Tssin:1/fsin]; 
St2=Asin*sin(2*pi*fsin*t2); 
t3=[-Tgaus:Tsgaus:Tgaus];
St3=Agu*exp(-t3.^2/(2*a^2));
t4=[-Tutr/2:Tstr:Tutr/2];
St4=tripuls(t4);

figure('Name','Дискретные сигналы','NumberTitle','off');
subplot (2,2,1); bar(St1);
axis([0 length(t1) -0.1*Apul Apul*1.1]); title 'Прямоугольный импульс';
subplot (2,2,2); bar(St2); title 'Синусоидальный сигнал'; 
subplot (2,2,3); bar(St3); title 'Гауссовский импульс'; 
subplot (2,2,4); bar(St4); title 'Треугольный импульс'; 

%БПФ прямоугольника
Sn=fft(St1,N); % Функция быстрого преобразования ФУРЬЕ
figure('Name','Быстрое преобразование Фурье для прямоугольного сигнала','NumberTitle','off');
subplot(2,2,1); stem(abs(Sn));
axis([-1 N+1 min(abs(Sn))-1 max(abs(Sn))+1]); title 'Амплитудный спектр'; grid on;
subplot(2,2,2); stem(real(Sn));
axis([-1 N+1 min(real(Sn))-1 max(real(Sn))+1]); title 'Вещественный спектр'; grid on;
subplot(2,2,3); stem(conj(Sn));
axis([-1 N+1 min(abs(Sn)) max(abs(Sn))]); title 'Комплексно-сопряженный спектр'; grid on;
subplot(2,2,4); stem(angle(Sn));
axis([-1 N+1 min(angle(Sn))-1 max(angle(Sn))+1]); title 'Фазовый спектр'; grid on;
Snpuls=Sn; %присвоение матрицы

%БПФ синусоиды
Sn=fft(St2,N);
figure('Name','Быстрое преобразование Фурье для синусоидального сигнала','NumberTitle','off');
subplot(2,2,1); stem(abs(Sn));
axis([-1 N+1 min(abs(Sn))-1 max(abs(Sn))+1]); title 'Амплитудный спектр'; grid on;
subplot(2,2,2); stem(real(Sn));
axis([-1 N+1 min(real(Sn))-1 max(real(Sn))+1]); title 'Вещественный спектр'; grid on;
subplot(2,2,3); stem(conj(Sn));
axis([-1 N+1 min(abs(Sn)) max(abs(Sn))]); title 'Комплексно-сопряженный спектр'; grid on;
subplot(2,2,4); stem(angle(Sn));
axis([-1 N+1 min(angle(Sn))-1 max(angle(Sn))+1]); title 'Фазовый спектр'; grid on;
Snsin=Sn;

%БПФ колоколообразного
Sn=fft(St3,N);
figure('Name','Быстрое преобразование Фурье для колоколообразного импульса','NumberTitle','off');
subplot(2,2,1); stem(abs(Sn));
axis([-1 N+1 min(abs(Sn))-1 max(abs(Sn))+1]); title 'Амплитудный спектр'; grid on;
subplot(2,2,2); stem(real(Sn));
axis([-1 N+1 min(real(Sn))-1 max(real(Sn))+1]); title 'Вещественный спектр'; grid on;
subplot(2,2,3); stem(conj(Sn));
axis([-1 N+1 min(abs(Sn)) max(abs(Sn))]); title 'Комплексно-сопряженный спектр'; grid on;
subplot(2,2,4); stem(angle(Sn));
axis([-1 N+1 min(angle(Sn))-1 max(angle(Sn))+1]); title 'Фазовый спектр'; grid on;
Sngaus=Sn;

%БПФ треугольника
Sn=fft(St4,N);
figure('Name','Быстрое преобразование Фурье для треугольного импульса','NumberTitle','off');
subplot(2,2,1); stem(abs(Sn));
axis([-1 N+1 min(abs(Sn))-1 max(abs(Sn))+1]); title 'Амплитудный спектр'; grid on;
subplot(2,2,2); stem(real(Sn));
axis([-1 N+1 min(real(Sn))-1 max(real(Sn))+1]); title 'Вещественный спектр'; grid on;
subplot(2,2,3); stem(conj(Sn));
axis([-1 N+1 min(abs(Sn)) max(abs(Sn))]); title 'Комплексно-сопряженный спектр'; grid on;
subplot(2,2,4); stem(angle(Sn));
axis([-1 N+1 min(angle(Sn))-1 max(angle(Sn))+1]); title 'Фазовый спектр'; grid on;
Sntr=Sn;
