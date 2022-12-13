begin
  var infile,outfile:text;
  assign(infile, 'd:6input.txt');
  reset(infile);
  assign(outfile,'d:6output.txt');
  rewrite(outfile);
  var s:string;
  while not eof(infile) do begin
    readln(infile,s);
    if s<>'' then println(outfile,s);
  end;
  close(infile);
  close(outfile);
end.