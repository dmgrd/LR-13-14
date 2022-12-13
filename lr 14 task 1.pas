var
 F_in,F_out: File of Char;
 a,C:Char;
 i:integer;
begin
  Assign(F_in,'d:1.txt');
  ReWrite(F_in);
  write('Какие символы записываем в исходный файл?');
  for i:=1 to 5 do
  begin
       read(a);
       write(F_in,a);
  end;
 
  Reset(F_in);
  Assign(F_out,'d:11.txt');
  ReWrite(F_out);
 
  Read(F_in,C);
  while (not eof(F_in)) and (C<>' ') do
   begin
    Write(F_out,C);
    Read(F_in,C);
   end;
   Close(F_out);
   Close(F_in);
end.