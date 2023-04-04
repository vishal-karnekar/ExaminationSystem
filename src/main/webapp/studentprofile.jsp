<%@page import="com.pojo.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
		
<style type="text/css">
body {
	background-image: url('Resources/img/bg2.png');
}
/* card */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap')
	;

* {
	font-family: 'Poppins', sans-serif;
}

.container .card {
	position: relative;
	width: 320px;
	height: 450px;
	background: #232323;
	border-radius: 20px;
	overflow: hidden;
}

.container .card:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #9bdc28;
	clip-path: circle(150px at 80% 20%);
	transition: 0.5s ease-in-out;
}

.container .card:hover:before {
	clip-path: circle(300px at 80% -20%);
}

.container .card:after {
	content: 'E-Exam';
	position: absolute;
	top: 4%;
	left: -10%; font-size : 9em;
	font-weight: 800;
	font-style: italic;
	color: rgba(255, 255, 25, 0.05);
	left: -10%;
	font-size: 9em;
	font-size: 9em;
}

.container .card .imgBx {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	z-index: 10000;
	width: 100%;
	height: 220px;
	transition: 0.5s;
}

.container .card:hover .imgBx {
	top: 0%;
	transform: translateY(0%);
}

.container .card .imgBx img {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%) rotate(-25deg);
	width: 270px;
}

.container .card .contentBx {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 100px;
	text-align: center;
	transition: 1s;
	z-index: 10;
}

.container .card:hover .contentBx {
	height: 210px;
}

.container .card .contentBx h2 {
	position: relative;
	font-weight: 600;
	letter-spacing: 1px;
	color: #fff;
	margin: 0;
}

.container .card .contentBx a {
	display: inline-block;
	padding: 10px 20px;
	background: #fff;
	border-radius: 4px;
	margin-top: 10px;
	text-decoration: none;
	font-weight: 600;
	color: #111;
	opacity: 0;
	transform: translateY(50px);
	transition: 0.5s;
	margin-top: 0;
}

.container .card:hover .contentBx a {
	opacity: 1;
	transform: translateY(0px);
	transition-delay: 0.75s;
}
</style>
</head>
<body>

	<!--navbar  -->
	<div id="header">
		<jsp:include page="/Resources/navbar.jsp" />
	</div>

	<!-- cards -->
	
<%-- 
	<%   
  
Student user=(Student)session.getAttribute("userdetails");  
out.print("Hello "+ user.getName());  
  
%>   --%>



	<div style="position: relative;"
		class="container row justify-content-around m-5">
		<div class="card col-3">
			<div class="imgBx">
				<img src="Resources/img/java.png">
			</div>
			<div class="contentBx">
				<h2>JAVA</h2>
				<br> <br> <a href="javatest.jsp">Start Test</a>
			</div>
		</div>

		<div class="card col-3">
			<div class="imgBx">
				<img src="Resources/img/ajava.png">
			</div>
			<div class="contentBx">
				<h2>Adv JAVA</h2>
				<br> <br> <a href="adjavatest.jsp">Start Test</a>
			</div>
		</div>

		<div class="card col-3">
			<div class="imgBx">
				<img src="Resources/img/spring.png">
			</div>
			<div class="contentBx">
				<h2>Spring MVC</h2>
				<br> <br> <a href="springtest.jsp">Start Test</a>
			</div>
		</div>
	</div>


	<!--footer  -->
	<div id="footer">
		<jsp:include page="Resources/footer.jsp" />
	</div>
</body>
</html>