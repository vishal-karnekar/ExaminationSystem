<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap"
	rel="stylesheet">
<!--  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Lilita+One&display=swap"
	rel="stylesheet">
	<!--  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rampart+One&display=swap" rel="stylesheet">

<style type="text/css">
body {
	background-image: url('Resources/img/bg03.jpg');
}

.carousel-caption {
	margin-bottom: 25rem;
}

.carousel-caption p {
	font-family: 'Crete Round', serif;
	color: black;
	font-size: 40px;
	opacity: .8;
	font-weight: bold;
}

.carousel-caption h5 {
	font-family: 'Lilita One', cursive;
	color: red;
	font-size: 100px;
	opacity: .3;
}
</style>
</head>
<body>
	<!--navbar  -->
	<div id="header">
		<jsp:include page="/Resources/navbar.jsp" />
	</div>
	<!-- slider -->
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="Resources/img/slider (1).jpg" class="d-block w-100"
					alt="...">
				<div class="carousel-caption d-none d-md-block text-start ">
					<h5>First slide label</h5>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="Resources/img/slider (2).jpg" class="d-block w-100"
					alt="...">
				<div class="carousel-caption d-none d-md-block text-start">
					<h5>Second slide label</h5>
					<p>Some representative placeholder content for the second
						slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="Resources/img/slider (3).jpg" class="d-block w-100"
					alt="...">
				<div class="carousel-caption d-none d-md-block text-start">
					<h5>Third slide label</h5>
					<p>Some representative placeholder content for the third slide.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<!--  -->
	<div class="">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-sm-5 align-self-center m-2">
				<h1 style="font-family: 'Russo One', sans-serif; color: orange;">Ready
					to prepare, master</h1>

				<h1 style="font-family: 'Russo One', sans-serif; color: gray;">&
					ace your next crucial exam?</h1>
				<br>
				<p style="font-family: 'Secular One', sans-serif;">E-Exam is an
					AI-powered Ed-tech that helps students prepare, master, and ace
					their next crucial exams. Leveraging the smart use of Artificial
					Intelligence to hand out accurate marking, score grading</p>

			</div>
			<div class="col-sm-5 m-2">
				<img src="Resources/img/exam.gif" style="width: 95%; height: auto">
			</div>
		</div>
		<hr>
	</div>
	<!--  -->
	<div class="row m-3" style="font-family: 'Alkatra', cursive;">
		<div class="col-sm-3 border border-success border border-4 shadow-lg p-3 mb-5 bg-body rounded">
			<div class="card">
				<div class="card-body row" style="padding: 6px; height: 80px">
					<div class="col-4">
						<img src="Resources/img/i1.svg" style="width: 90%; height: auto">
					</div>
					<div class="col-8">
						<h5 class="card-title">15000+</h5>
						<p class="card-text">Verified Students</p>
					</div>

				</div>
			</div>
		</div>
		<div class="col-sm-3 border border-danger border border-4 shadow-lg p-3 mb-5 bg-body rounded">
			<div class="card">
				<div class="card-body row" style="padding: 6px; height: 80px">
					<div class="col-4">
						<img src="Resources/img/i2.svg" style="width: 90%; height: auto">
					</div>
					<div class="col-8">
						<h5 class="card-title">12000+</h5>
						<p class="card-text">Verified Exams</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3 border border-success border border-4 shadow-lg p-3 mb-5 bg-body rounded">
			<div class="card">
				<div class="card-body row" style="padding: 6px; height: 80px">
					<div class="col-4">
						<img src="Resources/img/i3.svg" style="width: 90%; height: auto">
					</div>
					<div class="col-8">
						<h5 class="card-title">8000+</h5>
						<p class="card-text">Practice Exams</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3 border border-danger border border-4 shadow-lg p-3 mb-5 bg-body rounded">
			<div class="card">
				<div class="card-body row" style="padding: 6px; height: 80px">
					<div class="col-4">
						<img src="Resources/img/i4.svg" style="width: 90%; height: auto">
					</div>
					<div class="col-8">
						<h5 class="card-title">100+</h5>
						<p class="card-text">Experienced Faculties</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	<div class="row">
		<h2 class="text-center"
			style="font-family: 'Goblin One', cursive; font-weight: bold; color: maroon;">
			Benefits Of E-EXAM Online Exam System</h2>
		<p class="text-center text-primary">The online exam system is the
			methodology used to examine students output for their skills and
			abilities. The examination is the detailed inspection of the persons
			knowledge or proficiency in a subject or profession.</p>
		<div class="col-2"></div>
		<div class="col-4">
			<ul style="font-family: 'Sniglet', cursive;">
				<li>Accessibility and convenience</li>
				<li>Time and travel savings</li>
				<li>Cost reduction</li>
				<li>Immediate Grades</li>
			</ul>

		</div>
		<div class="col-2"></div>
		<div class="col-4">
			<ul style="font-family: 'Sniglet', cursive;">
				<li>More objective results</li>
				<li>Improved technological skills</li>
				<li>Making tests more dynamic</li>
				<li>Obtaining parameterizable data</li>
			</ul>
		</div>


	</div>

	<hr>
	<div class="row position-relative mb-2">
		<div class="col-1">
		</div>
		<div class="col-5">
			<img src="Resources/img/animation.gif" class="object-cover object-top w-100">
		</div>
		<div class="col-6">
			<h2 style="font-family: 'Rampart One', cursive;color:#6290F0;font-weight: bold">ONLINE EXAMINATION & Institutes/School/College MANAGEMENT</h2>
			<br>
			<h4 style="font-family: 'Fondamento', cursive;">We develop native mobile app for Schools, Universities & Colleges on Android and iOS platform</h4>
		</div>
		

	</div>



	<!--footer  -->
	<div id="footer">
		<jsp:include page="Resources/footer.jsp" />
	</div>

</body>
</html>