f1:: ;f1을 누르면
ImageSearch x1,x2,0,0,2560,1080,*20 hh.bmp ;해상도 범위 내에서 20의 정확도로 hh이미지와 같은 이미지를 찾는다
IF errorlevel=0
{
	;MsgBox, 로그인 이미지 감지
	mouseclick,l,x1,x2,1,0 ;위에서 얻은 좌표의 위치에 마우스를 클릭한다

	sleep, 1000 ;잠시 멈춘다
	send, {tab} ;tab키를 보낸다.
	send,{tab} 
	send,{enter}
}
else{
	ImageSearch x1,x2,0,0,2560,1080,*20 tt.bmp
	if errorlevel=0
	{
		mouseclick,l,x1,x2,1,0
	}
}
return  

f2::
WB := ComObjCreate( "InternetExplorer.Application" )
WB.navigate( "https://nid.naver.com/nidlogin.login" )
While WB.readyState <> 4 || WB.document.readyState != "complete" || WB.busy
Sleep, 100
WB.document.getElementById( "id" ).value :=  "아이디"  ;아이디를 입력합니다.
WB.document.getElementById( "pw" ).value :=  "비밀번호"  ;비밀번호를 입력합니다.
WB.document.querySelectorAll("input")[12].click()  ;로그인정보를 서버에 전송합니다.
WB.Visible := true  ;인터넷창을 보여줍니다.

return

f4:: ;f4를 누르면
exitapp ;앱을 끝낸다.		
