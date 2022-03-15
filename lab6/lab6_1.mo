// Задача об эпидемии
// 1-ый случай: все больные изолированы и не заражают
             // здоровых

model lab6_1
  constant Real a = 0.01; // коэффициент заболеваемости
  constant Real b = 0.02; // коэффициент выздоровления
  constant Real N = 6730; // количество особей
  
  Real S; // 1ая группа - восприимчивые к болезни, но
          // пока здоровые особи
  Real I; // 2ая группа - число инфицированных особей,
          // которые также при этом являются
          // распространителями инфекции
  Real R; // 3ая группа - это здоровые особи с иммунитетом
          // к болезни

initial equation
  S = N-I-R; // начальное значение S(0)
  I = 46; // начальное значение I(0)
  R = 8; // начальное значение R(0)

equation
  der(S)=0; // скорость изменения числа S(t)
  der(I)=-b*I; // скорость изменения числа I(t)
  der(R)=b*I; // скорость изменения числа R(t)

end lab6_1;
