<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">

a span:nth-child(1) {
  position: absolute;
  top: 0;
  right: 0;
  width: 100%;
  height: 3px;
  background: linear-gradient(to right, #171618, #3bff3b);
  animation: animate1 2s linear infinite;
}

@keyframes animate1 {
  0% {
    transform: translateX(-100%);
  }
  100% {
    transform: translateX(100%);
  }
}

a span:nth-child(2) {
  position: absolute;
  top: 0;
  right: 0;
  height: 100%;
  width: 3px;
  background: linear-gradient(to bottom, #171618, #3bff3b);
  animation: animate2 2s linear infinite;
  animation-delay: 1s;
}
@keyframes animate2 {
  0% {
    transform: translateY(-100%);
  }
  100% {
    transform: translateY(100%);
  }
}

a span:nth-child(3) {
  position: absolute;
  bottom: 0;
  right: 0;
  width: 100%;
  height: 3px;
  background: linear-gradient(to left, #171618, #3bff3b);
  animation: animate3 2s linear infinite;
}

@keyframes animate3 {
  0% {
    transform: translateX(100%);
  }
  100% {
    transform: translateX(-100%);
  }
}

a span:nth-child(4) {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 3px;
  background: linear-gradient(to top, #171618, #3bff3b);
  animation: animate4 2s linear infinite;
  animation-delay: 1s;
}

@keyframes animate4 {
  0% {
    transform: translateY(100%);
  }
  100% {
    transform: translateY(-100%);
  }
}
</style>

</head>
<body>
	<div id="header">
		<jsp:include page="/Resources/navbar.jsp" />
	</div>

	<div class="card bg-dark">
		<img src="Resources/img/login.jpg" class="card-img" alt="...">
		<div class="card-img-overlay ">
			<a
				style="margin-top:13rem; margin-left:50rem; position: absolute; padding: 3px 6px; box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.4); color:silver; 
				text-decoration: none; text-transform: uppercase; letter-spacing: 4px; font: 100 28px consolas; overflow: hidden;"
				href="adminlogin.jsp" target="_self"> <span> </span> <span> </span> <span>
			</span> <span> </span> Admin Login
			</a><br><br>
			<a
				style="margin-top:15rem; margin-left:50rem; position: absolute; padding: 3px 6px; box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.4); color:fuchsia; text-decoration: none; text-transform: uppercase; letter-spacing: 4px; font: 100 28px consolas; overflow: hidden;"
				href="studentlogin.jsp" target="_self"> <span> </span> <span> </span> <span>
			</span> <span> </span> Student Login
			</a><br><br>
			<a
				style="margin-top:17rem; margin-left:50rem; position: absolute; padding: 3px 6px; box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.4); color:fuchsia ; text-decoration: none; text-transform: uppercase; letter-spacing: 4px; font: 100 28px consolas; overflow: hidden;"
				href="studentregister.jsp" target="_self"> <span> </span> <span> </span> <span>
			</span> <span> </span> Student Register
			</a>

		</div>
	</div>

<!-- Footer -->
	<div id="footer">
		<jsp:include page="Resources/footer.jsp" />
	</div>
</body>
</html>