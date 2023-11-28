 uses Crt;
var a,b,si,st,d,n : real; h,f : integer; sumt, sumi : boolean; ch : char;
//1
function integral(ai: real) : real;
begin
  Result := ((ai*ai*ai*ai)/2 - (2*ai*ai*ai)/3 + ai*ai + 11*ai);
end;
//2
function trapecia(at: real) : real;
begin
  Result := (2*at*at*at - 2*at*at + 2*at + 11);
end;
//3
procedure cont;
begin
  writeln('Нажмите <Enter> для продолжения.');
  repeat
    ch := readkey;
  until ch = #13;
end;
//4
procedure sumint;
begin
  si := integral(b) - integral(a);
  writeln('Площадь фигуры ограниченной прямой, вычисленная с помощью интеграла равна ',si);
  sumi := true;
  cont;
end;
//5
procedure sumtra;
var i : integer;
begin
  st := 0;
  writeln('Впишите количество трапеций:');
  readln(h);
  d := (b-a)/h;
  n := a;
  for i := 1 to h do begin
    st := st + ((trapecia(n)+trapecia(n+d))/2)*d;
    n := n + d;
  end;
  writeln('Площадь фигуры ограниченной прямой, вычисленная с помощью метода трапеции ',st);
  sumt := true;
  cont;
end;
//6
procedure pogr;
begin
  if sumt and sumi then writeln('Погрешность способов равна ',abs(st-si),', где полученные суммы равны ',si,' и ',st) else writeln('Не все способы были выполнены');
  cont;
end;
//7
procedure predel; 
begin
  writeln('Впишите новые пределы интегрирования:');
  readln(a,b);
  sumi := False;
  sumt := False;
  cont;
end;
//8
begin
  writeln('Впишите пределы интегрирования:');
  readln(a,b);
  repeat
    ClrScr;;
    writeln('Пределы интегрирования [',a,' ; ',b,']');
    writeln('Выберите действие, которое хотите выполнить');
    writeln('1 – Методом интеграла');
    writeln('2 – Методом трапеций');
    writeln('3 – Оценка погрешности полученного результата между двумя методами');
    writeln('4 – Назначение других пределов');
    writeln('0 – Выход из программы');
    readln(f);
    case f of
     0: exit;
     1: sumint;
     2: sumtra;
     3: pogr;
     4: predel;
    end;
  until f = 0;
end.