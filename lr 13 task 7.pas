begin 
  var int,out:text;
  assign(int, 'd:z3.in.txt');
  assign(out, 'd:z3.out.txt');
  reset(int);
  rewrite(out);
  var r:integer;
  read(int,r);
  close(int);
  var sum:integer;
  var k:integer;
  for var i:=1 to r do begin 
    k:=0;
    for var j:=1 to i do if i mod j = 0 then inc(k);
    if k=5 then sum+=i;
  end;
  print(out,sum);
  close(out);
end.