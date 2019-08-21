WB := ComObjCreate( "InternetExplorer.Application" )
WB.navigate("http://wanjumovie.kr/index.9is?contentUid=ff808081452a168101452a7afe1c003b")
While WB.readyState <> 4 || WB.document.readyState != "complete" || WB.busy
Sleep, 100
WB.document.getElementById( "log_id" ).value :=  "아이디"  ;아이디를 입력합니다.
WB.document.getElementById( "log_pw" ).value :=  "비밀번호"  ;비밀번호를 입력합니다. 
WB.document.querySelectorAll("a")[31].click() ;로그인정보를 서버에 전송합니다.
WB.Visible := true  ;인터넷창을 보여줍니다.
ExitApp

		
		