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
	
	
<style type="text/css">

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

body {
	
}

#ques {
	background: #f2f4f8;
	display: flex;
	justify-content: space-around;
	align-items: center;
	flex-wrap: wrap;
	font-family: "Open Sans";
	font-size: 19px;
	line-height: 2.0;
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

	<div class="container">
		<div
			style="margin-left: 0px; margin-bottom: 0px; text-align: center; background-image: linear-gradient(to right, #DA16CB, #3DFA3A);">
			<h2>Online Examination System</h2>
			<h3>IACSD</h3>

			<h4 style="margin-top: 10px">Post Graduation Examination-2023</h4>


			<div class="container"
				style="text-align: center; background-image: linear-gradient(to right, #DA16CB, #3DFA3A);">
				<div class="row">
					<div class="col-sm">
					

						<p>Maximum Marks : 10</p>
					</div>
					<div class="col-sm">
						<p>
							Date :

							<script>
								date = new Date().toLocaleDateString();
								document.write(date);
							</script>
						</p>

					</div>

				</div>
			</div>


		</div>
		<div id="ques" class="container"
			style="background-image: linear-gradient(to right, #1c87c9, #8ebf42);">


			<form method="post" action="javaexam"
				style="margin-top: 50px;">
				
Q1.<label>Who invented Java Programming?</label><br>
a.<input type="radio" name="q1" value="a">Guido van Rossum<br>
b.<input type="radio" name="q1" value="b">James Gosling<br>
c.<input type="radio" name="q1" value="c">Dennis Ritchie<br>
d.<input type="radio" name="q1" value="d">Arunachal<br>
<br><br>

Q2.<label>Which component is used to compile, debug and execute the java programs?</label><br>
a.<input type="radio" name="q2" value="a">JRE<br>
b.<input type="radio" name="q2" value="b">JIT<br>
c.<input type="radio" name="q2" value="c">JDK<br>
d.<input type="radio" name="q2" value="d">JVM<br>
<br><br>
Q3.<label>Which one of the following is not a Java feature?</label><br>
a.<input type="radio" name="q3" value="a">Object-oriented<br>
b.<input type="radio" name="q3" value="b"> Use of pointers<br>
c.<input type="radio" name="q3" value="c">Portable<br>
d.<input type="radio" name="q3" value="d">Dynamic and Extensible<br>
<br><br>

Q4.<label>Which environment variable is used to set the java path?
</label><br>
a.<input type="radio" name="q4" value="a">MAVEN_Path<br>
b.<input type="radio" name="q4" value="b">JavaPATH<br>
c.<input type="radio" name="q4" value="c">JAVA<br>
d.<input type="radio" name="q4" value="d">JAVA_HOME<br>
<br><br>

Q5.<label>Which of the following is not an OOPS concept in Java?</label><br>
a.<input type="radio" name="q5" value="a">Polymorphism<br>
b.<input type="radio" name="q5" value="b">Inheritance<br>
c.<input type="radio" name="q5" value="c">Compilation<br>
d.<input type="radio" name="q5" value="d">Encapsulation<br>
<br><br>

Q6.<label> What is not the use of this keyword in Java?</label><br>
a.<input type="radio" name="q6" value="a">Referring to the instance variable when a local variable has the same name<br>
b.<input type="radio" name="q6" value="b">Passing itself to the method of the same class<br>
c.<input type="radio" name="q6" value="c">Passing itself to another method<br>
d.<input type="radio" name="q6" value="d">Calling another constructor in constructor chaining<br>
<br><br>

Q7.<label>Which of the following is a type of polymorphism in Java Programming?</label><br>
a.<input type="radio" name="q7" value="a">Multiple polymorphism<br>
b.<input type="radio" name="q7" value="b"> Compile time polymorphism<br>
c.<input type="radio" name="q7" value="c"> Multilevel polymorphism<br>
d.<input type="radio" name="q7" value="d">Execution time polymorphism<br>
<br><br>

Q8.<label>What is the extension of compiled java classes?</label><br>
a.<input type="radio" name="q8" value="a">.txt<br>
b.<input type="radio" name="q8" value="b">.js<br>
c.<input type="radio" name="q8" value="c">.class<br>
d.<input type="radio" name="q8" value="d">.java<br>
<br><br>

Q9.<label>Which exception is thrown when java is out of memory?</label><br>
a.<input type="radio" name="q9" value="a">MemoryError<br>
b.<input type="radio" name="q9" value="b">OutOfMemoryError<br>
c.<input type="radio" name="q9" value="c">MemoryOutOfBoundsException<br>
d.<input type="radio" name="q9" value="d">MemoryFullException<br>
<br><br>

Q10.<label>Which of the below is not a Java Profiler?</label><br>
a.<input type="radio" name="q10" value="a">JProfiler<br>
b.<input type="radio" name="q10" value="b">Eclipse Profile<br>
c.<input type="radio" name="q10" value="c">JVM<br>
d.<input type="radio" name="q10" value="d">JConsole<br>
<br><br>				
				
				</form>

		</div>
	</div>
</body>
</html>