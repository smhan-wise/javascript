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
		{	//배열 생성
			var arr1 = ["Bentz", "Volvo", "BMW"];
			var arr2 = new Array("Bentz", "Volvo", "BMW");
			console.log(arr1.length);
			console.log(arr2.length);
			
			// length 속성
			for(var i =0; i<arr1.length; i++)
				{
					console.log(arr1[i]);
					console.log(arr2[i]);
				}
			// 배열 인덱싱
			arr1[0] ="벤츠";
			arr1[1] = "볼보";
			arr1[2] = "BMW";
			console.log(arr1)
			
			//객체 배열 
			var arr4 = [{mid:"summer", mname:"하여름"}, {mid:"fall", mname:"추낙엽"}, {mid:"winter", mname:"동장군"}];
			console.log(arr4);
			console.log(arr4[1].mname);
			
			//요소 추가
			var arr5 =[];
			arr5[0] = "파이썬";
			arr5[1] = "자바스크립트";
			arr5.push("자바");
			console.log(arr5);
			
			//반복처리
			var arr6 = ["Banana", "Orange", "Apple", "Mango"];
			var length = arr6.length;
			for(var i = 0; i<length; i++)
				{
					console.log(arr6);
					arr6.pop();
				}
			
			arr6.forEach(function(value, index) {
				console.log("value:" + value + ", index:" +index)
			});
			
			var arr7 = ["Banana", "Orange", "Apple", "Mango"];
			arr7.splice(2, 0, "Lemon", "Kiwi"); //삽입
			arr7.splice(1, 1, "오렌지", "Kiwi"); //교체
			console.log(arr7);
		}
		
		function fun2()
		{
			var now = new Date();
			console.log(now.getFullYear()+"-"+(now.getMonth()+1)+"-"+now.getDate());
		}
		
		function fun3()
		{
			var obj ={
					mid:"summer",
					mname:"홍길동",
					mage:30,
					hobby:["movie", "gaming", "trip"],
					adult:true
			};
			
			var strJson = JSON.stringify(obj);
			console.log(strJson);
			
			var obj2 = JSON.parse(strJson);
			console.log(obj2);
			console.log(obj2.mname);
			console.log(obj2.hobby);
		}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam10_bulitin_object.jsp</h5>
		
		<div>
			<button onclick = "fun1()">배열</button>
			<button onclick = "fun2()">날짜</button>
			<button onclick = "fun3()">JSON 문자열 처리</button>
		</div>
	</body>
</html>