<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		<script>
			function fun1(){
				console.log("fun1() 실행");
			}
			
			function fun2(a, b){
				console.log("fun2() 실행");
				var result = a + b;
				return result;
			}
			
			function fun3()
			{
				var result = fun2(a, b);
				consol.log(result);
			}
			
			function fun4(result)
			{
				if(result ==null)
				{
					//유효성 검사 코드
					return false;
				}
				else
				{
					return true;
				}	
			}
			
			function fun5(){
				var mid = document.loginForm.mid.value;
				if(mid == ""){
					return false;
				}
				else {
					return true;
				}
			}
			//이름 없는 함수
			var fun6 = function(){
				console.log("fun6() 함수 실행")
				
			};
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam04_operator.jsp</h5>
		<div>
			<button onclick = "fun()" class= "btn btn-success btn-sm">fun() 호출1</button>
			<button onclick = "fun(3, 5)" class= "btn btn-danger btn-sm">fun() 호출2</button>
			<a onclick = "return fun4(null)"href = "main.do" class = "btn btn-info btn-sm">main 이동</a>
			
			<form name = "loginForm" method = "post" style = "margin-top:10px" action = "main.do" onsubmit = "return fun5()">
				<input type = "text" name = "mid" value = ""/>
				<%--submit 효과 --%>
				<input type = "submit" value = "전송" class = "btn btn-success btn-sm"/>
				<button class = "btn btn-success btn-sm" style="margin-top : 10px">전송</button>
				<input type = "image" style="margin-top : 10px" src = "${pageContext.request.contextPath}/resource/img/button1.PNG"/>
			</form>
			<button onclick = "fun6()" class = "btn btn-success btn-sm">fun6() 호출</button> 
		</div>
	</body>
</html>