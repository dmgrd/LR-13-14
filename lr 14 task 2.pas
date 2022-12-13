begin 
  var inf,outf:text;
  assign(inf,'d:2.txt');
  rewrite(inf);
  var s:string;
  println('Введите строки в исходный файл');
  for var i:=1 to 5 do begin
    s:=readstring();
    println(inf,s); end;close(inf);
  assign(outf,'d:22.txt');
  rewrite(outf);
  reset(inf);
  var max:=0;
  while not eof(inf) do
  begin
      readln(inf,s);
    if max<length(s) then
    begin
      max:=length(s);
    end;
  end;
  reset(inf);
  while not eof(inf) do
  begin
      readln(inf,s);
    if max=length(s) then
    begin
      for var i:=length(s) downto 1 do
      begin
        write(outf,s[i]);
      end;
      writeln(outf);
    end;
  end;
  close(inf);close(outf);
end.