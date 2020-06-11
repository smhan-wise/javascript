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
		
		function fun1()
		{
			var str = "010-123-1234";
			console.log(str.substring(0, 3));
			console.log(str.substring(4, 7));
			
			var lastIndex = str.lastIndexOf("-");
			console.log(str.slice(lastIndex+1));
			console.log(str.slice(8));
		}
		
		function fun2()
		{
			var str1 = "010-123-1234";
			var str2 = str1.replace("010", "011");
			console.log(str1);
			console.log(str2);
		}
		
		function fun3()
		{
			var str = "123456-4567890";
			console.log(str.charAt(7));
		}
		
		function fun4()
		{
			var str1 = "123456-4567890";
			var num = str1.split("-");
			console.log("nums.length : " + num.length);
			for(var i = 0; i < num.length; i++)
				{
					console.log(num[i]);
				}
			console.log(num[0]);
			console.log(num[1]);
			console.log(num[2]);
		}
		
		function fun5()
		{
			var var1 = "10";
			var var2 = 5;
			var result = parseInt(var1) + var2;
			console.log(result);
			
			var1 = "10.3";
			result = parseFloat(var1) + var2;
			console.log(result);
		}
		
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam09_string.jsp</h5>
		
		<div>
			<button onclick = "fun1()">문자열 잘라내기</button>
			<button onclick= "fun2()">문자열 교체</button>
			<button onclick= "fun3()">문자 뽑아내기</button>
			<button onclick= "fun4()">토큰으로 분리하기</button>
			<button onclick= "fun5()">문자열을 숫자로 변환</button>
		</div>
	</body>
</html>