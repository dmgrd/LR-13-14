begin
  var text: text;
  var n:=readinteger('Введите количество строк');
  var k:=readinteger('Введите количество символов');
  assign(text, 'd:2.txt');
  rewrite(text);
  for var i:=1 to n do begin 
    for var j:=1 to k do print(text,'*');
    println(text);
  end;
  close(text);
end.