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
				car = {
						name:"Bentz", 
						model:"세단", 
						weight:850, 
						color:"흰색", 
						speed:0, 
						start: function(){
							console.log("시동 부릉부릉");
						},
						drive: function(){
							console.log(this.speed+"로 달립니다");
						},
						setspeed: function(speed){
							this.speed = speed
						},
						brake:function(){
							console.log("자동차 멈춤");
							this.stop()
						},
						stop: function(){
							console.log("시동 끈다");
						}						
					};
				}
				
				function fun2(){
					console.log(car.name);
					console.log(car.model);
					console.log(car.weight);
					console.log(car.color);
					console.log(car.speed);
					
					car.start();
					car.speed = 68;
					
					car.drive();
					
					car.brake();
					
					car.stop();
				}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam04_operator.jsp</h5>
		<div>
			<button onclick = "fun1()" class= "btn btn-success btn-sm">fun() 호출1</button>
			<button onclick = "fun2()" class= "btn btn-info btn-sm">fun() 호출2</button>
		
		</div>
	</body>
</html>