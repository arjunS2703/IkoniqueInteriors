<!DOCTYPE html>
<html>
<head>
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body class=animsition>
<aside class="menu-sidebar d-none d-lg-block" style="background-color: #e6e7ee;">
	<div class="logo" style="background-color: #e6e7ee;">
		<a href="#"> <img src="images/icon/logo1.png" alt="Cool Admin" />
		</a>
	</div>
	<div class="menu-sidebar__content js-scrollbar1">
		<nav class="navbar-sidebar">
			<ul class="list-unstyled navbar__list">
				<li class="active has-sub"><a href="admin.jsp"> <i
						class="fas fa-home"></i>Home
				</a> 
				<li><a href="visualizer.jsp"> <i class="fas fa-bullseye"></i>Visualizer
				</a></li>		
				<li class="has-sub"><a class="js-arrow" href="#"> <i
						class="fas  fa-caret-down"></i>Manage
				</a>
					<ul class="list-unstyled navbar__sub-list js-sub-list">
						<li><a href="managecustomer.jsp"><i
								class="fas"></i>Customer Profile</a>
						</li>
						<li><a href="managedesigner.jsp"><i
								class="fas"></i>Designer Profile</a>
						</li>
						<li ><a href="#"><i
								class="fas"></i>Product</a>
						</li>
						<li ><a href="managefeedback.jsp"><i
								class="fas"></i>Feedback</a>
						</li>
						<li ><a href="socialmediamanagement.jsp"><i
								class="fas"></i>Social Media</a>
						</li>
					</ul>
					</li>
				<li><a href="#"> <i class="fas fa-bar-chart-o"></i>Chart
				</a></li>
				<!-- <li><a href="SelectUserDetails"> <i class="fas fa-table"></i>Tables
				</a></li> -->
				<li class="has-sub"><a class="js-arrow" href="#"> <i
						class="fas  fa-caret-down"></i>Manage Tables
				</a>
					<ul class="list-unstyled navbar__sub-list js-sub-list">
						<li><a href="SelectUserDetails"><i
								class="fas"></i>Customer Table</a>
						</li>
						<li><a href="designerTable.jsp"><i
								class="fas"></i>Designer Table</a>
						</li>
						<li><a href="productTable.jsp"><i
								class="fas"></i>Product Table</a>
						</li>
						<li><a href="categoryTable.jsp"><i
								class="fas"></i>Category Table</a>
						</li>
						<li><a href="subcategoryTable.jsp"><i
								class="fas"></i>Sub-Category Table</a>
						</li>
						<li><a href="offertable.jsp"><i
								class="fas"></i>Offer Table</a>
						</li>
					</ul>
				</li>
						
				<li><a href="#"> <i class="fas fa-credit-card"></i>Payment Status
				</a></li>
				<li><a href="#"> <i class="fas  fa-truck"></i>Track Orders
				</a></li>
				<li><a href="#"> <i class="fas fa-file-text"></i>Generate Report
				</a></li>
				<li><a href="aboutus.jsp"> <i class="fas fa-exclamation"></i>About Us
				</a></li>


			</ul>
		</nav>
	</div>
</aside>
<%@include file="commonjs.jsp"%>
</body>
</html>