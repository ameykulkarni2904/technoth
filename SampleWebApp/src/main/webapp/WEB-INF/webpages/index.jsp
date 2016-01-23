<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
    	<!-- meta charec set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<!-- Page Title -->
        <title>TechnothonX</title>		
		<!-- Meta Description -->
        <meta name="description" content="Blue One Page Creative HTML5 Template">
        <meta name="keywords" content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
       
		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Google Font -->
		
		<link href='<c:url value="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800"/>' rel='stylesheet' type='text/css'>

		<!-- CSS
		================================================== -->
		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css" />">
		<!-- Twitter Bootstrap css -->
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
		<!-- jquery.fancybox  -->
        <link rel="stylesheet" href="<c:url value="/resources/css/jquery.fancybox.css"/>">
		<!-- animate -->
        <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>">
		<!-- Main Stylesheet -->
        <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
		<!-- media-queries -->
        <link rel="stylesheet" href="<c:url value="/resources/css/media-queries.css"/>">

		<!-- Modernizer Script for old Browsers -->
        <script src="<c:url value="/resources/js/modernizr-2.6.2.min.js"/>"></script>

		<!--- new css-->
		<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="<c:url value="/resources/css/reset.css"/>"> <!-- CSS reset -->
	<link rel="stylesheet" href="<c:url value="/resources/csscss/style.css"/>"> <!-- Gem style -->
	<script src="<c:url value="/resources/js/modernizr.js"/>"></script> <!-- Modernizr -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script> <!-- Gem jQuery -->
	
	<!-- new css -->
	 <link rel="stylesheet" href="<c:url value="/resources/css/timercss.css"/>"> <!-- CSS reset -->

	
    </head>
	
    <body id="body">
	
		<!-- preloader -->
		<%-- <div id="preloader">
			<img src="<c:url value="/resources/img/preloader.gif"/>" alt="Preloader">
		</div> --%>
		<!-- end preloader -->

        <!-- 
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar-fixed-top navbar">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-bars fa-2x"></i>
                    </button>
					<!-- /responsive nav button -->
					
					<!-- logo -->
                    <a class="navbar-brand" href="#body">
						<h1 id="logo">
							<img src="<c:url value="/resources/img/pslLogo.png"/>" alt="TechnothonX">
						</h1>
					</a>
					<!-- /logo -->
                </div>

				
				
				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li class="current"><a href="#body">Home</a></li>
                        <li><a href="#features">Features</a></li>
                        <li><a href="#works">Gallary</a></li>
                        <li><a href="#team">Rounds</a></li>
						<li><a href="#contact">Forum</a></li>
                       
						<li><nav class="main-nav">
							<a class="cd-signin" href="#0" >Sign in</a></nav>
						</li>
							<li><nav class="main-nav">
							<a class="cd-signup" href="#0" >Sign up</a>
						</nav>
						</li>
                    </ul>
                </nav>
				<!-- /main nav -->
				
            </div>
			
			
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
		
		
		
        <!--
        Home Slider
        ==================================== -->
		
		<section id="slider">
		
		
			
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			
				<!-- Indicators bullet -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				</ol>
				<!-- End Indicators bullet -->				
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					
					<!-- single slide -->
					<div class="item active" style="background-image: url(resources/img/banner.jpg);">
					
					<!-- timer -->
		<h1>Countdown Clock</h1>
<div id="clockdiv">
  <div>
    <span class="days"></span>
    <div class="smalltext">Days</div>
  </div>
  <div>
    <span class="hours"></span>
    <div class="smalltext">Hours</div>
  </div>
  <div>
    <span class="minutes"></span>
    <div class="smalltext">Minutes</div>
  </div>
  <div>
    <span class="seconds"></span>
    <div class="smalltext">Seconds</div>
  </div>
</div>
		
		
		<!-- end timer -->
					
					
						<div class="carousel-caption">
							<h2 data-wow-duration="700ms" data-wow-delay="500ms" class="wow bounceInDown animated"><span> TechnothonX</span>!</h2>
							<h3 data-wow-duration="1000ms" class="wow slideInLeft animated"><span class="color">create</span> <span class="color">innovate</span> <span class="color">compete</span></h3>
							<p data-wow-duration="1000ms" class="wow slideInRight animated">We are a team of professionals</p>
							
							<ul class="social-links text-center">
								<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
							</ul>
						</div>
					</div>
					<!-- end single slide -->
					
					<!-- single slide -->
					<div class="item" style="background-image: url(resources/img/banner.jpg);">
						<div class="carousel-caption">
							<h2 data-wow-duration="500ms" data-wow-delay="500ms" class="wow bounceInDown animated"><span> TechnothonX</span>!</h2>
							<h3 data-wow-duration="500ms" class="wow slideInLeft animated"><span class="color">create</span> <span class="color">innovate</span> <span class="color">compete</span></h3>
							<p data-wow-duration="500ms" class="wow slideInRight animated">We are a team of professionals</p>
							
							<ul class="social-links text-center">
								<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
							</ul>
						</div>
					</div>
					<!-- end single slide -->
					
				</div>
				<!-- End Wrapper for slides -->
				
			</div>
			
			
			 <!-- new code -->
			 <div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0">Sign in</a></li>
				<li><a href="#0">New account</a></li>
			</ul>

			<div id="cd-login"> <!-- log in form -->
				<!-- <form class="cd-form" method="GET" action="http://10.44.206.112:8080/TechnothonX/login"> -->
				<sf:form modelAttribute="admin" method="POST">
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">E-mail</label>
						<sf:input path="empID" class="full-width has-padding has-border" id="signin-email" type="text" placeholder="E-mail"/>
						<span class="cd-error-message">Please enter correct email !</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">Password</label>
						<sf:input path="pwd" class="full-width has-padding has-border" id="signin-password" type="text"  placeholder="Password"/>
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Please enter valid password </span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked>
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="submit" value="Login">
					</p>
				</sf:form>
				
				<p class="cd-form-bottom-message"><a href="#0">Forgot your password?</a></p>
				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-login -->

			<div id="cd-signup"> <!-- sign up form -->
				<sf:form modelAttribute="admin" method="POST" class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">Username</label>
						<sf:input path="name" class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username"/>
						<span class="cd-error-message">Please enter correct Username !</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">E-mail</label>
						<sf:input path="emailID" class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail"/>
						<span class="cd-error-message">Please enter correct email !</span>
					</p>
					
					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-eid">Employee ID</label>
						<sf:input path="empID" class="full-width has-padding has-border" id="signup-email" type="text" placeholder="E-mail"/>
						<span class="cd-error-message">Please enter correct employee ID !</span>
					</p>
					
					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">Password</label>
						<sf:input path="pwd" class="full-width has-padding has-border" id="signup-password" type="text"  placeholder="Password"/>
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Please enter valid password </span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms">
						<label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Create account">
					</p>
				</sf:form>

				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-signup -->

			<div id="cd-reset-password"> <!-- reset password form -->
				<p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Please enter correct email !</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
			</div> <!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
		</div> <!-- cd-user-modal-container -->
	</div> <!-- cd-user-modal -->
			 <!-- new code end -->
			
		</section>
		
        <!--
        End Home SliderEnd
        ==================================== -->
		
        <!--
        Features
        ==================================== -->
		
		<section id="features" class="features">
			<div class="container">
				<div class="row">
				
					<div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="500ms">
						<h2>Features</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>

					<!-- service item -->
					<div class="col-md-4 wow fadeInLeft" data-wow-duration="500ms">
						<div class="service-item">
							<div class="service-icon">
								<img src="<c:url value="/resources/img/in.png"/>" style="width: 88px">
							</div>
							
							<div class="service-desc">
								<h3>Create</h3>
								<p>Creativity is putting your imagination to work, and it's produced the most extraordinary results in human culture.
 <br>-Ken Robinson
</p>
							</div>
						</div>
					</div>
					<!-- end service item -->
					
					<!-- service item -->
					<div class="col-md-4 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="500ms">
						<div class="service-item">
							<div class="service-icon">
								<img src="<c:url value="/resources/img/inv3.jpg"/>" style="width: 88px">
							</div>
							
							<div class="service-desc">
								<h3>Innovate</h3>
								<p>Capital isn't so important in business. Experience isn't so important. You can get both these things. What is important is ideas. If you have ideas, you have the main asset you need, and there isn't any limit to what you can do with your business and your life."
<br>— Harvey Firestone</p>
							</div>
						</div>
					</div>
					<!-- end service item -->
					
					<!-- service item -->
					<div class="col-md-4 wow fadeInRight" data-wow-duration="500ms"  data-wow-delay="900ms">
						<div class="service-item">
							<div class="service-icon">
								<img src="<c:url value="/resources/img/comp1.png"/>" style="width: 88px">
							</div>
							
							<div class="service-desc">
								<h3>compete</h3>
								<p>Battle is the most magnificent competition in which a human being can indulge. It brings out all that is best; it removes all that is base. All men are afraid in battle. The coward is the one who lets his fear overcome his sense of duty. Duty is the essence of manhood.
<br>-George S. Patton</p>
							</div>
						</div>
					</div>
					<!-- end service item -->
						
				</div>
			</div>
		</section>
		
        <!--
        End Features
        ==================================== -->
		
		
        <!--
        Our Works
        ==================================== -->
		
		<section id="works" class="works clearfix">
			<div class="container">
				<div class="row">
				
					<div class="sec-title text-center">
						<h2>Gallary</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>
					
					<!-- <div class="sec-sub-title text-center">
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
					</div>
					
					<div class="work-filter wow fadeInRight animated" data-wow-duration="500ms">
						<ul class="text-center">
							<li><a href="javascript:;" data-filter="all" class="active filter">All</a></li>
							<li><a href="javascript:;" data-filter=".branding" class="filter">Branding</a></li>
							<li><a href="javascript:;" data-filter=".web" class="filter">web</a></li>
							<li><a href="javascript:;" data-filter=".logo-design" class="filter">logo design</a></li>
							<li><a href="javascript:;" data-filter=".photography" class="filter">photography</a></li>
						</ul>
					</div>
					
				</div>
			</div>
			
			<div class="project-wrapper">
			
				<figure class="mix work-item branding">
					<img src="img/works/item-1.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="img/works/item-1.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item web">
					<img src="img/works/item-2.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="img/works/item-2.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item logo-design">
					<img src="img/works/item-3.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="img/works/item-3.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item photography">
					<img src="img/works/item-4.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="img/works/item-4.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
			
				<figure class="mix work-item branding">
					<img src="img/works/item-5.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="img/works/item-5.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item web">
					<img src="img/works/item-6.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="img/works/item-6.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item logo-design">
					<img src="img/works/item-7.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="img/works/item-7.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item photography">
					<img src="img/works/item-8.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="img/works/item-8.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
			</div> -->
		

		</section>
		
        <!--
        End Our Works
        ==================================== -->
		
        <!--
        Meet Our Team
        ==================================== -->		
		
		<section id="team" class="team">
			<div class="container">
				<div class="row">
		
					<div class="sec-title text-center wow fadeInUp animated" data-wow-duration="700ms">
						<h2>Rounds</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>
					
					<div class="sec-sub-title text-center wow fadeInRight animated" data-wow-duration="500ms">
					</div>

					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms">
						<div class="member-thumb">
							<img src="<c:url value="/resources/img/team/ds2.jpg"/>" alt="Team Member" class="img-responsive">
							<figcaption class="overlay">
								<h5>Judges round 1  </h5>
								
			
							</figcaption>
						</div>
						<h4>Milestone 1</h4>
						
					</figure>
					<!-- end single member -->
					
					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
						<div class="member-thumb">
							<img src="<c:url value="/resources/img/team/cd5.png"/>" alt="Team Member" class="img-responsive">
							<figcaption class="overlay">
								<h5>Judges round 2 </h5>
								
							</figcaption>
						</div>
						<h4>Milestone 2</h4>
						
					</figure>
					<!-- end single member -->
					
					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="600ms">
						<div class="member-thumb">
							<img src="<c:url value="/resources/img/team/cdf.jpg"/>" alt="Team Member" class="img-responsive">
							<figcaption class="overlay">
								<h5>Code Freeze!</h5>
								
							</figcaption>
						</div>
						<h4>Milestone 3 </h4>
						
					</figure>
					<!-- end single member -->
					
					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
						<div class="member-thumb">
							<img src="<c:url value="/resources/img/team/ps3.jpeg"/>" alt="Team Member" class="img-responsive">
							<figcaption class="overlay">
								<h5>Final Presentations</h5>
								
							</figcaption>
						</div>
						<h4>Milestone  4</h4>
						
					</figure>
					<!-- end single member -->
					
				</div>
			</div>
		</section>
		
        <!--
        End Meet Our Team
        ==================================== -->
		
		
		
		<!--
        Contact Us
        ==================================== -->		
		
		<section id="contact" class="contact">
			<div class="container">
				<div class="row mb50">
				
					<div class="sec-title text-center mb50 wow fadeInDown animated" data-wow-duration="500ms">
						<h2>Let’s Discuss</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>
					
					<div class="sec-sub-title text-center wow rubberBand animated" data-wow-duration="1000ms">
					
					</div>
					
					<!-- contact address -->
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 wow fadeInLeft animated" data-wow-duration="500ms">
						<div class="contact-address">
							<h3>Persistent Systems Limited</h3>
							<p>Plot No 39, Phase I, </p>
							<p>Rajiv Gandhi IT Park, Hinjewadi,</p>
							<p> Maharashtra 411057</p>
						</div>
					</div> 
					<!-- end contact address -->
					
					<!-- contact form -->
					<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12 wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="300ms">
						<div class="contact-form">
							<h3>Say hello!</h3>
							<form action="#" id="contact-form">
								<div class="input-group name-email">
									<div class="input-field">
										<input type="text" name="name" id="name" placeholder="Name" class="form-control">
									</div>
									<div class="input-field">
										<input type="email" name="email" id="email" placeholder="Email" class="form-control">
									</div>
								</div>
								<div class="input-group">
									<textarea name="message" id="message" placeholder="Message" class="form-control"></textarea>
								</div>
								<div class="input-group">
									<input type="submit" id="form-submit" class="pull-right" value="Send message">
								</div>
							</form>
						</div>
					</div>
					<!-- end contact form -->
					
					<!-- footer social links -->
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12 wow fadeInRight animated" data-wow-duration="500ms" data-wow-delay="600ms">
						<ul class="footer-social">
							<li><a href="https://www.behance.net/Themefisher"><i class="fa fa-behance fa-2x"></i></a></li>
							<li><a href="https://www.twitter.com/Themefisher"><i class="fa fa-twitter fa-2x"></i></a></li>
							<li><a href="https://dribbble.com/themefisher"><i class="fa fa-dribbble fa-2x"></i></a></li>
							<li><a href="https://www.facebook.com/Themefisher"><i class="fa fa-facebook fa-2x"></i></a></li>
						</ul>
					</div>
					<!-- end footer social links -->
					
				</div>
			</div>
			
			<!-- Google map -->
			<!-- <div id="map_canvas" class="wow bounceInDown animated" data-wow-duration="500ms"></div> -->
			<!-- End Google map -->
			
		</section>
		
        <!--
        End Contact Us
        ==================================== -->
		
		
		<footer id="footer" class="footer">
			<div class="container">
				<div class="row">
				
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms">
						<div class="footer-single">
							<!-- <img src="img/footer-logo.png" alt=""> -->
							TechnothonX
							</div>
					</div>
				
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
						<div class="footer-single">
							<h6>Subscribe </h6>
							<form action="#" class="subscribe">
								<input type="text" name="subscribe" id="subscribe">
								<input type="submit" value="&#8594;" id="subs">
							</form>
							
						</div>
					</div>
				
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="600ms">
						<div class="footer-single">
							<h6>Explore</h6>
							<ul>
								<li><a href="#">Inside Us</a></li>
								<li><a href="#">Google</a></li>
								<li><a href="#">Forum</a></li>
							</ul>
						</div>
					</div>
				
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
						<div class="footer-single">
							<h6>Support</h6>
							<ul>
								<li><a href="#">Contact Us</a></li>
								
							</ul>
						</div>
					</div>
					
				</div>
				<div class="row">
					<div class="col-md-12">
						<p class="copyright text-center">
							Copyright © 2016  All rights reserved
						</p>
					</div>
				</div>
			</div>
		</footer>
		
		<a href="javascript:void(0);" id="back-top"><i class="fa fa-angle-up fa-3x"></i></a>

		<!-- Essential jQuery Plugins
		================================================== -->
		<!-- Main jQuery -->
       
        <script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
		<!-- Single Page Nav -->
		
        <script src="<c:url value="/resources/js/jquery.singlePageNav.min.js"/>"></script>
		<!-- Twitter Bootstrap -->
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        
		<!-- jquery.fancybox.pack -->
		<script src="<c:url value="/resources/js/jquery.fancybox.pack.js"/>"></script>
        
		<!-- jquery.mixitup.min -->
		<script src="<c:url value="/resources/js/jquery.mixitup.min.js"/>"></script>
        
		<!-- jquery.parallax -->
		<script src="<c:url value="/resources/js/jquery.parallax-1.1.3.js"/>"></script>
        
		<!-- jquery.countTo -->
		<script src="<c:url value="/resources/js/jquery.parallax-1.1.3.js"/>"></script>
		<script src="<c:url value="/resources/js/jquery-countTo.js"/>"></script>
        
		<!-- jquery.appear -->
        <script src="<c:url value="/resources/js/jquery.appear.js"/>"></script>
        
		<!-- Contact form validation -->
		<script src="<c:url value="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"/>"></script>
		
		<script src="<c:url value="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"/>"></script>
		
		<!-- Google Map -->
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
		<!-- jquery easing -->
		<script src="<c:url value="/resources/js/jquery.easing.min.js"/>"></script>
		
		<!-- jquery easing -->
		<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
       
		<script>
			var wow = new WOW ({
				boxClass:     'wow',      // animated element css class (default is wow)
				animateClass: 'animated', // animation css class (default is animated)
				offset:       120,          // distance to the element when triggering the animation (default is 0)
				mobile:       false,       // trigger animations on mobile devices (default is true)
				live:         true        // act on asynchronously loaded content (default is true)
			  }
			);
			wow.init();
		</script> 
		<!-- Custom Functions -->
        <script src="js/custom.js"></script>
		<!-- <script language="JavaScript">
TargetDate = "12/1/2016 5:00 AM";
BackColor = "black";
ForeColor = "white";
CountActive = true;
CountStepper = -1;
LeadingZero = true;
DisplayFormat = "%%D%% Days, %%H%% Hours, %%M%% Minutes, %%S%% Seconds.";
FinishMessage = "It is finally here!";
</script> -->



<script language="JavaScript">
function getTimeRemaining(endtime) {
  var t = Date.parse(endtime) - Date.parse(new Date());
  var seconds = Math.floor((t / 1000) % 60);
  var minutes = Math.floor((t / 1000 / 60) % 60);
  var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
  var days = Math.floor(t / (1000 * 60 * 60 * 24));
  return {
    'total': t,
    'days': days,
    'hours': hours,
    'minutes': minutes,
    'seconds': seconds
  };
}

function initializeClock(id, endtime) {
  var clock = document.getElementById(id);
  var daysSpan = clock.querySelector('.days');
  var hoursSpan = clock.querySelector('.hours');
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');

  function updateClock() {
    var t = getTimeRemaining(endtime);

    daysSpan.innerHTML = t.days;
    hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

    if (t.total <= 0) {
      clearInterval(timeinterval);
    }
  }

  updateClock();
  var timeinterval = setInterval(updateClock, 1000);
}

var deadline = new Date(Date.parse(new Date()) + 15 * 24 * 60 * 60 * 1000);
initializeClock('clockdiv', deadline);
</script>



</script>
		
		<script type="text/javascript">
		
		
		
			$(function(){
				/* ========================================================================= */
				/*	Contact Form
				/* ========================================================================= */
				
				$('#contact-form').validate({
					rules: {
						name: {
							required: true,
							minlength: 2
						},
						email: {
							required: true,
							email: true
						},
						message: {
							required: true
						}
					},
					messages: {
						name: {
							required: "come on, you have a name don't you?",
							minlength: "your name must consist of at least 2 characters"
						},
						email: {
							required: "no email, no message"
						},
						message: {
							required: "um...yea, you have to write something to send this form.",
							minlength: "thats all? really?"
						}
					},
					submitHandler: function(form) {
						$(form).ajaxSubmit({
							type:"POST",
							data: $(form).serialize(),
							url:"process.php",
							success: function() {
								$('#contact-form :input').attr('disabled', 'disabled');
								$('#contact-form').fadeTo( "slow", 0.15, function() {
									$(this).find(':input').attr('disabled', 'disabled');
									$(this).find('label').css('cursor','default');
									$('#success').fadeIn();
								});
							},
							error: function() {
								$('#contact-form').fadeTo( "slow", 0.15, function() {
									$('#error').fadeIn();
								});
							}
						});
					}
				});
			});
			
			
		
			
			
			
		</script>
		
		
		 

    
    </body>
</html>
