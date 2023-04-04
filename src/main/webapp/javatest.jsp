<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
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
						<p>Subject : Core Java</p>

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

						<p>
							Time remaining: <span id="timer">60:00</span>
						</p>

						<script>
							var timeleft = 60 * 60; // number of seconds
							var downloadTimer = setInterval(
									function() {
										timeleft--;
										var minutes = Math.floor(timeleft / 60);
										var seconds = timeleft % 60;
										document.getElementById("timer").innerHTML = minutes
												+ ":" + seconds;
										if (timeleft <= 0)
											clearInterval(downloadTimer);
									}, 1000);
						</script>
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

<input type="submit" value="Submit" style="padding-left:10px;padding-right:10px;background-color:green; height:40px">&nbsp
<input type="reset" value="Reset" style="margin-bottom:60px;padding-left:10px;padding-right:10px;background-color:green; height:40px">
				
				
				</form>

		</div>
	</div>
</body>
</html>