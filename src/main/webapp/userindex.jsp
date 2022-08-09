<%@ page language="java" %>
<%
  
  response.setHeader("Cache-Control", "no-cache, no-store");
  response.addHeader("Pragma", "no-cache");
  response.setDateHeader("Expires", 0);
  if(request.getSession().getAttribute("name")==null){
	  response.sendRedirect("index1.html");
  }
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
   <title>Welcome </title>
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- Icofont -->
    <link rel="stylesheet" href="plugins/icofont/icofont.css">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css">


</head>


<body data-spy="scroll" data-target=".fixed-top">



<nav class="navbar navbar-expand-lg fixed-top trans-navigation">
        <div class="container">
            <a class="navbar-brand" href="index1.html">
                <img src="images/logo.png" alt="" class="img-fluid b-logo">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNav" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon">
                    <i class="fa fa-bars"></i>
                </span>
              </button>

           <div class="collapse navbar-collapse justify-content-end" id="mainNav">
              <ul class="navbar-nav ">
                 <div class="dropdown-menu" aria-labelledby="navbarWelcome">
                     </div>
                    </li>
		    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="index1.html">
Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="aboutus.jsp">About Us</a>
                    </li>
		    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="test.html">Resource Map</a>
                    </li>
		    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="forum.jsp">Forum</a>
                    </li>
                    <li class="nav-item">
                        <a class='nav-link smoth-scroll' href='#'>${sessionScope['name']}</a>
                    </li>
                    </li>
		    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="logout">LOGOUT</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--MAIN HEADER AREA END -->

<!--MAIN BANNER AREA START -->
<div class="banner-area banner-3">
    <div class="overlay dark-overlay"></div>
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 m-auto text-center col-sm-12 col-md-12">
                        <div class="banner-content content-padding">
                            <h5 class="subtitle">Welcome to our Website</h5>
                            <h1 class="banner-title">Refugee Asylum</h1>
                            <p>Recent Political Disputes has caused a havoc in Nations.
                                Countless number of innocent citizens have become refugees,
                                migrating to other nations for Asylum.
                                We have to Help Refugees.
                                </p>

                            <a href="#" class="btn btn-white btn-circled">lets start</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}
</script>    
  </body>
  </html>
   