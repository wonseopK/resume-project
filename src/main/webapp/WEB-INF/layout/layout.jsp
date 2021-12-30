<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<!-- awesome font -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet" />
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<!-- bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/layout.css">



</head>
<body>
	<div class="inner">
		<div class="my-info-container">
			<img class="profile-photo" src="../profile/wonseop3.jpg" alt="profile-photo">
			<ul class="menu">
				<li class='my-info'><i class="fa fa-user-o"></i> ABOUT ME</li>
				<p>
					Name: 김원섭<br> Birth: 1993/12/07<br>
					<a href='https://blog.naver.com/wonseob7942' target="blank"><i class="fa fa-book"></i> blog</a><br>
					<a href='https://github.com/wonseopK' target="blank"><i class="fa fa-github"></i> github</a><br>
					<a href='https://www.youtube.com/channel/UCpIKHp3Tve0Djnlq_1iCwYA' target="blank"><i class="fa fa-youtube-play"></i> youtube</a>
				</p>
				<li class='project'><i class="fa fa-laptop" ></i> PROJECT-BUNNDEK</li>
				<p>SpringBoot를 활용한 팀프로젝트 번뜩입니다.</p>
				<li class='project-gifty'><i class="fa fa-laptop" ></i> PROJECT-GIFTY</li>
				<p>진행 예정 중인 프로젝트입니다.</p>
				<li class='contact'><i class="fa fa-envelope-o"></i> CONTACT</li>
				<p>궁금하신 점이있으면 언제든지 문의 주세요</p>
			</ul>
		</div>
		<div class='show-container'>
			<div class="about-container include">
				<jsp:include page="main.jsp" flush="false" />
			</div>
			<div class="project-container include">
				<jsp:include page="project.jsp" flush="false" />
			</div>
		</div>
	</div>
		<!-- 모달 -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h3 class="modal-title" id="exampleModalLabel">Contact to @wonseop</h3>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form>
		          <div class="form-group">
		            <label for="recipient-name" class="col-form-label">이메일</label>
		            <input type="text" class="form-control" id="sender-email" placeholder="작성자님의 이메일 주소를 입력해주세요">
		          </div>
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">내용</label>
		            <textarea class="form-control" id="message-text" placeholder="내용을 입력해주세요"></textarea>
		            <span class="count-letter">0/3000</span>
		          </div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary send-btn">메일 전송하기</button>
		      </div>
		    </div>
		  </div>
		</div>
	<script type="text/javascript">
		$(".about-container").show()	
			$(".project-container").hide()
	
		//about 페이지
		$(".my-info").click(function() {
			$(".project-container").hide()	
			$(".about-container").show()
			$(".function-video1").get(0).pause()
			$(".function-video2").get(0).pause()
		})
		//project gify 페이지
		$(".project-gifty").click(function() {
			let check = confirm("현제 진행중인 미완성 프로젝트입니다. GitHub에서 진행상황을 확인하시려면 확인을 눌러주세요.")
			if(check){
				 var url = "https://github.com/wonseopK/donation-project";  
		         window.open(url, "_blank");  
			}
		})
		
		//project 번뜩 페이지
		$(".project").click(function() {
			$(".project-container").show()	
			$(".about-container").hide()	
		})
		
		
		
		//CONTACT 기능
		let showCount = $(".count-letter")
		$(".contact").click(function() {
			$(".modal").modal()
		})
		$(".send-btn").click(function() {
			let senderEmail = $("#sender-email").val()
			let message = $("#message-text").val()
			if(isValidInfo(senderEmail, message) == false){
				console.log('사용자가 내용을 미입력')
				return;
			}
			let checkConfirm = confirm('메일을 보내시겠습니까?')
			if(checkConfirm == true){
				sendEmail(senderEmail,message)
			}
		})
		//이메일주소,내용 미입력검사
		function isValidInfo(email, message){
			if(email.trim() == ''){
				alert("이메일 주소를 입력해주세요")
				return false;
			}
			if(message.trim(message) == ''){
				alert("내용을 입력해주세요")
				return false;
			}
			return true;
		}		
		//이메일 글자수 검사
		$("#sender-email").keyup(function() {
			let email = $(this).val()
			if(email.trim().length > 100){
				alert('100자리 이하로 입력해주세요')
				$(this).val(email.substring(0, 100));
			}
		});
		//내용 글자수 검사
		$("#message-text").keyup(function() {
			let message = $(this).val()
			
			showCount.text(message.length+"/3000")
			if(message.length > 3000){
				alert('3000자리 이하로 입력해주세요')
				$(this).val(message.substring(0, 3000));
				showCount.text("3000/3000")
			}
		});
		function sendEmail(email, message){
			let address = 'wonseob7942@naver.com'
			$.ajax({
		  		url: "../send/send",
				method: "post",
		  		data: {message:message, title:email, address:address},
				success: function(){
					let senderEmail = $("#sender-email").val("");
					let message = $("#message-text").val("");
					alert("성공적으로 전송되었습니다.");
					$(".close").trigger('click');
				}	
			});
		}
		//모달창 닫기
		$(".close").click(function() {
			let senderEmail = $("#sender-email").val("")
			let message = $("#message-text").val("")
			showCount.text("0/3000")
		})
	</script>
</body>
</html>