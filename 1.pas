var a,b,si,st,d,n,k : real; i,h : integer;
begin
  writeln('Впишите пределы интегрирования:');
  readln(a,b);
  si := ((b*b*b*b)/2 - (2*b*b*b)/3 + b*b + 11*b) - ((a*a*a*a)/2 - (2*a*a*a)/3 + a*a + 11*a);
  writeln('Площадь фигуры ограниченной прямой, вычисленная с помощью интеграла равна ',si);
  writeln('Впишите количество трапеций:');
  readln(h);
  d := (b-a)/h;
  n := a;
  for i := 1 to h do begin
    k := n + d;
    //writeln(n,' ',k);
    st := st + (((2*n*n*n - 2*n*n + 2*n + 11)+(2*k*k*k - 2*k*k + 2*k + 11))/2)*d;
    n := n + d;
  end;
  writeln('Площадь фигуры ограниченной прямой, вычисленная с помощью метода трапеции ',st);
end.