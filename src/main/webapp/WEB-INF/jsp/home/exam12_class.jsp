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
			class Car{
				constructor(model, year) {
					console.log("constructor() 실행")
					this.model = model;
					this.year = year;
					this.speed = 0;
					this._meters = 30;
				}
				
				//static Method
				static getModel(){
					return "횬다이 맨";
				}
				
				//instance Method
				setSpeed(speed){
					this.speed = speed;
				}
				
				getSpeed() {
					return this.speed;
				}
				
				//getter, setter
				get meters(){
					console.
					return _meters;
				}
				
				set meters(value){
					this._meters = value;
				}
			}
			
			//함수 정의
			function fun1(){
				//객체 생성
				var myCar = new Car("Bentz", 2020);
				//인스턴스 필드 읽기
				console.log(myCar.model);
				console.log(myCar.year);
				//인스턴스 메소드 호출
				myCar.setSpeed(100);
				console.log(myCar.getSpeed());
				var model = Car.getModel();
				console.log(model);
				//private 접근
				console.log(myCar._meters);
				//setter 사용
				myCar.meters  =90;
				//getter 사용
				console.log(myCar.meters);
			}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam12_class.jsp</h5>
		<button onclick = "fun1()">클라스</button>
	</body>
</html>