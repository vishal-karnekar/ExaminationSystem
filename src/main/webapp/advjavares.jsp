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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monoton&display=swap" rel="stylesheet">
	

<style>
/* logo e-exam */
.wrapper.two {
    background-color: #2c0101;
    font-size: 6rem;
    font-family: "Play", sans-serif;
}
.neon h3 {
    margin: 1rem auto;
    animation: neon 1s ease infinite;
}
@keyframes neon {
    0%,
    100% {
        text-shadow: 0 0 10px #ef00e3a8, 0 0 20px #ef00e3a8, 0 0 20px #ef00e3a8, 0 0 20px #ef00e3a8, 0 0 2px #fed128, 2px 2px 2px #806914;
        color: #f5efcb;
    }
    50% {
        text-shadow: 0 0 2px #800e0b, 0 0 5px #800e0b, 0 0 5px #800e0b, 0 0 5px #800e0b, 0 0 2px #800e0b, 4px 4px 2px #40340a;
        color: #eda0d3;
    }
}
/*  */
@import url('https://fonts.googleapis.com/css?family=Roboto');

body {
	font-family: 'Roboto', sans-serif;
}

* {
	margin: 0;
	padding: 0;
}

i {
	margin-right: 10px;
}
/*----------bootstrap-navbar-css------------*/
.navbar-logo {
	padding: 10px;
	color: #fff;
}

.navbar-mainbg {
	background-color: #007b5e !important;
	padding: 0px;
}

#navbarSupportedContent {
	overflow: hidden;
	position: relative;
}

#navbarSupportedContent ul {
	padding: 0px;
	margin: 0px;
}

#navbarSupportedContent ul li a i {
	margin-right: 10px;
}

#navbarSupportedContent li {
	list-style-type: none;
	float: left;
}

#navbarSupportedContent ul li a {
	color: rgba(255, 255, 255, 0.5);
	text-decoration: none;
	font-size: 15px;
	display: block;
	padding: 20px 20px;
	transition-duration: 0.6s;
	transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
	position: relative;
}

#navbarSupportedContent>ul>li.active>a {
	color: #007b5e !important;
	background-color: transparent;
	transition: all 0.7s;
}

#navbarSupportedContent a:not(:only-child):after {
	content: "\f105";
	position: absolute;
	right: 20px;
	top: 10px;
	font-size: 14px;
	font-family: "Font Awesome 5 Free";
	display: inline-block;
	padding-right: 3px;
	vertical-align: middle;
	font-weight: 900;
	transition: 0.5s;
}

#navbarSupportedContent .active>a:not(:only-child):after {
	transform: rotate(90deg);
}

.hori-selector {
	display: inline-block;
	position: absolute;
	height: 100%;
	top: 0px;
	left: 0px;
	transition-duration: 0.6s;
	transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
	background-color: #fff;
	border-top-left-radius: 15px;
	border-top-right-radius: 15px;
	margin-top: 10px;
}

.hori-selector .right, .hori-selector .left {
	position: absolute;
	width: 25px;
	height: 25px;
	background-color: #fff;
	bottom: 10px;
}

.hori-selector .right {
	right: -25px;
}

.hori-selector .left {
	left: -25px;
}

.hori-selector .right:before, .hori-selector .left:before {
	content: '';
	position: absolute;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	background-color: #007b5e !important;
}

.hori-selector .right:before {
	bottom: 0;
	right: -25px;
}

.hori-selector .left:before {
	bottom: 0;
	left: -25px;
}

@media ( min-width : 992px) {
	.navbar-expand-custom {
		-ms-flex-flow: row nowrap;
		flex-flow: row nowrap;
		-ms-flex-pack: start;
		justify-content: flex-start;
	}
	.navbar-expand-custom .navbar-nav {
		-ms-flex-direction: row;
		flex-direction: row;
	}
	.navbar-expand-custom .navbar-toggler {
		display: none;
	}
	.navbar-expand-custom .navbar-collapse {
		display: -ms-flexbox !important;
		display: flex !important;
		-ms-flex-preferred-size: auto;
		flex-basis: auto;
	}
}

@media ( max-width : 991px) {
	#navbarSupportedContent ul li a {
		padding: 12px 30px;
	}
	.hori-selector {
		margin-top: 0px;
		margin-left: 10px;
		border-radius: 0;
		border-top-left-radius: 25px;
		border-bottom-left-radius: 25px;
	}
	.hori-selector .left, .hori-selector .right {
		right: 10px;
	}
	.hori-selector .left {
		top: -25px;
		left: auto;
	}
	.hori-selector .right {
		bottom: -25px;
	}
	.hori-selector .left:before {
		left: -25px;
		top: -25px;
	}
	.hori-selector .right:before {
		bottom: -25px;
		left: -25px;
	}
}
/*  */
.styled-table {
    border-collapse: collapse;
     border-radius: 10px;
     overflow: hidden;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 15);
    text-align: center;
}

.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}

.styled-table th,
.styled-table td {
    padding: 20px 25px;
    text-align: center;
    
}

.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-custom navbar-mainbg">
		<a class="navbar-brand m-0" href="index.jsp"> <img
			src="Resources/img/tick.png" alt="" width="60" height=auto>
		</a>
		<div class="wrapper two" style="background-color: rgba(0, 0, 0, 0);">
			<div class="neon">
				<h3 style="font-family: 'Monoton', cursive;">E-EXAM</h3>
			</div>
		</div>
		<button class="navbar-toggler" type="button"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars text-white"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<div class="hori-selector">
					<div class="left"></div>
					<div class="right"></div>
				</div>
				<li class="nav-item"><a class="nav-link" href="index.jsp"><i
						class="fas fa-tachometer-alt"></i>Home</a></li>

				<li class="nav-item active"><a class="nav-link"
					href="studentlist.jsp"><i class="fas fa-tachometer-alt"></i>Student
						List</a></li>
				<li class="nav-item"><a class="nav-link" href="addfaculty.jsp"><i
						class="far fa-calendar-alt"></i>Add Faculty</a></li>
				<li class="nav-item"><a class="nav-link" href="facultylist.jsp"><i
						class="far fa-chart-bar"></i> Faculty List</a></li>
				<li class="nav-item"><a class="nav-link"
					href="quepaper.jsp"><i class="fas fa-tachometer-alt"></i>Que Paper</a></li>
				
				<li class="nav-item"><a class="nav-link"
					href="javares.jsp"><i class="fas fa-tachometer-alt"></i>Java
						Result</a></li>
				<li class="nav-item"><a class="nav-link"
					href=advjavares.jsp><i class="fas fa-tachometer-alt"></i>Adv Java
						Result</a></li>
						<li class="nav-item"><a class="nav-link"
					href="springres.jsp"><i class="fas fa-tachometer-alt"></i>Spring
						Result</a></li>
				<li class="nav-item"><a class="nav-link"
					href="adminprofile.jsp"><i class="fas fa-tachometer-alt"></i>Admin
						Panel </a></li>
			</ul>
		</div>
	</nav>

	<script type="text/javascript">
		//---------Responsive-navbar-active-animation-----------
		function test() {
			var tabsNewAnim = $('#navbarSupportedContent');
			var selectorNewAnim = $('#navbarSupportedContent').find('li').length;
			var activeItemNewAnim = tabsNewAnim.find('.active');
			var activeWidthNewAnimHeight = activeItemNewAnim.innerHeight();
			var activeWidthNewAnimWidth = activeItemNewAnim.innerWidth();
			var itemPosNewAnimTop = activeItemNewAnim.position();
			var itemPosNewAnimLeft = activeItemNewAnim.position();
			$(".hori-selector").css({
				"top" : itemPosNewAnimTop.top + "px",
				"left" : itemPosNewAnimLeft.left + "px",
				"height" : activeWidthNewAnimHeight + "px",
				"width" : activeWidthNewAnimWidth + "px"
			});
			$("#navbarSupportedContent").on("click", "li", function(e) {
				$('#navbarSupportedContent ul li').removeClass("active");
				$(this).addClass('active');
				var activeWidthNewAnimHeight = $(this).innerHeight();
				var activeWidthNewAnimWidth = $(this).innerWidth();
				var itemPosNewAnimTop = $(this).position();
				var itemPosNewAnimLeft = $(this).position();
				$(".hori-selector").css({
					"top" : itemPosNewAnimTop.top + "px",
					"left" : itemPosNewAnimLeft.left + "px",
					"height" : activeWidthNewAnimHeight + "px",
					"width" : activeWidthNewAnimWidth + "px"
				});
			});
		}
		$(document).ready(function() {
			setTimeout(function() {
				test();
			});
		});
		$(window).on('resize', function() {
			setTimeout(function() {
				test();
			}, 500);
		});
		$(".navbar-toggler").click(function() {
			$(".navbar-collapse").slideToggle(300);
			setTimeout(function() {
				test();
			});
		});

		// --------------add active class-on another-page move----------
		jQuery(document).ready(
				function($) {
					// Get current path and find target link
					var path = window.location.pathname.split("/").pop();

					// Account for home page with empty path
					if (path == '') {
						path = 'index.html';
					}

					var target = $('#navbarSupportedContent ul li a[href="'
							+ path + '"]');
					// Add active class to target link
					target.parent().addClass('active');
				});
	</script>
<!--  -->

	<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/project"  user="root" password=""/>
<sql:query dataSource="${db}"   var="rs">
select * from advjava_res;
</sql:query>

<table class="styled-table center">

 <thead>
        <tr>
            <th>Student Name</th>
            <th>Marks</th>
             <th>Percentage</th>
            
                        
                       
                        
           </tr>
    </thead>
 <tbody>   
<c:forEach var="table" items="${rs.rows}">
<tr>
<td><c:out value="${table.stu_name}"/></td>
<td><c:out value="${table.stu_marks}"/></td>
<td><c:out value="${table.stu_per}"/></td>


</tr>
</c:forEach>
</tbody>
</table>

<!--  -->


	<div id="footer">
		<jsp:include page="Resources/footer.jsp" />
	</div>
</body>
</html>