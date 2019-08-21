;티스토리 & 깃허브
winHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1") ;winhttp오브젝트 생성
;winHttp.Open("GET","https://ykarr.github.io/web/") ; 주소 들어가는 부분.Get으로 설정
winHttp.Open("GET","https://intunknown.tistory.com/414") ; 주소 들어가는 부분.
winHttp.Send ;전송할 데이터를 입력하는 부분 입력할 데이터 없으므로 send만
winHttp.WaitForResponse() ;기다림
Text:= winHttp.ResponseText ;responsetext소스를 받아옴

IfInString, Text, 올리디버거 ;인증이라는 문자가 포함되어있는지 
	MsgBox, 인증완료 ;포함되어있다면 인증 메시지 박스 출력
Else{ ;포함되어 있지 않다면 
	MsgBox, 인증실패 ;인증실패 메시지박스 출력
	ExitApp ;끝
}

