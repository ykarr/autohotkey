WB := ComObjCreate( "InternetExplorer.Application" ) ;인터넷 익스플로러 
WB.navigate("https://nid.naver.com/nidlogin.login") ;웹사이트 주소 
While WB.readyState <> 4 || WB.document.readyState != "complete" || WB.busy 
Sleep, 100 ;잠시 멈춤 
;WB.document.getElementById( "id" ).value := "아이디" ;아이디를 입력합니다. 
;WB.document.getElementById( "pw" ).value := "비밀번호" ;비밀번호를 입력합니다. 
WB.document.getElementsByName("id")[0].value:="아이디"
WB.document.getElementsByName("pw")[0].value:="비밀번호"
;WB.document.querySelectorAll("a")[31].click() ;로그인정보를 서버에 전송합니다. 
;WB.document.getElementById( "frmNIDLogin" ).submit()
;WB.find_element_by_xpath('//*[@id="frmNIDLogin"]/fieldset/input').click()
;WB.document.getelementbyxpath('//*[@id="frmNIDLogin"]/fieldset/input').click()
WB.Visible := true ;인터넷창을 보여줍니다. 
ExitApp ;위의 활동이 다 끝나면 매크로 종료
