<%@page import="com.ikonique.bean.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Login</title>
<style>
#form .indicator1 {
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid .indicator1 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid .indicator1 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

#form .indicator2 {
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid1 .indicator2 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid1 .indicator2 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

#form .indicator3 {
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid2 .indicator3 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid2 .indicator3 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

.forget {
	top: 30px;
}
</style>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />

<!-- Fontawesome -->
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">


<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>
<% HttpSession httpSession = request.getSession(false);
	User user = null;   
	if(null!=httpSession){
	   user = (User)httpSession.getAttribute("loginBean");
   }
%>
<body class="animsition">
	<div class="page-wrapper">
		<%-- 		<%@include file="customermobilesidebar.jsp"%> --%>
		<%-- 		<%@include file="customersidebar.jsp"%> --%>
		<%-- 		<%@include file="customerheader.jsp"%> --%>
		<div class="page-container">
			<div class="main-content">
				<h1 align="center" style="margin-top: 50px;">Change Password</h1>
				<section class="min-vh-80 d-flex bg-primary align-items-center">
					<form action="UpdatePassword" class="w-50 ml-10" class="box"
						class="form" id="form" method="post" onsubmit="return login()">
						<input type="hidden" name="oldpassdata" id="oldpassdata" value="<%=user.getPassword()%>">
						<div class="form-group mb-3 ml-10 inputBox">
							<label for="oldpass">Old Password</label> <input type="hidden"
								name="user_id" value="<%=String.valueOf(user.getUser_id())%>">
								<input type="hidden"
								name="role_id" value="<%=String.valueOf(user.getRole_id())%>">
							<br> <input type="password" name="oldpass"
								class="form-control" id="oldpass" autocomplete="off"
								aria-describedby="emailHelp" onkeyup="validate2();"> <span
								class="indicator3"></span>
						</div>
						
						<div class="form-group mb-3 ml-10 inputBox">
							<label for="newpass">New Password</label> <input type="hidden"
								name="user_id" value="<%=String.valueOf(user.getUser_id())%>">
							<br> <input type="password" name="newpass"
								class="form-control" id="newpass" autocomplete="off"
								aria-describedby="emailHelp" onkeyup="validate();"> <span
								class="indicator1"></span>
						</div>

						<div class="form-group mb-3 ml-10">
							<label for="cpass">Confirm Password</label> <input
								type="password" name="cpass" class="form-control" id="cpass"
								onkeyup="validate1();"> <span class="indicator2"></span>
							<span class="small" id="p"></span>
							<h6 class="small">
								* Password Must Contain 8-20 Character<br>* Password must
								Contain Atleast one: <br>Special Character(@#$&!)<br>Number[0-9]<br>An
								Uppercase Charater[A-Z]<br>A Lowercase Character[a-z]
							</h6>
						</div>

						<div align="center">

							<button type="submit" name="submit"
								class="btn btn-primary form-group ml-10">Submit</button>
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
		
		function validate(){
			const form= document.getElementById('form');
			const newpass= document.getElementById('newpass').value;
			const pattern1=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/
			const oldpass = document.getElementById('oldpass').value;
			const oldpassdata = document.getElementById('oldpassdata').value;
				
				if(newpass.match(pattern1))
				{
					form.classList.add('valid')
					form.classList.remove('invalid')
				}
				else
				{
					form.classList.add('invalid')
					form.classList.remove('valid')
				}	
				if(newpass.match(oldpass))
				{
					form.classList.add('invalid')
					form.classList.remove('valid')
				}
				else
				{
					form.classList.add('valid')
					form.classList.remove('invalid')
				}
				
				if(newpass == "")
				{
					form.classList.remove('invalid')
					form.classList.remove('valid')
				}
			}
			
			function validate1()
			{
				const form= document.getElementById('form');
				const cpass = document.getElementById('cpass').value;
				const newpass= document.getElementById('newpass').value;
				const oldpass = document.getElementById('oldpass').value;
				const oldpassdata = document.getElementById('oldpassdata').value;
				
				if(cpass.match(newpass))
				{
					form.classList.add('valid1')
					form.classList.remove('invalid1')
				}
				else
				{
					form.classList.add('invalid1')
					form.classList.remove('valid1')
				}
				if(cpass == "")
				{
					form.classList.remove('invalid1')
					form.classList.remove('valid1')
				}
			}
			
			function validate2()
			{
				const form= document.getElementById('form');
				const newpass= document.getElementById('newpass').value;
				const pattern1=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/
				const oldpass = document.getElementById('oldpass').value;
				const oldpassdata = document.getElementById('oldpassdata').value;
				
				if(oldpass.match(newpass))
				{
					form.classList.add('invalid2')
					form.classList.remove('valid2')
				}
				else
				{
					form.classList.add('valid2')
					form.classList.remove('invalid2')
				}
				if(oldpass.match(oldpassdata))
				{
					form.classList.add('valid2')
					form.classList.remove('invalid2')
				}
				else
				{
					form.classList.add('invalid2')
					form.classList.remove('valid2')
				}
				if(oldpass == "")
				{
					form.classList.remove('invalid2')
					form.classList.remove('valid2')
				}
			}
			
			function login()
			{
				const form= document.getElementById('form');
				const oldpassdata = document.getElementById('oldpassdata').value;
				const oldpass = document.getElementById('oldpass');
				const newpass= document.getElementById('newpass').value;
				const cpass= document.getElementById('cpass').value;
				
				
				const pattern1=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/
				
				if(newpass.match(pattern1) && cpass.match(pattern1) && cpass.match(newpass) && oldpass.match(oldpassdata))
					{
// 						window.location="/customer.jsp";
						return true;
					}
				else{
					return false;
// 					window.location="/triallogin.jsp";
				}
			}
			

$('#newpass, #cpass').on('keyup', function () {
  if ($('#newpass').val() == $('#cpass').val()) {
    $('#p').html('Password Matched').css('color', 'green');
  } else 
    $('#p').html('Confirm Password Must Match With New Password').css('color', 'red');
});
		
		</script>
</body>
</html>