begin 
  var infile,outfile:text;
  var N:=100;
  assign(infile,'d:5input.txt');
  rewrite(infile);
  var r:integer;
  var min,max:integer;
  for var i:=1 to N do begin
    r:=random(0,500);
    println(infile,r);
    if r>max then max:=r;
    if r<min then min:=r;
  end;
  assign(outfile,'d:5output.txt');
  rewrite(outfile);
  println(outfile,max,min);
  close(outfile);
  close(infile);
end.