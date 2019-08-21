Gui, Add, Edit, x12 y10 w150 h20 vhd +center, 하드번호 
Gui, Add, Text, x22 y40 w100 h30 , 하드번호
Gui, Add, Text, x8 y65 w20 h10 , PW
Gui, Add, Edit, x30 y60 w100 h20 vPW +cemter,1234
Gui, Add, GroupBox, x62 y270 w-40 h-230 , GroupBox
Gui, Add, Button, x2 y80 w90 h90 , 인증
Gui, Add, Button, x150 y80 w90 h90 , 번호확인
Gui, Add, Text, x132 y40 w100 h30 , 제작자  그러셈
Gui, Show, x127 y87 h178 w245, 하드인증
Return
Button번호확인:
Driveget, A,serial, C:\
msgbox 당신의 하드번호는 %A% 입니다.
clipboard = %A%
msgbox 당신의 하드번호가 복사되었습니다.
return

button인증:
guicontrolget, HD
guicontrolget, PW
;urldownloadtofile,http://sping12.dothome.co.kr/hd/%HD%.txt,check.txt
fileread,checking,check.txt
if checking = %PW%
{
filedelete,check.txt
msgbox,로그인성공
}
else
{
filedelete,check.txt
msgbox,로그인실패
return
}

GuiClose:
ExitApp