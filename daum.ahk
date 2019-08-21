WB := ComObjCreate( "InternetExplorer.Application" )
WB.navigate("https://logins.daum.net/accounts/signinform.do?url=https%3A%2F%2Fwww.daum.net%2F")
While WB.readyState <> 4 || WB.document.readyState != "complete" || WB.busy
Sleep, 100
WB.document.getElementById( "id" ).value :=  "아이디"  ;아이디를 입력합니다.
WB.document.getElementById( "inputPwd" ).value :=  "비밀번호"  ;비밀번호를 입력합니다. 
WB.document.getElementById( "loginBtn" ).click() ;로그인정보를 서버에 전송합니다.
WB.Visible := true  ;인터넷창을 보여줍니다.
ExitApp