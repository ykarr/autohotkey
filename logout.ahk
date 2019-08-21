WB := ComObjCreate( "InternetExplorer.Application" ) ;인터넷 익스플로러
;WB := ComObjCreate( "selenium.Chromedriver" ) ;인터넷 익스플로러
WB.navigate("https://nid.naver.com/nidlogin.logout?returl=https://www.naver.com/") ;웹사이트 주소 
WB.navigate("https://logins.daum.net/accounts/logout.do?url=https://www.daum.net/") ;웹사이트 주소
WB.navigate("https://www.youtube.com/logout") ;웹사이트 주소 
WB.navigate("https://accounts.google.com/Logout?hl=ko&continue=https://www.google.com/&timeStmp=1565454251&secTok=.AG5fkS--mTlzXYEef0SUwmdZRt_hJEeVtQ")
ExitApp ;위의 활동이 다 끝나면 매크로 종료
