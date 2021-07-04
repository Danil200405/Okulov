program words;
const n=20; m=10;{колво слов в тексте-n, number of letters-m}
type Tstring=string[m]
	var A :array[1..n] of Tsring;
	    s:string;
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
	s:=s+' ';
	RemoveSpaces(s);
	k:=0;
	while s<>'' do begin
		k:=k+1;
		A[K]:= GetWorld(s);
	end;
	for i:=1 to k do writeln(A[i]);
	readln;
end. 
