<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
/* 공통기능 */
a{
text-decoration: none;
color: #212140;
}
p{
	margin-top:4px;
	width: 650px;
	line-height:25px; 
}
video { 
width: 550px;
height: 350px;
display: block; 
}
.title{
   font-size: 14px;
   font-weight: 600;
   color: #212140;
}
.content{
	
	font-size: 14px;
   font-weight: 500;
   color: grey;
}
.project-container{
width: 600px;
padding: 20px;
}
.problem-btn{
	cursor: pointer;
	color: #212140;
	font-weight: 400px;
}
.solve-btn{
	margin-left:10px;
   cursor: pointer;
   color: grey;
	font-weight: 400px;
}
</style>
</head>
<body>
	<div class='project-container'>
		<h1>Team Project 번뜩</h1>
		<br>
		<span class='content-title'>메인화면</span><br>
		<img alt="메인화면" src="../project/main.JPG" style='width: 800px;'><br><br>
		<span class='content-title'>프로젝트 영상</span><br>
		<iframe width="800" height="515" 
		src="https://www.youtube.com/embed/w9w6OACFT28" 
		title="YouTube video player" frameborder="0" 
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
		allowfullscreen></iframe>
		<br><br><br>
		<hr>
		<span class='content-title'>프로젝트 설명</span><br>
		<p class = 'content' >
		<span class = 'title'>서비스 목적</span><br>
		사람들이 갖고 있는 다양한 아이디어들을 생각 속 에만 머무르는 것이 아니라 실제로
		상품화 해서 실생활에 적용 될 수 있도록 후원해주는 크라우드 펀딩 사이트를 구현 했습니다.<br><br>
		<span class = 'title'>기능요약</span><br>
		1. 대부분의 서비스는 회원가입을 통해 가능하고 회원가입시 비밀번호를 암호화 해서 DB에 저장합니다.<br>
		2. 회원가입을 하지 않아도 등록된 프로젝트 게시물은 확인이 가능하지만 댓글이나 채팅 문의 같은 기능들은
		사용이 불가능합니다.<br>
		3. 회원가입을 통해서 후원 받고 싶은 게시물을 등록 할수 있고 등록시에는 관리자 페이지에서 심사를 거쳐서
		최종적으로 게시물이 등록 됩니다.<br>
		4. 등록된 게시물에는 댓글을 등록하고 게시물 작성자에게 문의가 가능하며 댓글을 작성한 회원의 프로필을 클릭해서
		이동하면 해당 회원의 프로필을 확인할 수 있고 채팅또한 가능합니다. <br>
		5. 등록된 게시물을 후원하면 카카오 결제 API를 사용해서 바로 결제되는 것이 아니라 정기 결제가 가능하도록
		구현했습니다<br>
		
		</p>
		
		<br><br><br>
		<hr>
		<span class='content-title'>개발환경</span><br>
		<img alt="개발환경" src="../project/tools.JPG" style='width: 800px;'>
		<p class = 'content' >
		팀프로젝트이기 때문에 팀원들과의 협업이 중요한 핵심요소라고 생각했습니다. 그래서 저희팀은 팀원들이 프로젝트 진행중에 필요한 파일이나 회의내용등을 
		Git 과 Notion을 사용해서 빠르게 공유함으로써 이야기했던 내용들을 반복할 필요가 없었습니다 그래서 개발할 수 있는 시간을 극대화해서 
		프로젝트를 효율적으로 진행했습니다.
		
		</p>
		
		
		
		<br><br><br>
		<hr>
		<span class='content-title'>ERD DIAGRAM</span><br>
		<p class = 'content' >
		member table의 id를 comment, project, chat, message 테이블에서 외래키로 사용였습니다. <br> 
		그 다음 제약조건에 on delete cascade, on update cascade를 주어서
		해당 id회원이 탈퇴하거나 <br>정보를 수정할때 외래키로 사용하고 있는 테이블의 정보도 같이 update되거나
		삭제되도록<br> DB를 설계했습니다.
		</p>
		<img alt="erd" src="../project/erd.JPG" style='width: 800px;'>
		
		<br><br><br>
		<hr>
		<span class='content-title'>담당기능</span><br>
		<p class = 'content'>
		<span class='title'>*댓글 기능</span><br>
		1. 댓글 게시물 작성자가 댓글 고정이 가능하도록 구현<br>
		2. 댓글 및 무한 대댓글 구현<br>
		3. 대댓글 작성시 부모글의 내용을 확인 할 수 있는 기능 구현<br>
		4. 댓글 삭제시 댓글에 대댓글이 없을 경우와 대댓글일 경우 바로삭제하고 
		댓글에 대댓글이 달렷을 경우 임시삭제 후 대댓글이 모두 지워질 경우 삭제되도록 구현<br>
		<br><span class='title'>*채팅 기능</span><br>
		
		1. 회원 프로필 페이지를 통해서 회원간 채팅이 가능하도록 구현 <br>
		2. 보낸 메세지를 상대방이 읽었는지 채팅창과 채팅목록에서 확인할수 있는 기능 구현 <br>
		3. 채팅 목록에서 채팅을 읽음처리 하거나 채팅방을 나갈수 있도록 구현 <br>
		4. DB를 이용한 채팅이기 때문에 페이지를 리로드 하지 않으면 실시간 채팅이 불가능 한점을<br> 
		보완하는 리로드 기능 추가<br>
		
		<br><span class='title'>*후원 후 새로운 프로젝트 추천 화면 구현</span><br>
		1. 자바스크립트를 이용해서 몇번째 후원자인지 숫자가 변하는 것을 동적으로 구현<br>
		2. 등록된 프로젝트 게시물이 4개 이상일 경우 후원을 한 후에 랜덤으로 4개의 게시물을 추천할 수 있도록 구현<br>
		
		<br><span class='title'>*게시물 검색 및 카테고리에맞게 출력하는 기능</span><br>
		1. 기존 팀원의 취업으로 인해 프로젝트 전체를 수정해야 하는 상황 발생 해서 백엔드 부분을 담당해서 진행<br>
		2. sql을 만들때 최대한 중복된 내용을 제거해서 코드를 효율적으로 유지 보수 할 수 있도록 구현<br>
		3. 사용자가 게시물을 검색 할 수 있고 원하는 카테고리별로 선택해서 출력 되도록<br> 
		백엔드 부분(SQL, Mapper, Service, Controller 부분) 구현<br>
		
		<br><span class='title'>*프로젝트 발표</span><br>
		프로젝트 팀원소개, 사이트소개, 개발환경, 핵심기능 발표 담당<br>
		
		<br><span class='title'>*프로젝트 배포</span><br>
		1. AWS EC2의 RDP원격 컴퓨터에 톰캣과 java를 설치하였고 프로젝트를 ROOT.war 파일로 export 해서
		배포<br>
		2. AWS의 RDS에 MYSQL을 사용
		</p>
		
		<br><br><br>
		<hr>
		<span class='content-title'>담당기능 시현 영상</span><br><br>
		<span class='title'>COMMENT</span>
		<video class='function-video1' controls poster="../video/comment.JPG">
	      <source src="../video/comment.mp4" type="video/mp4">
	    </video>
	    <br>
		<span class='title'>CHAT</span>
		<video class='function-video2' controls poster="../video/chat.JPG">
	      <source src="../video/chat.mp4" type="video/mp4">
	    </video>
	    
	    <br><br><br>
	    <hr>
	    <span class='content-title'>프로젝트 점검</span><br>
	    <p class = 'content'>
	    팀 프로젝트 종료 후 담당기능을 점검 하던 중 태그를 넣어서 DB에 저장하면 문자 그대로 인식하는 것이 아니라
	    태그로 인식하는 심각한 문제를 발견했습니다. <br>이를 악용해서 개인정보를 유출시키거나 사이트가 오작동 되도록
	    만들어서 문제가 생기면 비즈니스적으로도 큰 다격을 입을 것 같다는 생각이 들었습니다 <br>시간이 조금 걸리더라도
	    이 문제는 반드시 해결 해야 한다는 생각을 했습니다. 그리고 검색을 통해 여러가지 솔루션을 확인했고 아래와 같이
	    하나씩 적용을 해서 문제를 해결 할 수 있었습니다.<br><br>
	    
	    <span class='title'>
	    1. 제일 먼저 태그를 DB에저장하고 출력 할때 어떻게 하면 문자로 인식하는지 검색을 했습니다.<br>
	    2. 그다음 naver 에서 제공하는 lucy filter를 발견하고 적용 했습니다 하지만 이 필터는 Json부분까지 xss로 부터 보호해주지 못했습니다.<br>
	    3. 그래서 Json 도 xss로부터 보호해주는 방법을 검색을 통해 찾았는데요 pom.xml에 commons-text dependency를 추가하고 CharacterEscapes  상속받는 
	    HTMLCharacterEscapes를 만들고 이에 맞는 WebMvcConfig을 추가해서 적용시켜서 문재를 해결 했습니다.</span><br><br>
	    이렇게 태그가 인식되면 script 태그를 집어넣어서 회원의 정보를 출력하는것이 가능해지기때문에 <br>
	    정말 큰 이슈라고 생각이 들었습니다. 
	    <br>앞으로 프로젝트를 진행 할때 단순하게 출력만 되도록 하는것이 아니라 
	    다양한 부분을 고려하고 테스트 해야함을 깨닫는 중요한 기회였습니다.
	    <br><br>
	    <span class='title problem-btn'>문제발생 화면</span>
	    <span class='title solve-btn'>문제해결 화면</span><br>
	    <img class ='problem-img' alt="수정 전" src="../project/before.JPG" style='width: 600px; height: 300px;'><br>
   		<img class ='solve-img'alt="수정 후" src="../project/after.JPG" style='width: 600px; height: 300px;'><br>
	    </p>
	    <hr>
		<div class='link-container'>
			<p class = 'content'>
				<span class='content-title'>More Information</span><br>
				<a href='https://blog.naver.com/wonseob7942/222597821292' target="blank"><i class="fa fa-book"></i> blog</a>
				프로젝트에 대한 자세한 설명을 확인 할수 있는 네이버 블로그 링크입니다.<br>
				<a href='https://github.com/wonseopK/SpringFinalProject' target="blank"><i class="fa fa-github"></i> github</a>
				프로젝트 소스코드를 확인 할 수 있는 깃 허브 주소입니다.<br>
			</p>
		</div>
    </div>
    <script type="text/javascript">
    	$(".solve-img").hide();
    	
    	$(".problem-btn").click(function() {
    		$(".problem-img").show();
    		$(".solve-img").hide();
    		$(".problem-btn").css("color","#212140");
    		$(".solve-btn").css("color","grey");
    	})
    	$(".solve-btn").click(function() {
    		$(".problem-img").hide();
    		$(".solve-img").show();
    		$(".problem-btn").css("color","grey");
    		$(".solve-btn").css("color","#212140");
    	})
    </script>
</body>
</html>