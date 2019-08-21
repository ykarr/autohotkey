WB := ComObjCreate( "InternetExplorer.Application" )
WB.navigate("https://www.tistory.com/auth/login/?redirectUrl=https%3A%2F%2Fintunknown.tistory.com%2Fmanage")
While WB.readyState <> 4 || WB.document.readyState != "complete" || WB.busy
Sleep, 100
WB.document.getElementById( "loginId" ).value :=  "아이디"  ;아이디를 입력합니다.
WB.document.getElementById( "loginPw" ).value :=  "비밀번호"  ;비밀번호를 입력합니다. 

;WB.document.getElementByClass( "loginPw" )
WB.Visible := true  ;인터넷창을 보여줍니다.
WB.document.querySelectorAll("button")[0].click() ;로그인정보를 서버에 전송합니다.
ExitApp

		
		