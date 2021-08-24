# Курс лабораторных работ по цифровой обработке сигналов в MATLAB
Данный курс был разработан мной и моим коллегой в 2019 году для преподавателя по ЦОС. Планировалось таким образом улучшить качество образования. Для выполнения данных лабораторных работ требуется **MATLAB R2012b**, или совместимая версия, с тулбоксами **Signal Processing Toolbox** и **Control System Toolbox**.
Курс включает в себя 6 лабораторных работ. Выполнив данные работы, Вы научитесь применять быстрое преобразование Фурье, различные виды цифровых сверток, проектировать цифровые фильтры в MATLAB.

**Для успешного усвоения программы рекомендуется следующая литература:**
- Смит, С. Цифровая обработка сигналов. Практическое руководство для инженеров и научных работников [Текст] / С. Смит. – М.: Додэка-XXI, 2011. – 720 с.
- Сергиенко, А.Б. Цифровая обработка сигналов [Текст] / А.Б. Сергиенко. – СПб.: Питер, 2003. – 604 с.
- Давыдов, А.В. Цифровая обработка сигналов [Электронный ресурс]: Тематические лекции / А.В. Давыдов // geoin.org. – URL: http://prodav.narod2.ru/dsp/.
- Нефедов, В.И. Основы радиоэлектроники и связи [Текст]: учеб. пособие / В.И. Нефедов, А.С. Сигов; под ред. В.И. Нефедова. – М.: Высш. шк., 2009. – 735 с.
- Гимпилевич, Ю.Б. Сигналы и процессы в радиотехнике [Текст]: Ч.1. Учеб. пособие / Ю. Б. Гимпилевич. – Севастополь.: Изд-во СевНТУ. – 272 с.

**Дополнительная литература:**
- Хант, Б.Р. Matlab R2007 с нуля! [Текст] / Б.Р. Хант [и др.]. – М.: Лучшие книги, 2008. – 352 с.
- Гоноровский, И.С. Радиотехнические цепи и сигналы [Текст]: учебник для вузов / И.С. Гоноровский. – 4-е изд., перераб. и доп.. – М.: Радио и связь, 1986. – 512 с.
- Гольденберг, Л.М. Цифровая обработка сигналов [Текст]: учеб. пособие для вузов / Л. М. Гольденберг, Б.Д. Матюшкин, М.Н. Поляк. – 2-е изд., перераб. и доп.. – М.: Радио и связь, 1990. – 256 с.

## Лабораторная работа №1 - Дискретное преобразование Фурье
Файл - **lab1_fft.m**
В ходе выполнения данной лабораторной работы обучающийся ознакомится с реализацией алгоритма быстрого преобразования Фурье в MATLAB. Исследуются классические сигналы: прямоугольный, синусоидальный, Гауссовский, треугольный. Следует сделать выводы, как изменяются спектры сигналов при изменении их параметров (амплитуды, частоты, шага дискретизации и т.д.), при изменении размерности БПФ, чем отличаются спектры разных сигналов.

## Лабораторная работа №2 - Свертка сигналов: линейная, круговая, секционная
Файлы - **lab2_conv_lin_circ.m, lab2_conv_sect.m**
В ходе выполнения данной лабораторной работы обучающийся ознакомится с реализацией различных видов цифровой свертки двух сигналов в MATLAB. Для выполнения данной работы рекомендуется сделать ручной расчет сверток заданных сигналов и использовать скрипты MATLAB для проверки расчета. Методика расчета представлена в учебнике Сергиенко. Для расчета линейной и круговой сверток даны треугольный и прямоугольный сигнал. Для расчета секционной свертки дан длинный сигнал и импульсная характеристика фильтра. Можно попробовать заменить сигналы, либо добавить в сигналы отсчеты равные нулю, и посмотреть как изменится результат.

## Лабораторная работа №3 - Исследование цифрового резонатора
Файл - **lab3_resonator.m**
В ходе выполнения данной лабораторной работы обучающийся ознакомится с методикой расчета цифрового резонатора в MATLAB. Альтернативным вариантом выполнения работы является функция **iirnotch()**. Обучающемуся предлагается ознакомиться с программой, чтобы понять каким образом рассчитывается цифровой резонатор. Изменяя исходные параметры обучающийся должен понять как изменяется частота, на которую настроен резонатор. Ход работы:
Зафиксировать аргумент, получить несколько графиков для разных модулей. Зафиксировать модуль, получить несколько графиков для разных аргументов. Сделать выводы по изменению характеристик цифрового резонатора в зависимости от изменения модуля и аргумента. Обратить внимание на связь АЧХ и карты нулей-полюсов.

## Лабораторная работа №4 - КИХ-фильтры
Цель работы: ознакомление с методами расчета фильтров с конечной импульсной характеристикой (КИХ) и способами их реализации с помощью MATLAB. Исследование различных методов синтеза КИХ-фильтров. Приобретение практических навыков расчета КИХ-фильтров в MATLAB. 
Выводы: сравнить АЧХ и ФЧХ различных видов (Кайзер, Хэмминг) и типов (ФНЧ, ФВЧ) фильтров. Сравнить фильтры, спроектированные разными методами.

### Метод временных окон
Файл - **lab4_timewin.m**
Используется функция MATLAB **fir1()**. Подробнее об этой функции можно почитать в учебнике Сергиенко.
Для выполнения лабораторной работы предлагается рассмотреть часть из следующих окон:
- rectwin(N+1) – Прямоугольное окно;
- triang(N+1) – Треугольное окно;
- bartlett(N+1) – Окно Бартлетта;
- hann(N+1) – Окно Ханна;
- hamming(N+1) – Окно Хэмминга;
- hanning(N+1) – Окно Хэннинга;
- blackman(N+1) – Окно Блэкмана;
- blackmanharris(N+1) – Окно Блэкмана-Харриса;
- kaiser(N+1, beta) – Окно Кайзера с параметром β.

Типы фильтров (рекомендуется попробовать все):
- 'low' – ФНЧ с частотой среза F, отнормированной к частоте Найквиста (половина частоты дискретизации);
- 'high' – ФВЧ;
- 'bandpass' – полосовой фильтр. Вектор частоты F должен состоять из двух элементов, например F=[12000 15000];
- 'stop' – режекторный фильтр. Вектор частоты F должен состоять из двух элементов.

### Метод частотной выборки
Файл - **lab4_freqsamp.m**
Проектирование узкополосного фильтра методом частотной выборки с помощью функции **fir2()**

### Метод Ремеза
Файл - **lab4_remez.m**
Проектирование цифрового фильтра с помощью оптимального алгоритма Ремеза. Выполняется расчет минимального порядка фильтра с помощью функции **remezord**, затем расчет коэффициентов фильтра с помощью функции **remez**.

Типы фильтров:
- 'low' – ФНЧ;
- 'high' – ФВЧ;
- 'bandpass' – полосовой фильтр;
- 'stop' – режекторный фильтр;
- 'hilbert' – цифровой преобразователь Гильберта;
- 'differentiator' – цифровой дифференциатор.

## Лабораторная работа №5 - БИХ-фильтры
Цель работы: ознакомление с методами расчета фильтров с бесконечной импульсной характеристикой (БИХ) и способами их реализации с помощью MATLAB. Исследование различных методов синтеза БИХ-фильтров. Приобретение практических навыков расчета БИХ-фильтров в MATLAB.
Выводы: сравнить АЧХ и ФЧХ различных видов (Кайзер, Хэмминг) и типов (ФНЧ, ФВЧ) фильтров. Сравнить фильтры, спроектированные разными методами.
Подробнее почитать о БИХ-фильтрах и используемых функциях можно в учебнике Сергиенко.

### Синтез БИХ-фильтра функциями Signal Processing Toolbox
Файл - **lab5_iirmat.m**
Минимальный порядок БИХ-фильтра в MATLAB рассчитывается функциями:
»[N,Wn] = buttord(Wp,Ws,Rp,Rs); – Баттерворта
»[N,Wn] = cheb1ord(Wp,Ws,Rp,Rs); – Чебышева 1 типа
»[N,Wn] = cheb2ord(Wp,Ws,Rp,Rs); – Чебышева 2 типа
»[N,Wn] = ellipord(Wp,Ws,Rp,Rs); – фильтр Кауэра
	Входные данные:
	Wp – граничная нормированная частота полосы пропускания;
	Ws – граничная нормированная частота полосы затухания;
	Rp – пульсации на полосе пропускания;
	Rs – отклонения на полосе затухания.

Коэффициенты БИХ-фильтра в MATLAB вычисляются функциями:
»[b,a] = butter(N,Wn,’тип фильтра’); – Баттерврота
»[b,a] = cheby1(N,Rp,Wn,’тип фильтра’); – Чебышева 1 типа
»[b,a] = cheby2(N,Rs,Wn,’тип фильтра’); – Чебышева 2 типа
»[b,a] = ellip(N,Rp,Rs,Wn,’тип фильтра’) – фильтр Кауэра
	Входные данные: 
	N – порядок фильтра;
	Rp – пульсации на полосе пропускания;
	Rs – отклонения на полосе затухания;
	Wn – граничная частота полосы пропускания. 

	Типы фильтра:
	'low' – ФНЧ;
  'high' – ФВЧ;
	'bandpass' – полосовой фильтр;
	'stop' – режекторный фильтр;

### Метод билинейного преобразования
Файл - **lab5_iirbilin.m**
Нули-полюсы аналогового ФНЧ-прототипа рассчитываются с помощью функций:
»[z,p,k] = buttap(N);
»[z,p,k] = cheb1ap(N,Rp);
»[z,p,k] = cheb2ap(N,Rs);
»[z,p,k] = ellipap(N,Rp,Rs);

Преобразование аналогового ФНЧ-прототипа в целевой аналоговый фильтр выполняется с помощью функций:
»[bt,at] = lp2hp(b,a,Wo); ФНЧ в ФВЧ
»[bt,at] = lp2lp(b,a,Wo); ФНЧ в ФНЧ
»[bt,at] = lp2bs(b,a,Wo,Bw); ФНЧ в РФ
»[bt,at] = lp2bp(b,a,Wo,Bw); ФНЧ в ПФ

  где Wo – нормированная частота среза ФНЧ или ФВЧ или нормированная средняя частота пропускания/затухания для ПФ или РФ;
	Bw – нормированная ширина полосы пропускания/затухания для ПФ/РФ.

Билинейное преобразование выполняется в MATLAB с помощью функции
»[bd,ad] = bilinear(bt,at,Fs,Fp);

  где Fs – частота дискретизации, Гц;
	Fp – средняя частота полосы пропускания/затухания или частота среза.

## Лабораторная работа №6 - Цифровая фильтрация с помощью БПФ
В данной лабораторной работе предлагается отфильтровать сигнал с помощью БПФ. В качестве альтернативы строкам
```matlab
Spb=fft(rot90(impz(b),-1),N);%БПФ ИХ фильтра
Sps=fft(X,N);%БПФ зашумленного сигнала
Sout=ifft(Sps.*rot90(Spb,2));%отфильтрованный сигнал
```
можно использовать функцию MATLAB **filter()**
Попробовать разные варианты фильтров (лабораторные работы 4,5) и разные сигналы (лабораторная работа 1).
Пример выполнения приведен в файле **lab6.m**

*Best regards, nikitarem.*
