MsgBox, 비활성매크로 예시
run, notepad.exe,,,OPID1

i:=0
f1::
Start:=true
Loop
{
	if(Start=true)
	{
		i++
		controlsend, Edit1, 윤해진 x%i% 
		,제목 없음 - 메모장
		controlsend, Edit1, {enter} 
		,제목 없음 - 메모장 
		
	}
	else
	{
			exitapp
	}
}
return 

f2::
Start:=false
