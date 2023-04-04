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
<link
	href="https://fonts.googleapis.com/css2?family=Monoton&display=swap"
	rel="stylesheet">


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

@
keyframes neon { 0%, 100% {
	text-shadow: 0 0 10px #ef00e3a8, 0 0 20px #ef00e3a8, 0 0 20px #ef00e3a8,
		0 0 20px #ef00e3a8, 0 0 2px #fed128, 2px 2px 2px #806914;
	color: #f5efcb;
}

50


%
{
text-shadow


:


0


0


2px


#800e0b
,
0


0


5px


#800e0b
,
0


0


5px


#800e0b
,
0


0


5px


#800e0b
,
0


0


2px


#800e0b
,
4px


4px


2px


#40340a
;


color


:


#eda0d3
;


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

/* form */
body {
	background-color: gray;
}

body, div, form, input, select, textarea, label, p {
	padding: 0;
	margin: 0;
	outline: none;
	font-family: Roboto, Arial, sans-serif;
	font-size: 14px;
	color: #666;
	line-height: 22px;
}

h1 {
	position: absolute;
	margin: 0;
	font-size: 40px;
	color: #fff;
	z-index: 2;
	line-height: 83px;
}

textarea {
	width: calc(100% - 12px);
	padding: 5px;
}

.testbox {
	display: flex;
	justify-content: center;
	align-items: center;
	height: inherit;
	padding: 20px;
	background-image: url("Resources/img/bg1.jpg");
	background-size: cover;
}

form {
	width: 80%;
	padding: 20px;
	border-radius: 6px;
	background: #fff;
	box-shadow: 0 0 8px #669999;
}

.banner {
	position: relative;
	height: 350px;
	background-image: url("Resources/img/anim (1).gif");
	background-size: contain;
	display: flex;
	justify-content: center;
	align-items: top;
	text-align: center;
}

.banner::after {
	content: "";
	background-color: rgba(0, 0, 0, 0.2);
	position: absolute;
	width: 100%;
	height: 100%;
}

input, select, textarea {
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input {
	width: calc(100% - 10px);
	padding: 5px;
}

input[type="date"] {
	padding: 4px 5px;
}

textarea {
	width: calc(100% - 12px);
	padding: 5px;
}

.item:hover p, .item:hover i, .question:hover p, .question label:hover,
	input:hover::placeholder {
	color: #669999;
}

.item input:hover, .item select:hover, .item textarea:hover {
	border: 1px solid transparent;
	box-shadow: 0 0 3px 0 #669999;
	color: #669999;
}

.item {
	position: relative;
	margin: 10px 0;
}

.item span {
	color: red;
}

.week {
	display: flex;
	justfiy-content: space-between;
}

.colums {
	display: flex;
	justify-content: space-between;
	flex-direction: row;
	flex-wrap: wrap;
}

.colums div {
	width: 48%;
}

.item i {
	right: 1%;
	top: 30px;
	z-index: 1;
}

input[type=radio], input[type=checkbox] {
	display: none;
}

label.radio {
	position: relative;
	display: inline-block;
	margin: 5px 20px 15px 0;
	cursor: pointer;
}

.question span {
	margin-left: 30px;
}

.question-answer label {
	display: block;
}

label.radio:before {
	content: "";
	position: absolute;
	left: 0;
	width: 17px;
	height: 17px;
	border-radius: 50%;
	border: 2px solid #ccc;
}

input[type=radio]:checked+label:before, label.radio:hover:before {
	border: 2px solid #669999;
}

label.radio:after {
	content: "";
	position: absolute;
	top: 6px;
	left: 5px;
	width: 8px;
	height: 4px;
	border: 3px solid #669999;
	border-top: none;
	border-right: none;
	transform: rotate(-45deg);
	opacity: 0;
}

input[type=radio]:checked+label:after {
	opacity: 1;
}

.flax {
	display: flex;
	justify-content: space-around;
}

.btn-block {
	margin-top: 10px;
	text-align: center;
}

button {
	width: 150px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background: #669999;
	font-size: 16px;
	color: #fff;
	cursor: pointer;
}

button:hover {
	background: #a3c2c2;
}

@media ( min-width : 568px) {
	.name-item input, .name-item div {
		width: calc(50% - 20px);
	}
	.name-item div input {
		width: 97%;
	}
	.name-item div label {
		display: block;
		padding-bottom: 5px;
	}
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
					href="javascript:void(0);"><i class="fas fa-tachometer-alt"></i>Java
						Exam</a></li>
				<li class="nav-item"><a class="nav-link"
					href="javascript:void(0);"><i class="fas fa-tachometer-alt"></i>HTML
						Exam</a></li>
				<li class="nav-item"><a class="nav-link"
					href="javascript:void(0);"><i class="fas fa-tachometer-alt"></i>Java
						Result</a></li>
				<li class="nav-item"><a class="nav-link"
					href="javascript:void(0);"><i class="fas fa-tachometer-alt"></i>HTML
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

	<!-- form update staf -->

	<diV class=" d-flex align-items-center justify-content-center">

		<div class="testbox">
			<form action="deletefaculty" method="post">
				<div class="banner">
					<h1>Remove Faculty</h1>
				</div>
				<br /> <br />
				<div class="colums">
					<div class="item">
						<label for="id"> Enter ID to Delete Faculty<span>*</span></label> <input
							id="id" type="number" name="id" required />
					</div>
				</div>
				<div class="btn-block">
					<button type="submit">Submit</button>
				</div>
			</form>
		</div>
	</diV>
</body>
</html>