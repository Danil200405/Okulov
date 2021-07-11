program max_word;
const n=40; m=20;{колво слов в тексте-n, number of letters-m}
type Tstring=string[m];
	var A :array[1..n] of Tstring;
	    s,max,w1:string;
	    k,i: integer;
procedure RemoveSpaces (var s:string);
	begin
 		while (s<>'') and (s[1]=' ') do delete(s,1,1);
	end;

function GetWorld(var s:string):Tstring;
	begin
		GetWorld:=copy(s,1,pos(' ',s)-1);
		delete(s,1,pos(' ',s));
		RemoveSpaces(s);
	end;


begin
	writeln('Введите текст');
	readln(s);
	w1:='';
	max:='';
	s:=s+' ';
	RemoveSpaces(s);
	k:=0;
	while s<>'' do begin
		k:=k+1;
		A[K]:= GetWorld(s);
		w1:= GetWorld(s);
		if length(w1)>length(max) then max:=w1;
 		end;
	for i:=1 to k do writeln(A[i]);
	writeln(max,'-max word in the text');
	readln;
end. 
