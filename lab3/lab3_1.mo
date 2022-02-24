// Модель боевых действий между регулярными войсками

model lab3_1
// Задание типов
  type Soldier=Real(unit="soldier", min=0); // тип Солдат с мерой "солдат" с минимальным значением 0
  type Days=Real(unit="days", min=0); // тип День с мерой "дни" с минимальным значением 0
  
// Начальные условия  
  constant Real a=0.15; // степень влияния различных факторов на потери
  constant Real b=0.64; // эффективность боевых действий армии Y
  constant Real c=0.55; // эффективность боевых действий армии X
  constant Real h=0.12; // степень влияния различных факторов на потери
  
  Real p; // функция, учитывающая возможность подхода подкрепления к армии X
  Real q; // функция, учитывающая возможность подхода подкрепления к армии Y
  
  Soldier x; // численность армии X
  Soldier y; // численность армии Y
  
  parameter Days t; // время
  
initial equation
// Начальные значения
  x=33333;
  y=44444;
  t=0;

equation
// Задание функиий, учитывающих возможность подхода подкрепления к армиям X и Y соотвенственно
  p=abs(sin(t+15));
  q=abs(cos(t+25));
  
// Решение системы дифференциальных уравнений
  der(x)=-a*x-b*y+p;
  der(y)=-c*x-h*y+q;

end lab3_1;