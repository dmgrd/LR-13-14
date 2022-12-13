begin 
  var s:=readstring('Введите строку');
  var text:text;
  assign(text,'d:3.txt');
  append(text);
  print(text,s);
  close(text);
end.