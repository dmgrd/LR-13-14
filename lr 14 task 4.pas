begin
  var inf:file of integer;
  assign(inf,'4.txt');
  rewrite(inf);
  var r:integer;
  for var i:=1 to 500 do begin 
    r:=i;
    write(inf,r);
  end;close(inf);
  reset(inf);
  println('Сумма четных чисел:');
  var s:=0;
  while not eof(inf) do begin
  read(inf,r);
  if r mod 2 = 0 then s+=r;
    end;
  print(s);
end.