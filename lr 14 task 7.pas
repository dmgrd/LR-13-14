begin
  var inf:file of char;
  Assign(inf, '7.txt');
  reset(inf);
  for var i:=1 to filesize(inf) do
  begin
    if i mod 2 = 1 then
    begin
      seek(inf, i);
      write(inf,'!');
    end;
  end;
end.