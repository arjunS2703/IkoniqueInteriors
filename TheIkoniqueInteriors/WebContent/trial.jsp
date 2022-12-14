<%@page import="com.ikonique.bean.Area"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
<link type="text/css" href="css/login1css.css" rel="stylesheet">

<!-- Fontawesome -->
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">


<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>
<jsp:include page="/AreaRegistration" />
<%
	List<Area> area = (List) request.getAttribute("area");
%>
<body class="animsition">
	<div class="page-wrapper">
		<%-- 		<%@include file="customermobilesidebar.jsp"%> --%>
		<%-- 		<%@include file="customersidebar.jsp"%> --%>
		<%-- 		<%@include file="customerheader.jsp"%> --%>
		<div class="page-container">
			<div class="main-content">
				<h1 align="center" style="margin-top: 50px;">Registration</h1>
				<br>
				<section class="min-vh-80 d-flex align-items-center">
					<form class="w-50 ml-10" class="box"
						class="form" id="form" method="post" onsubmit=" login()"
						enctype="multipart/form-data">
						<div class="form-group mb-3 ml-10 inputBox">
							Choose Your <b>Role</b><br>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="exampleRadios1" id="exampleRadios21" value="option21"
									checked> <label class="form-check-label"
									for="exampleRadios21"> <b>Interior Designer</b>
								</label> <input class="form-check-input" type="radio"
									name="exampleRadios1" id="exampleRadios11" value="option11">
								<label class="form-check-label" for="exampleRadios11"> <b>Customer</b>
								</label>

							</div>
						</div>
						<div class="form-group mb-3 ml-10 inputBox">
							<label for="fname">First Name</label> <input type="text"
								name="fname" class="form-control" id="fname" autocomplete="off"
								aria-describedby="emailHelp" onkeyup="validate2();"> <span
								class="indicator3"></span>
						</div>
						<div class="form-group mb-3 ml-10 inputBox">
							<label for="lname">Last Name</label> <input type="text"
								name="lname" class="form-control" id="lname" autocomplete="off"
								aria-describedby="emailHelp" onkeyup="validate3();"> <span
								class="indicator4"></span>
						</div>
						<div class="form-group mb-3 ml-10 inputBox">
							<label for="add">Address</label>
							<textarea rows="5" name="address" class="form-control" id="add"
								autocomplete="off" aria-describedby="emailHelp"
								onkeyup="validate4();"></textarea>
							<span class="indicator5"></span>
						</div>


						<div class="form-group mb-3 ml-10 inputBox">
							<label for="areaname">Area</label> <select name="area"
								class="form-control" id="area" aria-describedby="emailHelp"
								onchange="validate6()">
								<option value="0" selected>select</option>
								<%
									for (Area place : area) {
								%>

								<option value="<%=place.getArea_id()%>"><%=place.getArea_name()%></option>

								<%
									}
								%>
							</select> <span class="indicator8"></span>

						</div>

						<!-- <div class="form-group mb-3 ml-10 inputBox">
							<label for="pincode">Pincode</label> <input type="number"
								name="pin" class="form-control" id="pin" autocomplete="off"
								aria-describedby="emailHelp" onkeyup="validate7();"> <span
								class="indicator9"></span>
						</div> -->
						<div class="form-group mb-3 ml-10 inputBox vfees">
							<label for="visitingfees">Visiting Fees</label> <input
								type="number" name="vfees1" class="form-control" id="vfees"
								autocomplete="off" aria-describedby="emailHelp"
								onkeyup="validate8();"> <span id="vfees2"
								class="indicator10"></span>
						</div>



						<div class="form-group mb-3 ml-10 inputBox">
							<label for="mobilenumber">Mobile Number</label> <input
								type="text" name="mno" class="form-control" id="mno"
								autocomplete="off" aria-describedby="emailHelp"
								onkeyup="validate5();"> <span class="indicator6"></span>
						</div>
						<div class="form-group mb-3 ml-10 inputBox">
							Gender<br>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="exampleRadios" id="exampleRadios1" value="Male">
								<label class="form-check-label" for="exampleRadios1">
									Male </label> <input class="form-check-input" type="radio"
									name="exampleRadios" id="exampleRadios2" value="Female">
								<label class="form-check-label" for="exampleRadios2">
									Female </label>
							</div>
						</div>
						<div class="form-group mb-3 ml-10 inputBox">
							<label for="email">Email address</label> <input type="text"
								name="email" class="form-control" id="email" autocomplete="off"
								aria-describedby="emailHelp" onkeyup="validate();"> <span
								class="indicator1"></span>
						</div>
						<div class="form-group mb-3 ml-10">
							<label for="password">Password</label> <input type="password"
								name="password" class="form-control" id="pass"
								onkeyup="validate1();"> <span class="indicator2"></span>
							<h6 class="small">
								* Password Must Contain 8-20 Character<br>* Password must
								Contain Atleast one: <br>Special Character(@#$&!)<br>Number[0-9]<br>An
								Uppercase Charater[A-Z]<br>A Lowercase Character[a-z]
							</h6>
						</div>
						<div align="center">
							<!-- 							<button type="submit" name="submit" -->
							<!-- 								class="btn btn-primary form-group ml-10">Register</button> -->
							<button type="submit" name="submit"
							class="btn form-group btn-primary ml-10">Register</button>
							<div class="modal fade" id="modal-default" tabindex="-1"
								role="dialog" aria-labelledby="modal-default" aria-hidden="true" data-backdrop="static" data-keyboard="false">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="h6 modal-title mb-0" id="modal-title-default">Terms
												of Service</h2>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
<!-- 												<span aria-hidden="true">??</span> -->
											</button>
										</div>
										<div class="modal-body">
											<p>Register Failed!!!!!!!!</p>
											<p>The European Union???s General Data Protection
												Regulation (G.D.P.R.) goes into effect on May 25 and is
												meant to ensure a common set of data rights in the European
												Union. It requires organizations to notify users as soon as
												possible of high-risk data breaches that could personally
												affect them.</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Ok</button>
<!-- 											<button type="button" -->
<!-- 												class="btn btn-primary text-danger ml-auto" -->
<!-- 												data-dismiss="modal">Close</button> -->
										</div>
									</div>
								</div>
							</div>
							<div class="modal fade" id="modal" tabindex="-1"
								role="dialog" aria-labelledby="modal-default" aria-hidden="true" data-backdrop="static" data-keyboard="false">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="h6 modal-title mb-0" id="modal-title-default">Terms
												of Service</h2>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
<!-- 												<span aria-hidden="true">??</span> -->
											</button>
										</div>
										<div class="modal-body">
											<p>Register Succefully!!!!!!!!</p>
											<p>The European Union???s General Data Protection
												Regulation (G.D.P.R.) goes into effect on May 25 and is
												meant to ensure a common set of data rights in the European
												Union. It requires organizations to notify users as soon as
												possible of high-risk data breaches that could personally
												affect them.</p>
										</div>
										<div class="modal-footer">
											<a href="login.jsp" type="button"
												class="btn btn-primary text-danger ml-auto"
												>I Got It</a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="register-link ml-10" align="center">
							<h6>
								<a href="visitor.jsp" class="color">Skip Register</a>
							</h6>
						</div>

					</form>
				</section>

				<!-- Core -->
				<script src="neuro/vendor/jquery/dist/jquery.min.js"></script>
				<script src="neuro/vendor/popper.js/dist/umd/popper.min.js"></script>
				<script src="neuro/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
				<script src="neuro/vendor/headroom.js/dist/headroom.min.js"></script>

				<!-- Vendor JS -->
				<script src="neuro/vendor/onscreen/dist/on-screen.umd.min.js"></script>
				<script src="neuro/vendor/nouislider/distribute/nouislider.min.js"></script>
				<script
					src="neuro/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
				<script src="neuro/vendor/waypoints/lib/jquery.waypoints.min.js"></script>
				<script src="neuro/vendor/jarallax/dist/jarallax.min.js"></script>
				<script src="neuro/vendor/jquery.counterup/jquery.counterup.min.js"></script>
				<script
					src="neuro/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
				<script
					src="neuro/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
				<script src="neuro/vendor/prismjs/prism.js"></script>

				<script async defer src="https://buttons.github.io/buttons.js"></script>

				<!-- Neumorphism JS -->
				<script src="neuro/assets/js/neumorphism.js"></script>
				<%@include file="commonjs.jsp"%>
			</div>
		</div>
	</div>

	<script>
		// 		form.addEventListener('submit',(event)=> {
		// 			 event.preventDefault();

		// 			validate();
		// 			validate1();
		// 		})

		// 		const sendData =(sRate,count) =>{
		// 	if(sRate == count)
		// 		{	
		// 			swal( "","log in is successful!!","valid"); 
		// 		}
		// }

		// 		const successMsg = () => {

		// 			 var formCon =document.getElementsByClassName('form-group');

		// 			var count=(formCon.length)-2;

		// 			for(var i=0;i< formCon.length;i++)
		// 				{
		// 					if(formCon[i].className == 'form-group valid'){
		// 						var sRate=0+i;
		// 						console.log(sRate);
		// 						sendData(sRate,count);

		// 					}
		// 					else
		// 						{
		// 							return false;
		// 						}
		// 				} 

		// 		}
		
		$(document).ready(function(){

    $('#form').on('submit', function() {
        event.preventDefault();
        $.ajax({
            url:"RegistrationServlet",
            method:"POST",
            data:$('#form').serialize(),
            success:function(data)
            {
                if(data ==="null")
                {
                	 $('#modal-default').modal('show');
                	 $('#modal').modal('hide');
                }
                else
                {
                	$('#modal').modal('show');
                	$('#modal-default').modal('hide'); 
                }
            }
        })
    });
});

		function validate() {
			const form = document.getElementById('form');
			const email = document.getElementById('email').value;
			const pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/

			if (email.match(pattern)) {
				form.classList.add('valid')
				form.classList.remove('invalid')
			} else {
				form.classList.add('invalid')
				form.classList.remove('valid')
			}
			if (email == "") {
				form.classList.remove('invalid')
				form.classList.remove('valid')
			}
		}

		function validate1() {
			const form = document.getElementById('form');
			const pass = document.getElementById('pass').value;
			const pattern1 = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/

			if (pass.match(pattern1) && pass.length >= 8 && pass.length <= 20) {
				form.classList.add('valid1')
				form.classList.remove('invalid1')
			} else {
				form.classList.add('invalid1')
				form.classList.remove('valid1')
			}
			if (pass == "") {
				form.classList.remove('invalid1')
				form.classList.remove('valid1')
			}
		}

		function login() {
			const form = document.getElementById('form');
			const email = document.getElementById('email').value;
			const pass = document.getElementById('pass').value;
			const pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/
			const pattern1 = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/

			const fname = document.getElementById('fname').value;
			const pattern2 = " ";

			const lname = document.getElementById('lname').value;
			const pattern3 = "  ";

			const add = document.getElementById('add').value;
			const pattern4 = " ";

			const mno = document.getElementById('mno').value;
			const pattern5 = /(7|8|9)\d{9}/

			

			const pin = document.getElementById('pin').value;
			const pattern7 = "^[1-9]{1}[0-9]{2}\\s{0, 1}[0-9]{3}$";

			const vfees = document.getElementById('vfees').value;
			const pattern8 = " ";

			
			const area = document.getElementById('area').value; 
		    var strUser = area.options[area.selectedIndex].value;

			if (email.match(pattern) && pass.match(pattern1) 
					&& pass.length >= 8 && pass.length <= 20
					&& fname != pattern2 && lname != pattern3
					&& add != pattern4 && mno.match(pattern5)
					&& strUser!=0 && pin.match(pattern7)) {

				window.location = "/customer.jsp";
				//return true; 
				//response.sendRedirect("customer.jsp");
			} else {
				//return false;
				window.location = "/register.jsp";
			}
		}

		function validate2() {
			const form = document.getElementById('form');
			const fname = document.getElementById('fname').value;
			const pattern = " ";

			if (fname != pattern) {
				form.classList.add('valid2')
				form.classList.remove('invalid2')
			} else {
				form.classList.add('invalid2')
				form.classList.remove('valid2')
			}
			if (fname == "") {
				form.classList.remove('invalid2')
				form.classList.remove('valid2')
			}
		}
		function validate3() {
			const form = document.getElementById('form');
			const lname = document.getElementById('lname').value;
			const pattern = "  ";

			if (lname != pattern) {
				form.classList.add('valid3')
				form.classList.remove('invalid3')
			} else {
				form.classList.add('invalid3')
				form.classList.remove('valid3')
			}
			if (lname == "") {
				form.classList.remove('invalid3')
				form.classList.remove('valid3')
			}
		}
		function validate4() {
			const form = document.getElementById('form');
			const add = document.getElementById('add').value;
			const pattern = " ";

			if (add != pattern) {
				form.classList.add('valid4')
				form.classList.remove('invalid4')
			} else {
				form.classList.add('invalid4')
				form.classList.remove('valid4')
			}
			if (add == "") {
				form.classList.remove('invalid4')
				form.classList.remove('valid4')
			}
		}
		function validate5() {
			const form = document.getElementById('form');
			const mno = document.getElementById('mno').value;
			const pattern = /(7|8|9)\d{9}/

			if (mno.match(pattern) && mno.length == 10) {
				form.classList.add('valid5')
				form.classList.remove('invalid5')
			} else {
				form.classList.add('invalid5')
				form.classList.remove('valid5')
			}
			if (mno == "") {
				form.classList.remove('invalid5')
				form.classList.remove('valid5')
			}
		}

		function validate6() {
			
			/* const form = document.getElementById('form');
			const area = document.getElementById('area').value;
			const pattern = " ";

			if (area != pattern) {
				form.classList.add('valid6')
				form.classList.remove('invalid6')
			} else {
				form.classList.add('invalid6')
				form.classList.remove('valid6')
			}
			if (area == "") {
				form.classList.remove('invalid6')
				form.classList.remove('valid6')
			}
			 */
			 
			const form = document.getElementById('form');
			/*const area = document.getElementById('area').value; 
			const value=area.options[area.selectedIndex].value; */
			/* console.log(area); */
// 			var strUser = area.options[area.selectedIndex].value;

// 			 var strUser1 = e.options[e.selectedIndex].text; 

			var e=document.getElementById('area');
			
			var value=e.options[e.selectedIndex].value;
			
			
			if (value!='0') {
				
				form.classList.add('valid6')
				form.classList.remove('invalid6')
			} else {
				form.classList.add('invalid6')
				form.classList.remove('valid6')
			}
// 			if (area == "") {
// 				form.classList.remove('invalid6')
// 				form.classList.remove('valid6')
// 			}
			
			
		}

		/* function validate7() {
			
		
			const form = document.getElementById('form');
			const pin = document.getElementById('pin').value;
			const pattern = "^[1-9]{1}[0-9]{2}[0-9]{3}$";

			if (pin.match(pattern) && pin.length == 6) {
				form.classList.add('valid7')
				form.classList.remove('invalid7')
			} else {
				form.classList.add('invalid7')
				form.classList.remove('valid7')
			}
			if (pin == "") {
				form.classList.remove('invalid7')
				form.classList.remove('valid7')
			}
		}
 */
		function validate8() {
			const form = document.getElementById('form');
			const vfees = document.getElementById('vfees').value;
			const pattern = " ";

			if (vfees != pattern) {
				form.classList.add('valid8')
				form.classList.remove('invalid8')
			} else {
				form.classList.add('invalid8')
				form.classList.remove('valid8')
			}
			if (vfees == "") {
				form.classList.remove('invalid8')
				form.classList.remove('valid8')
			}
		}

		$("input[name='exampleRadios1']").change(function() {

			if ($(this).val() == "option21") {
				$(".vfees").show();
			} else {
				$(".vfees").hide();
				/* $("#fname").value=""; 
				$("#lname").value=""; 
				$("#add").value=''; 
				$("#pin").value=''; 
				$("#exampleRadios1").value=''; 
				$("#exampleRadios2").value=''; 
				$("#mno").value=''; 
				$("#email").value=''; 
				$("#area").value=''; 
				$("#pass").value=''; 
				$("#vfees").value='0'; 
				 */
				document.getElementById("fname").value = "";
				document.getElementById("lname").value = "";
				document.getElementById("add").value = "";
				document.getElementById("pin").value = "";
				/*        document.getElementById("exampleRadios1").value="";
				       document.getElementById("exampleRadios2").value=""; */
				document.getElementById("mno").value = "";
				document.getElementById("email").value = "";
				document.getElementById("area").value = "";
				document.getElementById("pass").value = "";
				document.getElementById("vfees").value = "0";

				form.classList.remove('invalid1')
				form.classList.remove('valid1')

				form.classList.remove('invalid2')
				form.classList.remove('valid2')

				form.classList.remove('invalid3')
				form.classList.remove('valid3')

				form.classList.remove('invalid4')
				form.classList.remove('valid4')

				form.classList.remove('invalid5')
				form.classList.remove('valid5')

				form.classList.remove('invalid6')
				form.classList.remove('valid6')

				form.classList.remove('invalid7')
				form.classList.remove('valid7')

				form.classList.remove('invalid8')
				form.classList.remove('valid8')

				form.classList.remove('invalid')
				form.classList.remove('valid')

			}

		});
	</script>
</body>


</html>