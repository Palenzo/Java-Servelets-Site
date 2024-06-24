<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd:">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
int current = 0;
Connection connection = null;
String connectionUrl = "jdbc:mysql://localhost:3306/website_master";
ResultSet rs = null;
Statement statement = null;
try{
	Map<String,String> websiteItems = new HashMap<String,String>();
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionUrl,"root","Aditya@12345");
	statement = connection.createStatement();
	rs=statement.executeQuery("select * from page_master");
	while (rs.next()){
		websiteItems.put(rs.getString(2),rs.getString(3));
	}
	if(websiteItems.size()==0){
		out.println("No Data Found");
	}else{

%>

<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
.color-teal {
	color: teal;
}

.icon-lg {
	font-size: 50px;
}

.icon-sm {
	font-size: 25px;
}

.section-title {
	margin-bottom: 40px;
	font-size: 2.5rem;
	color: #333;
	padding-top: 20px;
	/* Added padding to separate the heading from the content */
	padding-bottom: 20px;
	/* Added padding to separate the heading from the content */
}

.unique-item {
	text-align: center;
	padding: 20px;
	border-radius: 8px;
	background-color: #f8f9fa;
	margin: 10px;
	transition: background-color 0.3s ease;
}

.unique-item:hover {
	background-color: #e9ecef;
}

.unique-icon {
	font-size: 3rem;
	margin-bottom: 10px;
	color: teal;
}

.unique-text {
	font-size: 1.1rem;
	color: #555;
}

.no-underline {
	text-decoration: none;
}
</style>
<title>SPW | Title Name</title>
</head>

<body>
	<header> <nav
		class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a href="#" class="navbar-brand"> <img
			src="<%= websiteItems.get("logo") %>" height="30px">

		</a>
		<button type="button" class="navbar-toggler" data-toggle="collapse"
			data-target="#navbar1">
			<i class="bi bi-list"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbar1">
			<div class="navbar-nav ml-auto">
				<a href="index.jsp" class="nav-item nav-link active">Home</a> <a
					href="#about-us" class="nav-item nav-link">About Us</a> <a
					href="#contact-us" class="nav-item nav-link">Contact Us</a>
			</div>
		</div>
	</div>
	</nav>
	<div id="carousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-target="#carousel" data-slide-to="0"
				class="active"></button>
			<button type="button" data-target="#carousel" data-slide-to="1"></button>
			<button type="button" data-target="#carousel" data-slide-to="2"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="<%= websiteItems.get("carousel_one") %>"
					class="d-block w-100" alt="Carousel 1" style="max-height: 100vh;" />
			</div>
			<div class="carousel-item">
				<img src="<%= websiteItems.get("carousel_two") %>"
					class="d-block w-100" alt="Carousel 2" style="max-height: 100vh;" />
			</div>
			<div class="carousel-item">
				<img src="<%= websiteItems.get("carousel_three") %>"
					class="d-block w-100" alt="Carousel 3" style="max-height: 100vh;" />
			</div>
		</div>
		<a class="carousel-control-prev" href="#carousel" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carousel" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	</header>
	<main class="mt-5"> <section class="container mt-4"
		id="about-us">
	<h6 class="display-5 text-center">About Us</h6>
	<div class="row mt-4 mb-4">
		<div class="col-md-5">
			<div class="container">
				<img src="<%= websiteItems.get("carousel_about_us") %>" class="d-block w-100"
					alt="About Us" />
			</div>
		</div>
		<div class="col-md-7">
			<p class="text-black-50">Lorem Ipsum is simply dummy text of the
				printing and typesetting industry. Lorem Ipsum has been the
				industry's standard dummy text ever since the 1500s, when an unknown
				printer took a galley of type and scrambled it to make a type
				specimen book. It has survived not only five centuries, but also the
				leap into electronic typesetting, remaining essentially unchanged.</p>
			<p>ed ut perspiciatis unde omnis iste natus error sit voluptatem
				accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
				quae ab illo inventore veritatis et quasi architecto beatae vitae
				dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
				aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
				eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est,
				qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit,</p>
		</div>
	</div>
	</section> <section class="container mt-5 mb-5">
	<h6 class="section-title text-center mt-5 mb-5">What Makes Us
		Unique</h6>
	<div class="row">
		<div class="col-md-4">
			<div class="unique-item">
				<i class="bi bi-shield-shaded unique-icon"></i>
				<p class="unique-text">Privacy First Approach</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="unique-item">
				<i class="bi bi-person unique-icon"></i>
				<p class="unique-text">Custom tailored user options</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="unique-item">
				<i class="bi bi-list unique-icon"></i>
				<p class="unique-text">Multiple Variants</p>
			</div>
		</div>
	</div>
	</section> <section id="team" class="container mt-5 mb-5">
	<h6 class="section-title text-center mt-5 mb-5">Our Innovative
		Team</h6>
	<div class="row">
		<div class="col-md-4 d-flex align-items-center justify-content-center">
			<div class="card" style="width: 300px">
				<img class="card-img-top" src="<%= websiteItems.get("team_1") %>"
					alt="Team Member 1">
				<div class="card-body text-center">
					<h4 class="card-title">Team Member 1</h4>
					<p class="card-text">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown</p>
					<i class="bi bi-facebook icon-sm m-2"></i> <i
						class="bi bi-instagram icon-sm m-2"></i> <i
						class="bi bi-linkedin icon-sm m-2"></i>
				</div>
			</div>
		</div>
		<div class="col-md-4 d-flex align-items-center justify-content-center">
			<div class="card" style="width: 300px">
				<img class="card-img-top" src="<%= websiteItems.get("team_2") %>"
					alt="Team Member 2">
				<div class="card-body text-center">
					<h4 class="card-title">Team Member 2</h4>
					<p class="card-text">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown</p>
					<i class="bi bi-facebook icon-sm m-2"></i> <i
						class="bi bi-instagram icon-sm m-2"></i> <i
						class="bi bi-linkedin icon-sm m-2"></i>
				</div>
			</div>
		</div>
		<div class="col-md-4 d-flex align-items-center justify-content-center">
			<div class="card" style="width: 300px">
				<img class="card-img-top" src="<%= websiteItems.get("team_3") %>"
					alt="Team Member 3">
				<div class="card-body text-center">
					<h4 class="card-title">Team Member 3</h4>
					<p class="card-text">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown</p>
					<i class="bi bi-facebook icon-sm m-2"></i> <i
						class="bi bi-instagram icon-sm m-2"></i> <i
						class="bi bi-linkedin icon-sm m-2"></i>
				</div>
			</div>
		</div>
	</div>
	</section> <section id="contact-us" class="container mt-5 mb-5">
	<h6 class="section-title text-center mt-5 mb-5">Contact Us</h6>
	<div class="row">
		<div class="col-md-6">
			<div class="container mt-3">
				<p class="text-muted text-center fs-3">Our Contact Info</p>
				<p class="text-muted text-center fs-4">Our Email</p>
				<p class="text-black-50 text-center fs-5">someone@somebody.com</p>
				<p class="text-muted text-center fs-4">Our Phone No</p>
				<p class="text-black-50 text-center fs-5">9133283239</p>
				<p class="text-muted text-center fs-4">Our Address</p>
				<p class="text-black-50 text-center fs-5">HSR Layout, Banglore</p>

			</div>
		</div>
		<div class="col-md-6">
			<div class="container">
				<p class="text-muted text-center fs-3">You can also write to us</p>
				<div class="container">
					<div class="card shadow">
						<div class="card-body">
							<form>
								<div class="form-group">
									<label for="name" class="form-label">Enter your Name</label> <input
										type="text" class="form-control" name="name" id="name">
								</div>
								<div class="form-group">
									<label for="name" class="form-label">Enter your Email</label> <input
										type="text" class="form-control" name="email" id="email">
								</div>
								<div class="form-group">
									<label for="name" class="form-label">Enter your Subject</label>
									<input type="text" class="form-control" name="subjet"
										id="subject">
								</div>
								<div class="form-group">
									<label for="name" class="form-label">Enter your Message</label>
									<textarea class="form-control" name="message" id="message"></textarea>
								</div>
								<div class="form-group Text-center mt -3">
									<input type="submit" class="btn btn-outline-dark mt-3"
										value="Send Message">
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>


	</div>

	</section> </main>
	<footer class="bg-dark mt-5">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="container mt-5">
					<img src="<%= websiteItems.get("logo") %>" height="30px"
						class="bg-white">
					<p class="text-white">rem Ipsum is simply dummy text of the
						printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="container mt-5">
					<p class="text-white fs-5">Quick Links</p>
					<ul>
						<li><a href="#" class="text-white no-underline">About Us</a>
						</li>
						<li><a href="#" class="text-white no-underline">Contact
								Us</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
<%
}
}catch(Exception e){
out.println("Exception Occured"+e);
}
%>
