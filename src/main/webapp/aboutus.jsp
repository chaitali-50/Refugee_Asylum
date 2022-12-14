<!DOCTYPE html>
<html lang="en">
<title>Refugee Analyze</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- Icofont -->
    <link rel="stylesheet" href="plugins/icofont/icofont.css">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

	<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="progress.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
  integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
  integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
   
   <style>
	.card {
		  /* Add shadows to create the "card" effect */
		  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
		  transition: 0.3s;
		}

		/* On mouse-over, add a deeper shadow */
		.card:hover {
		  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
		}

		/* Add some padding inside the card container */
		.container {
		  padding: 2px 16px;
		}
	
  body,
  h1,
  h2,
  h3,
  h4,
  h5 {
    font-family: "Raleway", sans-serif
  }

  .w3-third img {
    margin-bottom: -6px;
    opacity: 0.8;
    cursor: pointer
  }

  .w3-third img:hover {
    opacity: 1
  }

  * {
    box-sizing: border-box;
  }

  .column {
    float: left;
    width: 25%;
    padding: 5px;
  }

  /* Clearfix (clear floats) */
  .row::after {
    content: "";
    clear: both;
    display: table;
  }


  .address1 li a {
    color: #fff;
    text-decoration: none;
  }


  ul.address1 i {
    width: 20px;
    position: absolute;
    left: 0px;
    text-align: center;
    font-size: 28px;
    top: 0;
  }

  ul.address1 i.fa-envelope {
    font-size: 18px;
    top: 4px;
  }


  body {
    font-family: "Lato", sans-serif;
  }

  .sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
  }

  .sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
  }

  .sidenav a:hover {
    color: #f1f1f1;
  }

  .sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
  }

  #main {
    transition: margin-left .5s;
    padding: 16px;
  }

  @media screen and (max-height: 450px) {
    .sidenav {
      padding-top: 15px;
    }

    .sidenav a {
      font-size: 18px;
    }
  }
</style>
<script type='text/javascript'>
  function newfunc() {
    $.ajax({
      url: "https://sheetlabs.com/CERE/REFAPI",
      crossDomain: true,
    })
      .done(function (data) {
        if (data.length == 0) {
          console.log("not found");
          return;
        }
        var i;
        for (i = 0; i < 205; i++) {
          if (document.getElementById(data[i].id) !== null) {
            document.getElementById(data[i].id).setAttribute("title", data[i].number)
          }

          else (console.log(data[i].id))
        }

      })
      .fail(function () {
        console.log("Failed");
      });
  }
  function showTooltip(evt, text, id) {
    let tooltip2 = document.getElementById("tooltip2");
    tooltip2.innerHTML = "World Total Population : 7.8 billion ";
    tooltip2.style.display = "block";
    tooltip2.style.left = evt.pageX + -100 + 'px';
    tooltip2.style.top = evt.pageY + -80 + 'px';
    let tooltip = document.getElementById("tooltip");
    tooltip.innerHTML = id + " Refugee Population : " + text;
    tooltip.style.display = "block";
    tooltip.style.left = evt.pageX + -100 + 'px';
    tooltip.style.top = evt.pageY + -50 + 'px';

  }

  function hideTooltip() {
    var tooltip = document.getElementById("tooltip");
    tooltip.style.display = "none";
    var tooltip2 = document.getElementById("tooltip2");
    tooltip2.style.display = "none";
  }
</script>

<body onload="newfunc()" data-spy="scroll" data-target=".fixed-top" class="w3-light-grey w3-content" style="max-width:1600px">
<nav class="navbar navbar-expand-lg fixed-top trans-navigation" style="background-color:#000; position:fixed">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="images1/logo.png" alt="" class="img-fluid b-logo">
            </a>
          

            <div class="collapse navbar-collapse justify-content-end" id="mainNav">
              <ul class="navbar-nav ">
                 <div aria-labelledby="navbarWelcome">
                     </div>
                    </li>
		    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="index1.html" style="color:white">
Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="aboutus.jsp" style="color:white">About Us</a>
                    </li>
		    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="login1.html" style="color:white">Login</a>
                    </li>
		    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="login1.html" style="color:white">Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="#" style="color:white">Admin</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
  
  <h4
    style="background-color:#000;text-align: center; margin-top: 90px;font-size: 12px; padding:10px;color: white;font-weight: bold; position:fixed ;width:100% ; z-index:999">
    <span style='font-size:15px;'>&#9971; </span> Hover over countries or click on the map to see refugee data<span style='font-size:15px;'> &#9971;</span></h4>


  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="javascript:void(0)" onclick="cerebrov()" class="w3-bar-item w3-button w3-padding w3-hide-large">CLOSE</a>
    <a href="#" onclick="cerebrov()" class="w3-bar-item w3-button">REFUGEE MAP</a>
    <a href="#methodology" onclick="cerebrov()" class="w3-bar-item w3-button">METHODOLOGY</a>
    <a href="#dashboard" onclick="cerebrov()" class="w3-bar-item w3-button">DASHBOARD</a>
    
    <a href="#contact" onclick="cerebrov()" class="w3-bar-item w3-button">CONTACT US</a>
  </div>
  </header>
  <div class="w4-row">
    <div class="w4-third" id="refugeeMap">

      <div class="mapdiv">

        <div id="tooltip" display="inline-block" style="position: absolute; display: block;">
        </div>
        <div id="tooltip2" display="inline-block" style="position: absolute; display: block;">
        </div>

        
  <svg
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:cc="http://creativecommons.org/ns#"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:svg="http://www.w3.org/2000/svg"
  xmlns="http://www.w3.org/2000/svg"
  xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
  xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
  enable_background="new 0 0 2000 1001"
  pretty_print="False"
  style="stroke-linejoin: round;width: 100%; stroke:#000; fill: none; margin-top:100px"
  version="1.1"
  viewBox="0 0 2000 1001"
  id="svg2"
  inkscape:version="0.48.4 r9939"
  sodipodi:docname="world.svg">
 <sodipodi:namedview
    pagecolor="#ffffff"
    bordercolor="#666666"
    borderopacity="1"
    objecttolerance="10"
    gridtolerance="10"
    guidetolerance="10"
    inkscape:pageopacity="0"
    inkscape:pageshadow="2"
    inkscape:window-width="1920"
    inkscape:window-height="1137"
    id="namedview231"
    showgrid="false"
    inkscape:zoom="1.144"
    inkscape:cx="593.00732"
    inkscape:cy="460.46398"
    inkscape:window-x="1192"
    inkscape:window-y="118"
    inkscape:window-maximized="1"
    inkscape:current-layer="svg2"  />
 <defs
    id="defs4">
   <style
      type="text/css"
      id="style6">path { fill-rule: evenodd; }</style>
 </defs>
 <metadata
    id="metadata8">
   <views
      id="views10">
     <view
        h="1001"
        padding="0"
        w="2000"
        id="view12">
       <proj
          flip="auto"
          id="robinson"
          lon0="100.0"  />
       <bbox
          h="2233.1"
          w="5271.17"
          x="-2635.59"
          y="-1308.06"
          id="bbox15"  />
     </view>
   </views>
   <rdf:RDF>
     <cc:Work
        rdf:about="">
       <dc:format>image/svg+xml</dc:format>
       <dc:type
          rdf:resource="http://purl.org/dc/dcmitype/StillImage"   />
       <dc:title />
     </cc:Work>
   </rdf:RDF>

          </metadata>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AF" title="0" data-name="Afghanistan"
              data-id="AF"
              d="m 1369.9,333.8 -5.4,0 -3.8,-0.5 -2.5,2.9 -2.1,0.7 -1.5,1.3 -2.6,-2.1 -1,-5.4 -1.6,-0.3 0,-2 -3.2,-1.5 -1.7,2.3 0.2,2.6 -0.6,0.9 -3.2,-0.1 -0.9,3 -2.1,-1.3 -3.3,2.1 -1.8,-0.8 -4.3,-1.4 -2.9,0 -1.6,-0.2 -2.9,-1.7 -0.3,2.3 -4.1,1.2 0.1,5.2 -2.5,2 -4,0.9 -0.4,3 -3.9,0.8 -5.9,-2.4 -0.5,8 -0.5,4.7 2.5,0.9 -1.6,3.5 2.7,5.1 1.1,4 4.3,1.1 1.1,4 -3.9,5.8 9.6,3.2 5.3,-0.9 3.3,0.8 0.9,-1.4 3.8,0.5 6.6,-2.6 -0.8,-5.4 2.3,-3.6 4,0 0.2,-1.7 4,-0.9 2.1,0.6 1.7,-1.8 -1.1,-3.8 1.5,-3.8 3,-1.6 -3,-4.2 5.1,0.2 0.9,-2.3 -0.8,-2.5 2,-2.7 -1.4,-3.2 -1.9,-2.8 2.4,-2.8 5.3,-1.3 5.8,-0.8 2.4,-1.2 2.8,-0.7 -1.4,-1.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AO" title="0" data-name="Angola"
              data-id="AO"
              d="m 1068.3,609.6 -16.6,-0.1 -1.9,0.7 -1.7,-0.1 -2.3,0.9 -0.5,1.2 2.8,4 1.1,4.3 1.6,6.1 -1.7,2.6 -0.3,1.3 1.3,3.8 1.5,3.9 1.6,2.2 0.3,3.6 -0.7,4.8 -1.8,2.8 -3.3,4.2 -1.3,2.6 -1.9,5.7 -0.3,2.7 -2,5.9 -0.9,5.5 0.5,4 2.7,-1.2 3.3,-1 3.6,0.1 3.2,2.9 0.9,-0.4 22.5,-0.3 3.7,3 13.4,0.9 10.3,-2.5 -3.5,-4 -3.6,-5.2 0.8,-20.3 11.6,0.1 -0.5,-2.2 0.9,-2.4 -0.9,-3 0.7,-3 -0.5,-2 -2.6,-0.4 -3.5,1 -2.4,-0.2 -1.4,0.6 0.5,-7.6 -1.9,-2.3 -0.3,-4 0.9,-3.8 -1.2,-2.4 0,-4 -6.8,0 0.5,-2.3 -2.9,0 -0.3,1.1 -3.4,0.3 -1.5,3.7 -0.9,1.6 -3,-0.9 -1.9,0.9 -3.7,0.5 -2.1,-3.3 -1.3,-2.1 -1.6,-3.8 -1.3,-4.7 z m -21.8,-1.3 0.2,-2.7 0.9,-1.7 2,-1.3 -2,-2.2 -1.8,1.1 -2.2,2.7 1.4,4.8 1.5,-0.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AL" title="0" data-name="Albania"
              data-id="AL"
              d="m 1077.5,300.5 -2,3.1 0.5,1.9 0,0 1,1 -0.5,1.9 -0.1,4.3 0.7,3 3,2.1 0.2,1.4 1,0.4 2.1,-3 0.1,-2.1 1.6,-0.9 0,-1.6 -2.3,-1.6 -0.9,-2.6 0.4,-2.1 0,0 -0.5,-2.3 -1.3,-0.6 -1.3,-1.6 -1.3,0.5 -0.4,-1.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AE" title="0"
              data-name="United Arab Emirates" data-id="AE"
              d="m 1283.9,408.6 -1.3,-2.2 -3,3.9 -3.7,4.1 -3.3,4.3 -3.3,-0.2 -4.6,-0.2 -4.2,1 -0.3,-1.7 -1,0.3 0.4,1.5 2.6,6.4 16.8,3.2 1,-1.3 -0.1,-2.6 1.4,-2.6 -0.3,-2.6 2.4,-1.3 -1.1,-0.8 0.1,-4.2 2.8,0 -1.3,-5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AR" title="0" data-name="Argentina"
              data-id="AR"
              d="m 669.8,920.7 0.9,-3 -7.3,-1.5 -7.7,-3.6 -4.3,-4.6 -3,-2.8 5.9,13.5 5,0 2.9,0.2 3.3,2.1 4.3,-0.3 z m -50.4,-208.1 -7.4,-1.5 -4,5.7 0.9,1.6 -1.1,6.6 -5.6,3.2 1.6,10.6 -0.9,2 2,2.5 -3.2,4 -2.6,5.9 -0.9,5.8 1.7,6.2 -2.1,6.5 4.9,10.9 1.6,1.2 1.3,5.9 -1.6,6.2 1.4,5.4 -2.9,4.3 1.5,5.9 3.3,6.3 -2.5,2.4 0.3,5.7 0.7,6.4 3.3,7.6 -1.6,1.2 3.6,7.1 3.1,2.3 -0.8,2.6 2.8,1.3 1.3,2.3 -1.8,1.1 1.8,3.7 1.1,8.2 -0.7,5.3 1.8,3.2 -0.1,3.9 -2.7,2.7 3.1,6.6 2.6,2.2 3.1,-0.4 1.8,4.6 3.5,3.6 12,0.8 4.8,0.9 2.2,0.4 -4.7,-3.6 -4.1,-6.3 0.9,-2.9 3.5,-2.5 0.5,-7.2 4.7,-3.5 -0.2,-5.6 -5.2,-1.3 -6.4,-4.5 -0.1,-4.7 2.9,-3.1 4.7,-0.1 0.2,-3.3 -1.2,-6.1 2.9,-3.9 4.1,-1.9 -2.5,-3.2 -2.2,2 -4,-1.9 -2.5,-6.2 1.5,-1.6 5.6,2.3 5,-0.9 2.5,-2.2 -1.8,-3.1 -0.1,-4.8 -2,-3.8 5.8,0.6 10.2,-1.3 6.9,-3.4 3.3,-8.3 -0.3,-3.2 -3.9,-2.8 -0.1,-4.5 -7.8,-5.5 -0.3,-3.3 -0.4,-4.2 0.9,-1.4 -1.1,-6.3 0.3,-6.5 0.5,-5.1 5.9,-8.6 5.3,-6.2 3.3,-2.6 4.2,-3.5 -0.5,-5.1 -3.1,-3.7 -2.6,1.2 -0.3,5.7 -4.3,4.8 -4.2,1.1 -6.2,-1 -5.7,-1.8 4.2,-9.6 -1.1,-2.8 -5.9,-2.5 -7.2,-4.7 -4.6,-1 -11.2,-10.4 -1,-1.3 -6.3,-0.3 -1.6,5.1 -3.7,-4.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AM" title="0" data-name="Armenia"
              data-id="AM"
              d="m 1219,325.1 -0.9,-4.4 -2.5,-1.1 -2.5,-1.7 1,-2 -3.1,-2.2 0.7,-1.5 -2.2,-1.1 -1.4,-1.7 -6.9,1 1.3,2.2 0,3.1 4.2,1.5 2.4,1.9 1,-0.2 1.8,1.7 2.3,0 0.2,1 2.8,3.7 1.8,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AU" title="0" data-name="Australia"
              data-id="AU"
              d="m 1726.7,832 -3,-0.5 -1.9,2.9 -0.6,5.4 -2.1,4 -0.5,5.3 3,0.2 0.8,0.3 6.6,-4.3 0.6,1.7 4,-4.9 3.2,-2.2 4.5,-7.3 -2.8,-0.5 -4.8,1.2 -3.4,0.9 -3.6,-2.2 z m 50.1,-172.3 0.5,-2.3 0.1,-3.6 -1.6,-3.2 0.1,-2.7 -1.3,-0.8 0.1,-3.9 -1.2,-3.2 -2.3,2.4 -0.4,1.8 -1.5,3.5 -1.8,3.4 0.6,2.1 -1.2,1.3 -1.5,4.8 0.1,3.7 -0.7,1.8 0.3,3.1 -2.6,5 -1.3,3.5 -1.7,2.9 -1.7,3.4 -4.1,2.1 -4.9,-2.1 -0.5,-2 -2.5,-1.6 -1.6,0 -3.3,-3.8 -2.5,-2.2 -3.9,-2 -3.9,-3.5 -0.1,-1.8 2.5,-3.1 2.1,-3.2 -0.3,-2.6 1.9,-0.2 2.5,-2.5 2,-3.4 -2.2,-3.2 -1.5,1.2 -2,-0.5 -3.5,1.8 -3.2,-2 -1.7,0.7 -4.5,-1.6 -2.7,-2.7 -3.5,-1.5 -3.1,0.9 3.9,2.1 -0.3,3.2 -4.8,1.2 -2.8,-0.7 -3.6,2.2 -2.9,3.7 0.6,1.5 -2.7,1.7 -3.4,5.1 0.6,3.5 -3.4,-0.6 -3.5,0 -2.5,-3.8 -3.7,-2.9 -2.8,0.8 -2.6,0.9 -0.3,1.6 -2.4,-0.7 -0.3,1.8 -3,1.1 -1.7,2.5 -3.5,3.1 -1.4,4.8 -2.3,-1.3 -2.2,3.1 1.5,3 -2.6,1.2 -1.4,-5.5 -4.8,5.4 -0.8,3.5 -0.7,2.5 -3.8,3.3 -2,3.4 -3.5,2.8 -6.1,1.9 -3.1,-0.2 -1.5,0.6 -1.1,1.4 -3.5,0.7 -4.7,2.4 -1.4,-0.8 -2.6,0.5 -4.6,2.3 -3.2,2.7 -4.8,2.1 -3.1,4.4 0.4,-4.8 -3.1,4.6 -0.1,3.7 -1.3,3.2 -1.5,1.5 -1.3,3.7 0.9,1.9 0.1,2 1.6,5 -0.7,3.3 -1,-2.5 -2.3,-1.8 0.4,5.9 -1.7,-2.8 0.1,2.8 1.8,5 -0.6,5 1.7,2.5 -0.4,1.9 0.9,4.1 -1.3,3.6 -0.3,3.6 0.7,6.5 -0.7,3.7 -2.2,4.4 -0.6,2.3 -1.5,1.5 -2.9,0.8 -1.5,3.7 2.4,1.2 4,4.1 3.6,0 3.8,0.3 3.3,-2.1 3.4,-1.8 1.4,0.3 4.5,-3.4 3.8,-0.3 4.1,-0.7 4.2,1.2 3.6,-0.6 4.6,-0.2 3,-2.6 2.3,-3.3 5.2,-1.5 6.9,-3.2 5,0.4 6.9,-2.1 7.8,-2.3 9.8,-0.6 4,3.1 3.7,0.2 5.3,3.8 -1.6,1.5 1.8,2.4 1.3,4.6 -1.6,3.4 2.9,2.6 4.3,-5.1 4.3,-2.1 6.7,-5.5 -1.6,4.7 -3.4,3.2 -2.5,3.7 -4.4,3.5 5.2,-1.2 4.7,-4.4 -0.9,4.8 -3.2,3.1 4.7,0.8 1.3,2.6 -0.4,3.3 -1.5,4.9 1.4,4 4,1.9 2.8,0.4 2.4,1 3.5,1.8 7.2,-4.7 3.5,-1.2 -2.7,3.4 2.6,1.1 2.7,2.8 4.7,-2.7 3.8,-2.5 6.3,-2.7 6,-0.2 4.2,-2.3 0.9,-2 3,-4.5 3.9,-4.8 3.6,-3.2 4.4,-5.6 3.3,-3.1 4.4,-5 5.4,-3.1 5,-5.8 3.1,-4.5 1.4,-3.6 3.8,-5.7 2.1,-2.9 2.5,-5.7 -0.7,-5.4 1.7,-3.9 1.1,-3.7 0,-5.1 -2.8,-5.1 -1.9,-2.5 -2.9,-3.9 0.7,-6.7 -1.5,1 -1.6,-2.8 -2.5,1.4 -0.6,-6.9 -2.2,-4 1,-1.5 -3.1,-2.8 -3.2,-3 -5.3,-3.3 -0.9,-4.3 1.3,-3.3 -0.4,-5.5 -1.3,-0.7 -0.2,-3.2 -0.2,-5.5 1.1,-2.8 -2.3,-2.5 -1.4,-2.7 -3.9,2.4 -1.2,-5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AT" title="0" data-name="Austria"
              data-id="AT"
              d="m 1060.2,264 -2.3,-1.2 -2.3,0.3 -4,-1.9 -1.7,0.5 -2.6,2.5 -3.8,-2 -1.5,2.9 -1.7,0.8 1,4 -0.4,1.1 -1.7,-1.3 -2.4,-0.2 -3.4,1.2 -4.4,-0.3 -0.6,1.6 -2.6,-1.7 -1.5,0.3 0.2,1.1 -0.7,1.6 2.3,1.1 2.6,0.2 3.1,0.9 0.5,-1.2 4.8,-1.1 1.3,2.2 7.2,1.6 4.2,0.4 2.4,-1.4 4.3,-0.1 0.9,-1.1 1.3,-4 -1.1,-1.3 2.8,0 0.2,-2.6 -0.7,-2.1 0.3,-0.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AZ" title="0" data-name="Azerbaijan"
              data-id="AZ"
              d="m 1210.1,318.9 -1,0.2 1.2,2.4 3.2,2.9 3.7,0.9 -2.8,-3.7 -0.2,-1 -2.3,0 -1.8,-1.7 z m 10.4,-9.3 -4.3,-3.8 -1.5,-0.2 -1.1,0.9 3.2,3.4 -0.6,0.7 -2.8,-0.4 -4.2,-1.8 -1.1,1 1.4,1.7 2.2,1.1 -0.7,1.5 3.1,2.2 -1,2 2.5,1.7 2.5,1.1 0.9,4.4 5.3,-4.7 1.9,-0.5 1.9,1.9 -1.2,3.1 3.8,3.4 1.3,-0.3 -0.8,-3.2 1.7,-1.5 0.4,-2.2 -0.1,-5 4.2,-0.5 -2,-1.7 -2.5,-0.2 -3.5,-4.5 -3.4,-3.2 0,0 -2.6,2.5 -0.5,1.5 -2.4,-0.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BI" title="0" data-name="Burundi"
              data-id="BI"
              d="m 1148.2,590 -0.3,-2.5 0,0 -3,-0.4 -1.7,3.6 -3.5,-0.5 1.4,2.9 0.1,1.1 2,6.1 -0.1,0.3 0.6,-0.1 2.1,-2.3 2.2,-3.3 1.4,-1.4 0,-2 -1.2,-1.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BE" title="0" data-name="Belgium"
              data-id="BE"
              d="m 1000.7,246.2 -4.4,1.3 -3.6,-0.5 0,0 -3.8,1.2 0.7,2.2 2.2,0.1 2.4,2.4 3.4,2.9 2.5,-0.4 4.4,2.8 0.4,-3.5 1.3,-0.2 0.4,-4.2 -2.8,-1.4 -3.1,-2.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BJ" title="0" data-name="Benin"
              data-id="BJ"
              d="m 996.9,498 -4.3,-3.7 -2,0 -1.9,1.9 -1.2,1.9 -2.7,0.6 -1.2,2.8 -1.9,0.7 -0.7,3.3 1.7,1.9 2,2.3 0.2,3.1 1.1,1.3 -0.2,14.6 1.4,4.4 4.6,-0.8 0.3,-10.2 -0.1,-4.1 1,-4 1.7,-1.9 2.7,-4 -0.6,-1.7 1.1,-2.5 -1.2,-3.8 0.2,-2.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BF" title="0" data-name="Burkina Faso"
              data-id="BF"
              d="m 978.8,477.2 -3.6,0 -1.4,-1.2 -3,0.9 -5.2,2.6 -1.1,2 -4.3,2.9 -0.8,1.6 -2.3,1.3 -2.7,-0.9 -1.6,1.6 -0.8,4.4 -4.5,5.2 0.2,2.2 -1.6,2.7 0.4,3.7 2.5,1.4 1,2.1 2.5,1.3 1.9,-1.6 2.7,-0.2 3.8,1.6 -0.8,-4.8 0.2,-3.6 9.7,-0.3 2.4,0.5 1.8,-1 2.6,0.5 4.9,0.1 1.9,-0.7 1.2,-2.8 2.7,-0.6 1.2,-1.9 0.1,-4.4 -6.4,-1.4 -0.2,-3.1 -3.1,-4.1 -0.8,-2.9 0.5,-3.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BD" title="0" data-name="Bangladesh"
              data-id="BD"
              d="m 1486.5,431.9 -4.5,-10.1 -1.5,0.1 -0.2,4 -3.5,-3.3 1.1,-3.6 2.4,-0.4 1.6,-5.3 -3.4,-1.1 -5,0.1 -5.4,-0.9 -1.2,-4.4 -2.7,-0.4 -4.8,-2.7 -1.2,4.3 4.6,3.4 -3.1,2.4 -0.8,2.3 3.7,1.7 -0.4,3.8 2.6,4.8 1.6,5.2 2.2,0.6 1.7,0.7 0.6,-1.2 2.5,1.3 1.3,-3.5 -0.9,-2.6 5.1,0.2 2.8,3.7 1.5,3.1 0.8,3.2 2,3.3 -1.1,-5.1 2.1,1 -0.5,-4.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BG" title="0" data-name="Bulgaria"
              data-id="BG"
              d="m 1121.6,294.3 -3,-0.7 -4,-2.2 -5.8,1.4 -2.3,1.6 -7.5,-0.3 -4,-1 -1.9,0.5 -1.8,-2.6 -1.1,1.4 0.7,2.3 2.8,2.6 -1.7,1.9 -0.7,2 0.6,0.7 -0.7,0.9 2.8,2 0.8,4.1 3.8,0.2 3.9,-1.7 3.9,2.1 4.6,-0.6 -0.3,-3 5,-2 4.5,0.8 -2.1,-3.5 1.3,-4.4 2.2,-2.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BA" title="0"
              data-name="Bosnia and Herz." data-id="BA"
              d="m 1062.2,284.9 -2.3,0.1 -1,1.3 -1.9,-1.4 -0.9,2.5 2.7,2.9 1.3,1.9 2.5,2.3 2,1.4 2.2,2.5 4.7,2.4 0.4,-3.4 1.5,-1.4 0.9,-0.6 1.2,-0.3 0.5,-2.9 -2.7,-2.3 1,-2.7 -1.8,0 0,0 -2.4,-1.4 -3.5,0.1 -4.4,-1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BY" title="0" data-name="Belarus"
              data-id="BY"
              d="m 1112.8,219.4 -5.2,-1.5 -4.6,2.3 -2.6,1 0.9,2.6 -3.5,2 -0.5,3.4 -4.8,2.2 -4.6,0 0.6,2.7 1.7,2.3 0.3,2.4 -2.7,1.2 1.9,2.9 0.5,2.7 2.2,-0.3 2.4,-1.6 3.7,-0.2 5,0.5 5.6,1.5 3.8,0.1 2,0.9 1.6,-1.1 1.5,1.5 4.3,-0.3 2,0.6 -0.2,-3.1 1.2,-1.4 4.1,-0.3 0,0 -2,-3.9 -1.5,-2 0.8,-0.6 3.9,0.2 1.6,-1.3 -1.7,-1.6 -3.4,-1.1 0.1,-1.1 -2.2,-1.1 -3.7,-3.9 0.6,-1.6 -1,-2.9 -4.8,-1.4 -2.3,0.7 -1,-1.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BZ" title="0" data-name="Belize"
              data-id="BZ"
              d="m 482.5,471.1 1.4,-2.2 1,-0.2 1.3,-1.7 1,-3.2 -0.3,-0.6 0.9,-2.3 -0.4,-1 1.3,-2.7 0.3,-1.8 -1.1,0 0.1,-0.9 -1,0 -2.5,3.9 -0.9,-0.8 -0.7,0.3 -0.1,1 -0.7,5 -1.2,7.2 1.6,0 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BO" title="0" data-name="Bolivia"
              data-id="BO"
              d="m 655.7,700.5 1.6,-1.3 -0.8,-3.6 1.3,-2.8 0.5,-5 -1.6,-4 -3.2,-1.7 -0.8,-2.6 0.6,-3.6 -10.7,-0.3 -2.7,-7.4 1.6,-0.1 -0.3,-2.8 -1.2,-1.8 -0.5,-3.7 -3.3,-1.9 -3.5,0.1 -2.5,-1.9 -3.8,-1.2 -2.4,-2.4 -6.3,-1 -6.4,-5.7 0.3,-4.3 -0.9,-2.5 0.4,-4.7 -7.3,1.1 -2.8,2.3 -4.8,2.6 -1.1,1.9 -2.9,0.2 -4.2,-0.6 5.5,10.3 -1.1,2.1 0.1,4.5 0.3,5.4 -1.9,3.2 1.2,2.4 -1.1,2.1 2.8,5.3 -2.8,6.9 3.1,4.3 1.2,4.6 3.2,2.7 -1.1,6.2 3.7,7.1 3.1,8.8 3.8,-0.9 4,-5.7 7.4,1.5 3.7,4.6 1.6,-5.1 6.3,0.3 1,1.3 1.5,-7.6 -0.2,-3.4 2.1,-5.6 9.5,-1.9 5.1,0.1 5.4,3.3 0.3,1.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BR" title="0" data-name="Brazil"
              data-id="BR"
              d="m 659,560.1 -1.4,0.2 -3.1,-0.5 -1.8,1.7 -2.6,1.1 -1.7,0.2 -0.7,1.3 -2.7,-0.3 -3.5,-3 -0.3,-2.9 -1.4,-3.3 1,-5.4 1.6,-2.2 -1.2,-3 -1.9,-0.9 0.8,-2.8 -1.3,-1.5 -2.9,0.3 0.7,1.8 -2.1,2.4 -6.4,2.4 -4,1 -1.7,1.5 -4.4,-1.6 -4.2,-0.8 -1,0.6 2.4,1.6 -0.3,4.3 0.7,4 4.8,0.5 0.3,1.4 -4.1,1.8 -0.7,2.7 -2.3,1 -4.2,1.5 -1.1,1.9 -4.4,0.5 -3,-3.4 -1.1,0.8 -1,-3.8 -1.6,-2 -1.9,2.2 -10.9,-0.1 0,3.9 3.3,0.7 -0.2,2.4 -1.1,-0.6 -3.2,1 0,4.6 2.5,2.4 0.9,3.6 -0.1,2.8 -2.2,17.4 -5.1,-0.3 -0.7,1 -4.6,1.2 -6.2,4.3 -0.4,3 -1.3,2.2 0.7,3.4 -3.3,1.9 0.1,2.7 -1.5,1.1 2.6,5.8 3.3,3.8 -1,2.8 3.7,0.3 2.3,3.4 4.9,0.2 4.4,-3.8 0.2,9.7 2.6,0.7 3,-1.1 4.2,0.6 2.9,-0.2 1.1,-1.9 4.8,-2.6 2.8,-2.3 7.3,-1.1 -0.4,4.7 0.9,2.5 -0.3,4.3 6.4,5.7 6.3,1 2.4,2.4 3.8,1.2 2.5,1.9 3.5,-0.1 3.3,1.9 0.5,3.7 1.2,1.8 0.3,2.8 -1.6,0.1 2.7,7.4 10.7,0.3 -0.6,3.6 0.8,2.6 3.2,1.7 1.6,4 -0.5,5 -1.3,2.8 0.8,3.6 -1.6,1.3 1.9,3.6 0.4,8.6 6,1.2 2.1,-1.2 3.9,1.7 1.2,1.9 1,5.8 0.9,2.5 2,0.3 2,-1.1 2.1,1.2 0.3,3.5 -0.3,3.8 -0.7,3.6 2.6,-1.2 3.1,3.7 0.5,5.1 -4.2,3.5 -3.3,2.6 -5.3,6.2 -5.9,8.6 3.4,-0.7 6.2,4.9 1.9,-0.2 6.2,4.1 4.8,3.5 3.8,4.3 -1.9,3 2.1,3.7 2.9,-3.7 1.5,-6 3.2,-3 3.9,-5 4.5,-11.2 3.4,-3.5 0.8,-3.1 0.3,-6.4 -1.3,-3.5 0.3,-4.8 4.1,-6.3 6,-5.1 6,-1.8 3.6,-2.9 8.5,-2.4 5.9,0 1.1,-3.8 4.2,-2.8 0.6,-6.5 5.1,-8.3 0.5,-8.5 1.6,-2.6 0.3,-4.1 1.1,-9.9 -1,-11.9 1.4,-4.7 1.4,-0.1 3.9,-5.5 3.3,-7.2 7.7,-8.8 2.7,-4.2 2,-10.5 -1,-3.9 -2,-8.1 -2.1,-2 -4.8,-0.2 -4.3,-1.9 -7.3,-7.1 -8.4,-5.3 -8.4,0.3 -10.9,-3.4 -6.5,2 0.8,-3.5 -2.7,-3.8 -9.4,-3.8 -7.1,-2.3 -4.2,4.1 -0.3,-6.3 -9.9,-1 -1.7,-2 4.2,-5.2 -0.1,-4.4 -3,-1 -3,-11.2 -1.3,-3.5 -1.9,0.3 -3.5,5.8 -1.8,4.7 -2.1,2.4 -2.7,0.5 -0.8,-1.8 -1.2,-0.3 -1.8,1.8 -2.4,-1.3 -3.2,-1.4 -2.7,0.7 -2.3,-0.6 -0.5,1.8 0.9,1.3 -0.5,1.3 -3.1,-0.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BN" title="0" data-name="Brunei"
              data-id="BN" d="m 1617.8,543.4 2.7,3.3 1.1,-2.2 2.7,0.2 0.1,-4.1 0.1,-3.1 -4.6,3.5 -2.1,2.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BT" title="0" data-name="Bhutan"
              data-id="BT"
              d="m 1474.7,395.5 -2.7,-1.8 -2.9,-0.1 -4.2,-1.5 -2.6,1.6 -2.6,4.8 0.3,1.2 5.5,2.5 3.2,-1 4.7,0.4 4.4,-0.2 -0.4,-3.9 -2.7,-2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BW" title="0" data-name="Botswana"
              data-id="BW"
              d="m 1116.7,685 -1,-0.5 -3.2,1.5 -1.6,0 -3.7,2.5 -2,-2.6 -8.6,2.2 -4.1,0.2 -0.9,22.7 -5.4,0.2 -0.6,18.5 1.4,1 3,6.1 -0.7,3.8 1.1,2.3 4,-0.7 2.8,-2.8 2.7,-1.9 1.5,-3.1 2.7,-1.5 2.3,0.8 2.5,1.8 4.4,0.3 3.6,-1.5 0.6,-2 1.2,-3 3,-0.5 1.7,-2.4 2,-4.3 5.2,-4.7 8,-4.7 -3.4,-2.9 -4.2,-0.9 -1.5,-4.1 0.1,-2.2 -2.3,-0.7 -6,-7 -1.6,-3.7 -1.1,-1.1 -1.9,-5.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CF" title="0"
              data-name="Central African Rep." data-id="CF"
              d="m 1110.5,517.3 -0.5,-0.3 -2,-1.8 -0.3,-2 0.8,-2.6 0,-2.6 -3.3,-4 -0.7,-2.7 -3.5,1.1 -2.8,2.5 -4,7 -5.2,2.9 -5.4,-0.4 -1.6,0.6 0.6,2.3 -2.9,2.2 -2.3,2.5 -7.1,2.4 -1.4,-1.4 -0.9,-0.2 -1,1.7 -4.7,0.4 -2.7,6.5 -1.4,1.1 -0.4,5 0.6,2.7 -0.4,1.9 2.6,3.3 0.5,2.3 2.1,3.2 2.6,2.1 0.3,2.9 0.6,1.8 2.9,-5.9 3.3,-3.4 3.8,1.1 3.6,0.4 0.5,-4.5 2.2,-3.2 3,-2 4.6,2.1 3.6,2.4 4.1,0.6 4.2,1.2 1.6,-3.8 0.8,-0.5 2.6,0.6 6.2,-3.1 2.2,1.3 1.8,-0.2 0.9,-1.5 2,-0.6 4.3,0.7 3.6,0.1 1.8,-0.6 -0.9,-2.1 -4.2,-2.5 -1.5,-3.8 -2.4,-2.7 -3.8,-3.4 -0.1,-2 -3.1,-2.6 -3.8,-2.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CA" title="0" data-name="Canada"
              data-id="CA"
              d="m 659,276.7 -0.7,-3 -2.5,1.9 0.5,2.1 5.6,2.6 1.9,-0.4 3.3,-2.5 -4.7,0.1 -3.4,-0.8 z m 14.4,-15.9 0.2,-1.1 -4.1,-2.6 -5.9,-1.6 -1.9,0.6 3.5,2.9 5.7,1.9 2.5,-0.1 z m -305.3,3.7 0.2,-3.4 -3.2,-2.6 -0.4,-2.9 -0.1,-2.1 -4.1,-0.7 -2.4,-0.9 -4.1,-1.4 -1.4,1.5 -0.6,3.3 4.3,1.1 -0.4,1.8 2.9,2.2 0,2.2 6.3,2.8 3,-0.9 z m 336.1,-13.5 3.9,-3.8 1.4,-1.7 -2.1,-0.3 -4.9,2.2 -4.2,3.5 -8.1,9.8 -5.3,3.7 1.6,1.7 -3.8,2.2 0.2,1.9 9.6,0.1 5.4,-0.3 4.4,1.5 -4.4,2.9 2.9,0.2 7.3,-5.4 1.2,0.8 -2.5,5.1 3,1.2 2.3,-0.2 3.5,-5.5 -0.5,-3.9 0.3,-3.3 -3.7,1.1 2.8,-4.6 -4.3,-1.9 -2.7,1.5 -3.9,-1.7 2.4,-2.1 -2.9,-1.3 -3.8,2 4.9,-5.4 z m -356.8,-21.2 -1.9,2 -1.4,2.6 0.9,1.9 -0.6,2.8 0.7,2.8 1.9,0 -0.2,-4.9 7.1,-6.9 -4.9,0.5 -1.6,-0.8 z m 280.9,-47 -0.4,-1.2 -1.7,-0.1 -2.8,1.7 -0.4,0.4 0.1,1.7 1.7,0.5 3.5,-3 z m -9.6,-3.2 0.8,-1.1 -6,-0.1 -4.9,2.7 0,1.5 3,0.2 7.1,-3.2 z m -3.1,-16.6 -2.7,-0.5 -5,5.2 -3.6,4.4 -5.7,2.8 6.3,-0.6 -0.8,3.4 8.2,-3 6.2,-3 0.8,2.6 5.9,1.3 4.9,-1.8 -1.9,-1.8 -3.4,0.4 1.3,-2.7 -3.7,-1.7 -3.4,-1.9 -1.5,-1.5 -2.8,0.9 0.9,-2.5 z m 44.6,-8.2 3.7,-1.7 1,-0.7 1.4,-2.3 -2.3,-1.5 -4.2,0.7 -3.8,3.1 -0.7,2.6 4.9,-0.2 z m -73.8,-10.7 -0.8,-2 -0.3,-1 -1.6,-1 -3,-1.5 -4.9,2.3 -5,1.7 3.5,2.4 3.8,-0.6 4.1,1.6 4.2,-1.9 z m 22.4,-2.1 -6.6,-1 5.7,-2.6 -0.4,-6 -1.9,-2.3 -4.5,-0.8 -8.1,3.8 -5.5,5.8 2.9,2.1 1.6,3.3 -6.3,5.5 -3.2,-0.2 -6.2,4.4 4.2,-5.2 -4.8,-1.8 -4.5,0.9 -2.4,3.4 -5.9,-0.1 -7.2,0.8 -5.1,-2.4 -5,0.4 -1.5,-2.9 -2.1,-1.3 -3.8,0.5 -5.2,0.3 -4.4,1.8 2,2.3 -7,2.8 -1.4,-3.3 -4.4,1 -11.8,0.6 -6.4,-1.2 8.5,-2.6 -2.8,-2.8 -4.4,0.4 -4.7,-1 -7.5,-1.9 -3.8,-2.3 -4.5,-0.3 -3.3,1.6 -5.9,0.9 3.9,-4.1 -9.4,3.6 -1.4,-4.7 -2.1,-0.6 -3.8,2.5 -4.5,1.2 -0.2,-2.2 -8.2,1.4 -8.8,2.3 -5.2,-0.6 -7,1.6 -6.2,2.3 -3.7,-0.5 -3.3,-2.6 -5.9,-1.3 0,0 -24.3,20.2 -35.4,32.4 4.2,0.1 2.7,1.6 0.6,2.6 0.2,3.9 7.6,-3.3 6.4,-1.9 -0.5,3 0.7,2.4 1.7,2.7 -1.1,4.2 -1.5,6.8 4.6,3.8 -3.1,3.7 -5.1,2.9 0,0 -2.5,3.1 2.1,4.4 -3.1,4.9 4.1,2.6 -3.6,3.7 -1.3,5.5 6.9,2.5 1.6,2.7 5.4,6.1 0.7,0 13.9,0 14.6,0 4.8,0 15,0 14.5,0 14.7,0 14.8,0 16.7,0 16.8,0 10.1,0 1.3,-2.4 1.6,0 -0.8,3.4 1,1 3.2,0.4 4.6,1 3.8,1.9 4.4,-0.8 5.3,1.6 0,0 3.2,-2.4 3.2,-1 1.8,-1.5 1.5,-0.8 4,1.2 3.3,0.2 0.8,0.8 0.1,3.5 5.2,1 -1.7,1.7 1.2,1.9 -1.9,2.3 1.8,0.8 -1.9,2.1 0,0 1.2,0.2 1.3,-0.9 0.5,1.4 3.4,0.7 3.8,0.1 3.8,0.6 4,1.2 0.8,2 1.4,4.7 -2.4,2 -3.8,-0.8 -1,-3.8 -0.9,3.9 -3.8,3.4 -0.8,2.9 -1.1,1.7 -4.1,2 0,0 -3.7,3.4 -2,2.2 2.7,0.4 4.5,-2 2.9,-1.7 1.6,-0.3 2.6,0.6 1.7,-0.9 2.8,-0.8 4.7,-0.8 0,0 0,0 0.3,-1.8 -0.3,0.1 -1.7,0.3 -1.8,-0.6 2.3,-2.1 1.9,-0.7 3.9,-0.9 4.6,-0.9 1.8,1.2 1.9,-1.4 1.9,-0.8 0.9,0.4 0.1,0.1 6.7,-4.2 2.7,-1.2 7.7,0 9.3,0 1,-1.6 1.7,-0.3 2.5,-0.9 2.7,-2.8 3.2,-4.9 5.5,-4.7 1.1,1.7 3.7,-1.1 1.5,1.8 -2.8,8.5 2.1,3.5 5.9,-0.8 8.1,-0.2 -10.4,5.1 -1.5,5.2 3.7,0.5 7.1,-4.5 5.8,-2.4 12.2,-3.7 7.5,-4.1 -2.6,-2.2 1,-4.5 -7.1,7 -8.6,0.8 -5.5,-3.1 -0.1,-4.6 0.6,-6.8 6.1,-4.1 -3.3,-3.1 -7.6,0.6 -12.1,5.2 -10.9,8.2 -4.6,1 7.8,-5.7 10.1,-8.3 7.2,-2.7 5.7,-4.4 5.2,-0.5 7.3,0.1 10,1.3 8.6,-1 7.8,-5.1 8.7,-2.2 4.2,-2.1 4.2,-2.3 2,-6.8 -1.1,-2.3 -3.4,-0.8 0,-5.1 -2.3,-1.9 -6.9,-1.6 -2.8,-3.4 -4.8,-3.4 3.4,-3.7 -2,-7.1 -2.6,-7.5 -1,-5.2 -4.3,2.7 -7.4,6.5 -8.1,3.2 -1.6,-3.4 -3.7,-1 2.2,-7.3 2.6,-4.9 -7.7,-0.5 -0.1,-2.2 -3.6,-3.3 -3,-2 -4.5,1.5 -4.2,-0.5 -6.6,-1.6 -3.9,1.3 -3.8,9 -1,5.3 -8.8,6.1 3.1,4.5 0.5,5 -1.7,4 -4.7,4.1 -7.5,4.2 -9,2.8 1.7,3.2 -2.2,9.6 -5.6,6.3 -4.6,1.9 -4.4,-5.8 -0.1,-6.8 1.7,-6 3.6,-5.2 -4.8,-0.6 -7.5,-0.4 -3.6,-2.5 -4.8,-1.6 -1.7,-2.9 -3.3,-2.2 -7,-2.6 -7.1,1.2 0.7,-4.5 1.5,-5.5 -6,-1 4.9,-6.8 4.9,-4.6 9.4,-6.5 8.6,-4.6 5.6,-0.7 2.9,-3.7 5.1,-2.4 6.4,-0.4 7.7,-3.8 2.9,-2.4 7.4,-4.7 3.2,-2.8 3.2,1.7 6.5,-0.9 10.8,-3.8 2.3,-2.7 -0.8,-2.9 5,-2.9 1.7,-2.7 -3.5,-2.6 -5.4,-0.8 -5.5,-0.4 -4.6,5.9 -6.5,4.6 -7.2,4 -1.3,-3.7 4.2,-4 -2.2,-3.5 -8.7,4.2 4.3,-5.5 z m -75.5,-18.9 -2.8,-1 -14.1,3.2 -5.1,2 -7.8,3.9 5.4,1.4 6.2,-0.1 -11.5,2.1 0,1.9 5.6,0.1 9,-0.4 6.5,1.2 -6.2,1 -5.5,-0.3 -7.1,0.9 -3.3,0.6 0.6,4.2 4.2,-0.6 4.1,1.5 -0.3,2.5 7.8,-0.5 11.2,-0.8 9.4,-1.8 5,-0.4 5.7,1.5 6.7,0.8 3.1,-1.9 -0.7,-2.1 7,-0.4 2.6,-2.4 -5,-2.5 -4.2,-2.6 2.4,-3.6 2.7,-5.1 -2.2,-2 -3,-0.9 -4.2,0.8 -2.8,5.3 -4.3,2.1 2.2,-5.1 -1.7,-1.7 -7.3,2.7 -2.6,-2.6 -10.4,1.5 4.7,-2.4 z m 39.1,-1.5 -1.7,-1.1 -5.4,0.2 -2.1,0.7 2.2,3.6 7,-3.4 z m 107.7,1.6 -4.4,-2.8 -8.4,-0.5 -2.1,0.3 -1.7,1.8 2,2.8 0.9,0.3 4.8,-0.7 4.1,0.1 4.1,0.1 0.7,-1.4 z m -39.4,-0.3 5.7,-3.2 -11.2,1.3 -5.8,2.1 -7.1,4.6 -3.3,5.2 5.6,0.1 -6.1,2.3 1.8,1.9 5.9,0.8 7.3,1.5 13.8,1.2 7.9,-0.6 3.2,-1.6 2,1.8 3.3,0.3 2,3.3 -3.5,1.4 7.1,1.8 4.6,2.6 0.5,1.9 -0.4,2.4 -8.6,5.4 -3.2,2.7 0.2,2 -9.2,0.7 -8,0.1 -5.4,4.2 2.4,1.9 13,-0.9 0.9,-1.6 4.7,2.7 4.7,2.9 -2.4,1.6 3.8,2.8 7.6,3.3 10.7,2.3 0.3,-2 -2.8,-3.5 -3.5,-4.9 8.5,4.6 4.7,1.5 3.6,-4.1 0,-5.6 -1,-1.5 -4.4,-2.5 -2.7,-3.3 2.3,-3.2 5.8,-0.7 3.8,5.4 4,2.4 10.7,-6.5 3.3,-3.9 -6.4,-0.3 -3.2,-5.1 -5.9,-1.2 -7.7,-3.5 9,-2.5 -0.8,-5 -2.2,-2.1 -8.3,-2.1 -1.9,-3.3 -8.2,1.2 1.1,-2.3 -3.6,-2.5 -6.8,-2.6 -5.2,2.1 -9,1.5 3.3,-3.4 -2.3,-5.3 -11.6,2.1 -7.1,4.1 -0.3,-3.2 z m -50,-3.4 -7.1,2.4 0.9,3.4 -7.4,-0.7 -1.7,1.7 5.8,3.9 0.9,2 3.4,0.5 8.4,-2 5.1,-4.7 -3.8,-2.2 6,-2.4 0.5,-1.5 -7.5,0.6 -3.5,-1 z m 22.3,5.4 5.6,-1 10,-4.5 -6.1,-1.2 -7.8,-0.2 -5.2,1.4 -4.2,2.1 -2.5,2.6 -1.8,4.5 4.3,0.2 7.7,-3.9 z m -114.7,7.2 2.6,-2.3 9.1,-3.6 13.8,-3.6 6.4,-1.3 -1.6,-2.1 -1.9,-1.5 -9.4,-0.2 -4.1,-1.1 -14,0.8 -0.3,3.1 -7.6,3.3 -7.4,3.8 -4.3,2.2 5.9,2.7 -0.6,2.3 13.4,-2.5 z m 124.1,-18.3 0.3,-1.6 -1.4,-1.7 -6.9,1.3 -4.4,2.2 3.2,1.3 5.1,0.4 4.1,-1.9 z m -8.7,-8.6 -1.1,0.7 -4.8,-0.3 -7.6,1.6 -3.8,-0.1 -4.3,3.8 6.6,-0.4 -3.4,2.9 3.2,0.8 6.8,-0.5 5.8,-3.7 2.8,-2.5 -0.2,-2.3 z m -39.1,2.5 1.8,-2.3 -3.1,-0.5 -5.7,1.7 -0.7,4.7 -6.1,-0.4 -2.8,-2.9 -8.2,-1.6 -5.4,1.4 -11.6,4.8 4.1,0.8 17.8,-0.5 -10.6,2.2 -1.5,1.6 5.9,-0.1 12.2,-2.2 13.8,-0.8 5.1,-2.3 2.3,-2.4 -3.7,-0.2 -4.3,0.8 0.7,-1.8 z m 55.2,-4.3 -7.1,-0.3 -3.8,2 2.6,1.5 7,0.6 1.4,2.1 -2.2,2.4 -1.5,2.8 8.5,1.6 5.5,0.6 8,-0.1 11.6,-0.8 4.3,0.6 6.7,-1 3.5,-1.4 1,-2 -2.3,-1.9 -5.8,-0.3 -8,0.4 -7,1.1 -5.1,-0.4 -4.8,-0.3 -1.2,-1.1 -3.1,-1.1 2.8,-1.9 -1.4,-1.6 -7.3,0.1 -2.3,-1.6 z m -75,-2.6 -6,0.7 -5.5,-0.1 -12.1,3.1 -11.6,3.7 0,0 3.6,1 7,-0.7 9.8,-2.1 3.8,-0.3 5.2,-1.6 5.8,-3.7 z m 80.5,0.6 1,-0.5 -1.5,-0.9 -7.2,-0.1 -0.6,1.3 6.4,0.3 1.9,-0.1 z m -58.4,-0.8 3.2,-1.4 -4.1,-0.8 -5.9,0.5 -5.1,1.5 3.3,1.5 8.6,-1.3 z m 7.8,-4.2 -3.3,-0.9 -1.6,-0.2 -5.7,1.3 -1,0.7 6,0 5.6,-0.9 z m 46.4,2.5 3,-1.7 -2.3,-1.6 -1.7,-0.3 -4.4,-0.1 -2.1,1.8 -0.7,1.8 1.6,1.1 6.6,-1 z m -13.7,-1.2 0.1,-2.2 -7.4,-1.7 -6.1,-0.6 -2.1,1.7 2.8,1.1 -5.3,1.4 7.7,0.2 4,1.5 5.2,0.5 1.1,-1.9 z m 53.7,-6.1 0.6,-2.8 -4.7,-0.8 -4.7,-0.9 -1.6,-2.2 -8.2,0.2 0.3,0.9 -3.9,0.3 -4.1,1.3 -4.9,1.9 -0.3,1.9 2,1.5 6.5,0 -4.3,1.2 -2.1,1.6 1.6,1.9 6.7,0.6 6.8,-0.4 10.5,-3.4 6.4,-1.3 -2.6,-1.5 z m 78.5,-13.8 -7,-0.2 -6.9,-0.3 -10.2,0.6 -1.4,-0.4 -10.3,0.2 -6.4,0.4 -5.1,0.6 -5,2 -2.3,-1 -3.9,-0.2 -6.7,1.4 -7.4,0.6 -4.1,0.1 -6,0.8 -1.1,1.3 2.5,1.2 0.8,1.6 4.4,1.5 12.4,-0.3 7.2,0.5 -7.2,1.5 -2.2,-0.4 -9.3,-0.2 -1.1,2.2 3,1.7 -2.8,1.6 -7.5,1.1 -4.9,1.7 4.8,0.9 1.7,3 -7.5,-2 -2.5,0.3 -2,3.4 -8,1.1 -2,2.3 6.7,0.3 4.9,0.6 11.7,-0.8 8.4,1.4 12.6,-3 1,-1.1 -6.4,0.2 0.5,-1.1 6.5,-1.4 3.6,-1.9 6.8,-1.3 5,-1.6 -0.8,-2.2 3.3,-0.8 -4.3,-0.6 11.1,-0.4 3.2,-0.9 7.9,-0.8 9.3,-3.5 6.8,-1.1 10.3,-2.5 -7.4,0 3.9,-0.9 9,-0.8 9.7,-1.6 1.1,-1.1 -5.2,-1 -6.7,-0.4 -8.5,-0.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CH" title="0" data-name="Switzerland"
              data-id="CH"
              d="m 1024.3,270.6 -5.4,-1.9 -1,1.4 -4.2,0 -1.3,1 -2.3,-0.6 0.2,1.6 -3.5,3.5 0,2.8 2.4,-0.9 1.8,2.7 2.2,1.3 2.4,-0.3 2.7,-2.1 0.9,1 2.4,-0.2 0.9,-2.5 3.8,0.8 2.1,-1.1 0.3,-2.5 -2.6,-0.2 -2.3,-1.1 0.7,-1.6 -0.2,-1.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CL" title="0" data-name="Chile"
              data-id="CL"
              d="m 648.4,905.2 -3.7,-0.7 -3.3,2.5 0.2,4.1 -1.2,2.8 -7.2,-2.2 -8.6,-4 -4.5,-1.3 9.7,6.8 6.3,3.2 7.5,3.4 5.3,0.9 4.3,1.8 3,0.5 2.3,0.1 3.2,-1.8 0.5,-2.4 -2.9,-0.2 -5,0 -5.9,-13.5 z m -47.3,-196.3 -3.7,-7.1 1.1,-6.2 -3.2,-2.7 -1.2,-4.6 -3.1,-4.3 -1.2,3.3 -2.7,1.6 2.1,9 1.5,10.4 -0.1,14.2 0,13.2 0.9,12.3 -1.9,7.8 2.1,7.8 -0.5,5.3 3.2,9.5 -0.1,9.5 -1.2,10.2 -0.6,10.5 -2.1,0.2 2.4,7.3 3.3,6.3 -1.1,4.3 1.9,11.6 1.5,8.8 3.5,0.9 -1.1,-7.7 4,1.6 1.8,12.7 -6.4,-2.1 2,10.2 -2.7,5.5 8.2,1.8 -3.4,4.8 0.2,6 5,10.6 4.2,4.1 0.2,3.6 3.3,3.8 7.5,3.5 0,0 7.4,4.2 6.2,2 2,-0.1 -1.8,-5.7 3.4,-2.2 1.7,-1.5 4.2,0 -4.8,-0.9 -12,-0.8 -3.5,-3.6 -1.8,-4.6 -3.1,0.4 -2.6,-2.2 -3.1,-6.6 2.7,-2.7 0.1,-3.9 -1.8,-3.2 0.7,-5.3 -1.1,-8.2 -1.8,-3.7 1.8,-1.1 -1.3,-2.3 -2.8,-1.3 0.8,-2.6 -3.1,-2.3 -3.6,-7.1 1.6,-1.2 -3.3,-7.6 -0.7,-6.4 -0.3,-5.7 2.5,-2.4 -3.3,-6.3 -1.5,-5.9 2.9,-4.3 -1.4,-5.4 1.6,-6.2 -1.3,-5.9 -1.6,-1.2 -4.9,-10.9 2.1,-6.5 -1.7,-6.2 0.9,-5.8 2.6,-5.9 3.2,-4 -2,-2.5 0.9,-2 -1.6,-10.6 5.6,-3.2 1.1,-6.6 -0.9,-1.6 -3.8,0.9 -3.1,-8.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CN" title="0" data-name="China"
              data-id="CN"
              d="m 1587.2,453.3 0.6,-3.6 2,-2.8 -1.6,-2.5 -3.2,-0.1 -5.8,1.8 -2.2,2.8 1,5.5 4.9,2 4.3,-3.1 z m 13.2,-196.5 -6.1,-6.1 -4.4,-3.7 -3.8,-2.7 -7.7,-6.1 -5.9,-2.3 -8.5,-1.8 -6.2,0.2 -5.1,1.1 -1.7,3 3.7,1.5 2.5,3.3 -1.2,2 0.1,6.5 1.9,2.7 -4.4,3.9 -7.3,-2.3 0.6,4.6 0.3,6.2 2.7,2.6 2.4,-0.8 5.4,1 2.5,-2.3 5.1,2 7.2,4.3 0.7,2.2 -4.3,-0.7 -6.8,0.8 -2.4,1.8 -1.4,4.1 -6.3,2.4 -3.1,3.3 -5.9,-1.3 -3.2,-0.5 -0.4,4 2.9,2.3 1.9,2.1 -2.5,2 -1.9,3.3 -4.9,2.2 -7.5,0.2 -7.2,2.2 -4.4,3.3 -3.2,-2 -6.2,0.1 -9.3,-3.8 -5.5,-0.9 -6.4,0.8 -11.2,-1.3 -5.5,0.1 -4.7,-3.6 -4.9,-5.7 -3.4,-0.7 -7.9,-3.8 -7.2,-0.9 -6.4,-1 -3,-2.7 -1.3,-7.3 -5.8,-5 -8.1,-2.3 -5.7,-3.3 -3.3,-4.4 -1.7,0.5 -1.8,4.2 -3.8,0.6 2.5,6.2 -1.6,2.8 -10.7,-2 1,11.1 -2,1.4 -9,2.4 8.7,10.7 -2.9,1.6 1.7,3.5 -0.2,1.4 -6.8,3.4 -1,2.4 -6.4,0.8 -0.6,4 -5.7,-0.9 -3.2,1.2 -4,3 1.1,1.5 -1,1.5 3,5.9 1.6,-0.6 3.5,1.4 0.6,2.5 1.8,3.7 1.4,1.9 4.7,3 2.9,5 9.4,2.6 7.6,7.5 0.8,5.2 3,3.3 0.6,3.3 -4.1,-0.9 3.2,7 6.2,4 8.5,4.4 1.9,-1.5 4.7,2 6.4,4.1 3.2,0.9 2.5,3.1 4.5,1.2 5,2.8 6.4,1.5 6.5,0.6 3,-1.4 1.5,5.1 2.6,-4.8 2.6,-1.6 4.2,1.5 2.9,0.1 2.7,1.8 4.2,-0.8 3.9,-4.8 5.3,-4 4.9,1.5 3.2,-2.6 3.5,3.9 -1.2,2.7 6.1,0.9 3,-0.4 2.7,3.7 2.7,1.5 1.3,4.9 0.8,5.3 -4.1,5.3 0.7,7.5 5.6,-1 2.3,5.8 3.7,1.3 -0.8,5.2 4.5,2.4 2.5,1.2 3.8,-1.8 0.6,2.6 0.7,1.5 2.9,0.1 -1.9,-7.2 2.7,-1 2.7,-1.5 4.3,0 5.3,-0.7 4.1,-3.4 3,2.4 5.2,1.1 -0.2,3.7 3,2.6 5.9,1.6 2.4,-1 7.7,2 -0.9,2.5 2.2,4.6 3,-0.4 0.8,-6.7 5.6,-0.9 7.2,-3.2 2.5,-3.2 2.3,2.1 2.8,-2.9 6.1,-0.7 6.6,-5.3 6.3,-5.9 3.3,-7.6 2.3,-8.4 2.1,-6.9 2.8,-0.5 -0.1,-5.1 -0.8,-5.1 -3.8,-2 -2.5,-3.4 2.8,-1.7 -1.6,-4.7 -5.4,-4.9 -5.4,-5.8 -4.6,-6.3 -7.1,-3.5 0.9,-4.6 3.8,-3.2 1,-3.5 6.7,-1.8 -2.4,-3.4 -3.4,-0.2 -5.8,-2.5 -3.9,4.6 -4.9,-1.9 -1.5,-2.9 -4.7,-1 -4.7,-4.4 1.2,-3 5,-0.3 1.2,-4.1 3.6,-4.4 3.4,-2.2 4.4,3.3 -1.9,4.2 2.3,2.5 -1.4,3 4.8,-1.8 2.4,-2.9 6.3,-1.9 2.1,-4 3.8,-3.4 1,-4.4 3.6,2 4.6,0.2 -2.7,-3.3 6.3,-2.6 -0.1,-3.5 5.5,3.6 0,0 -1.9,-3.1 2.5,-0.1 -3.8,-7.3 -4.7,-5.3 2.9,-2.2 6.8,1.1 -0.6,-6 -2.8,-6.8 0.4,-2.3 -1.3,-5.6 -6.9,1.8 -2.6,2.5 -7.5,0 -6,-5.8 -8.9,-4.5 -9.9,-1.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CI" title="0" data-name="C??te d'Ivoire"
              data-id="CI"
              d="m 946.5,506.2 -2.3,0.9 -1.3,0.8 -0.9,-2.7 -1.6,0.7 -1,-0.1 -1,1.9 -4.3,-0.1 -1.6,-1 -0.7,0.6 -1.1,0.5 -0.5,2.2 1.3,2.6 1.3,5.1 -2,0.8 -0.6,0.9 0.4,1.2 -0.3,2.8 -0.9,0 -0.3,1.8 0.6,3.1 -1.2,2.8 1.6,1.8 1.8,0.4 2.3,2.7 0.2,2.5 -0.5,0.8 -0.5,5.2 1.1,0.2 5.6,-2.4 3.9,-1.8 6.6,-1.1 3.6,-0.1 3.9,1.3 2.6,-0.1 0.2,-2.5 -2.4,-5.5 1.5,-7.2 2.3,-5.3 -1.4,-9.1 -3.8,-1.6 -2.7,0.2 -1.9,1.6 -2.5,-1.3 -1,-2.1 -2.5,-1.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CM" title="0" data-name="Cameroon"
              data-id="CM"
              d="m 1060.1,502.9 0.2,-4.3 -0.5,-4.2 -2.2,-4.1 -1.6,0.4 -0.2,2 2.3,2.6 -0.6,1.1 -0.3,2.1 -4.6,5 -1.5,4 -0.7,3.3 -1.2,1.4 -1.1,4.5 -3,2.6 -0.8,3.2 -1.2,2.6 -0.5,2.6 -3.9,2.2 -3.2,-2.6 -2.1,0.1 -3.3,3.7 -1.6,0.1 -2.7,6.1 -1.4,4.5 0,1.8 1.4,0.9 1.1,2.8 2.6,1.1 2.2,4.2 -0.8,5 9.2,0.2 2.6,-0.4 3.4,0.8 3.4,-0.8 0.7,0.3 7.1,0.3 4.5,1.7 4.5,1.5 0.4,-3.5 -0.6,-1.8 -0.3,-2.9 -2.6,-2.1 -2.1,-3.2 -0.5,-2.3 -2.6,-3.3 0.4,-1.9 -0.6,-2.7 0.4,-5 1.4,-1.1 2.7,-6.5 0.9,-1.7 -1.8,-4.4 -0.8,-2.6 -2.5,-1.1 -3.3,-3.7 1.2,-3 2.5,0.6 1.6,-0.4 3.1,0.1 -3.1,-5.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CD" title="0" data-name="Dem. Rep. Congo"
              data-id="CD"
              d="m 1124.9,539.4 -4.3,-0.7 -2,0.6 -0.9,1.5 -1.8,0.2 -2.2,-1.3 -6.2,3.1 -2.6,-0.6 -0.8,0.5 -1.6,3.8 -4.2,-1.2 -4.1,-0.6 -3.6,-2.4 -4.6,-2.1 -3,2 -2.2,3.2 -0.5,4.5 -0.3,3.8 -1.6,3.4 -1.1,4 -0.7,5.6 0.3,3.6 -0.9,2.2 -0.2,2.4 -0.6,2 -3.7,3.1 -2.6,3.2 -2.5,6.2 0.2,5.3 -1.4,2 -3.3,3.1 -3.4,4 -2,-1.1 -0.4,-1.8 -3.1,-0.1 -1.9,2.4 -1.5,-0.6 -2,1.3 -0.9,1.7 -0.2,2.7 -1.5,0.7 0.8,2 2.3,-0.9 1.7,0.1 1.9,-0.7 16.6,0.1 1.3,4.7 1.6,3.8 1.3,2.1 2.1,3.3 3.7,-0.5 1.9,-0.9 3,0.9 0.9,-1.6 1.5,-3.7 3.4,-0.3 0.3,-1.1 2.9,0 -0.5,2.3 6.8,0 0,4 1.2,2.4 -0.9,3.8 0.3,4 1.9,2.3 -0.5,7.6 1.4,-0.6 2.4,0.2 3.5,-1 2.6,0.4 1.9,0.1 0.3,2 2.6,-0.1 3.5,0.6 1.8,2.8 4.5,0.9 3.4,-2 1.2,3.4 4.3,0.8 2,2.8 2.1,3.5 4.3,0 -0.3,-6.9 -1.5,1.2 -3.9,-2.5 -1.4,-1.1 0.8,-6.4 1.2,-7.5 -1.2,-2.8 1.6,-4.1 1.6,-0.7 7.5,-1.1 1,0.3 0.2,-1.1 -1.5,-1.7 -0.7,-3.5 -3.4,-3.5 -1.8,-4.5 1,-2.7 -1.5,-3.6 1.1,-10.2 0.1,0.1 -0.1,-1.1 -1.4,-2.9 0.6,-3.5 0.8,-0.4 0.2,-3.8 1.6,-1.8 0.1,-4.8 1.3,-2.4 0.3,-5.1 1.2,-3 2.1,-3.3 2.2,-1.7 1.8,-2.3 -2.3,-0.8 0.3,-7.5 0,0 -5,-4.2 -1.4,-2.7 -3.1,1.3 -2.6,-0.4 -1.5,1.1 -2.5,-0.8 -3.5,-5.2 -1.8,0.6 -3.6,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CG" title="0" data-name="Congo"
              data-id="CG"
              d="m 1080.3,549.9 -3.6,-0.4 -3.8,-1.1 -3.3,3.4 -2.9,5.9 -0.4,3.5 -4.5,-1.5 -4.5,-1.7 -7.1,-0.3 -0.4,2.8 1.5,3.3 4.2,-0.5 1.4,1.2 -2.4,7.4 2.7,3.8 0.6,4.9 -0.8,4.3 -1.7,3 -4.9,-0.3 -3,-3 -0.5,2.8 -3.8,0.8 -1.9,1.6 2.1,4.2 -4.3,3.5 4.6,6.7 2.2,-2.7 1.8,-1.1 2,2.2 1.5,0.6 1.9,-2.4 3.1,0.1 0.4,1.8 2,1.1 3.4,-4 3.3,-3.1 1.4,-2 -0.2,-5.3 2.5,-6.2 2.6,-3.2 3.7,-3.1 0.6,-2 0.2,-2.4 0.9,-2.2 -0.3,-3.6 0.7,-5.6 1.1,-4 1.6,-3.4 0.3,-3.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CO" title="0" data-name="Colombia"
              data-id="CO"
              d="m 578.3,497.2 1.2,-2.1 -1.3,-1.7 -2,-0.4 -2.9,3.1 -2.3,1.4 -4.6,3.2 -4.3,-0.5 -0.5,1.3 -3.6,0.1 -3.3,3 -1.4,5.4 -0.1,2.1 -2.4,0.7 -4.4,4.4 -2.9,-0.2 -0.7,0.9 1.1,3.8 -1.1,1.9 -1.8,-0.5 -0.9,3.1 2.2,3.4 0.6,5.4 -1.2,1.6 1.1,5.9 -1.2,3.7 2,1.5 -2.2,3.3 -2.5,4 -2.8,0.4 -1.4,2.3 0.2,3.2 -2.1,0.5 0.8,2 5.6,3.6 1,-0.1 1.4,2.7 4.7,0.9 1.6,-1 2.8,2.1 2.4,1.5 1.5,-0.6 3.7,3 1.8,3 2.7,1.7 3.4,6.7 4.2,0.8 3,-1.7 2.1,1.1 3.3,-0.6 4.4,3 -3.5,6.5 1.7,0.1 2.9,3.4 2.2,-17.4 0.1,-2.8 -0.9,-3.6 -2.5,-2.4 0,-4.6 3.2,-1 1.1,0.6 0.2,-2.4 -3.3,-0.7 0,-3.9 10.9,0.1 1.9,-2.2 1.6,2 1,3.8 1.1,-0.8 -1.7,-6.4 -1.4,-2.2 -2,-1.4 2.9,-3.1 -0.2,-1.5 -1.5,-1.9 -1,-4.2 0.5,-4.6 1.3,-2.1 1.2,-3.4 -2,-1.1 -3.2,0.7 -4,-0.3 -2.3,0.7 -3.8,-5.5 -3.2,-0.8 -7.2,0.6 -1.3,-2.2 -1.3,-0.6 -0.2,-1.3 0.8,-2.4 -0.4,-2.5 -1.1,-1.4 -0.6,-2.9 -2.9,-0.5 1.8,-3.7 0.9,-4.5 1.8,-2.4 2.2,-1.8 1.6,-3.2 3.7,-1.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CR" title="0" data-name="Costa Rica"
              data-id="CR"
              d="m 509.1,502.6 -1.4,1.3 -1.7,-0.4 -0.8,-1.3 -1.7,-0.5 -1.4,0.8 -3.5,-1.7 -0.9,0.8 -1.4,1.2 1.5,0.9 -0.9,2 -0.1,2 0.7,1.3 1.7,0.6 1.2,1.8 1.2,-1.6 -0.3,-1.8 1.4,1.1 0.3,1.9 1.9,0.8 2.1,1.3 1.5,1.5 0.1,1.4 -0.7,1.1 1.1,1.3 2.9,1.4 0.4,-1.2 0.5,-1.3 -0.1,-1.2 0.8,-0.7 -1.1,-1 0.1,-2.5 2.2,-0.6 -2.4,-2.7 -2,-2.6 -1.2,-3.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CU" title="0" data-name="Cuba"
              data-id="CU"
              d="m 539,427.3 -4.9,-2.1 -4.3,-0.1 -4.7,-0.5 -1.4,0.7 -4.2,0.6 -3,1.3 -2.7,1.4 -1.5,2.3 -3.1,2 2.2,0.6 2.9,-0.7 0.9,-1.6 2.3,-0.1 4.4,-3.3 5.4,0.3 -2.3,1.6 1.8,1.3 7,1 1.5,1.3 4.9,1.7 3.2,-0.2 0.8,3.6 1.7,1.8 3.5,0.4 2.1,1.7 -4.1,3.5 7.9,-0.6 3.8,0.5 3.7,-0.3 3.8,-0.8 0.8,-1.5 -3.9,-2.6 -4,-0.3 0.6,-1.7 -3.1,-1.3 -1.9,0 -3,-2.8 -4.2,-4 -1.8,-1.5 -5.2,0.8 -1.9,-2.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CZ" title="0" data-name="Czech Rep."
              data-id="CZ"
              d="m 1049.4,248.5 -2.1,0.6 -1.4,-0.7 -1.1,1.2 -3.4,1.2 -1.7,1.5 -3.4,1.3 1,1.9 0.7,2.6 2.6,1.5 2.9,2.6 3.8,2 2.6,-2.5 1.7,-0.5 4,1.9 2.3,-0.3 2.3,1.2 0.6,-1.4 2.2,0.1 1.6,-0.6 0.1,-0.6 0.9,-0.3 0.2,-1.4 1.1,-0.3 0.6,-1.1 1.5,0 -2.6,-3.1 -3.6,-0.3 -0.7,-2 -3.4,-0.6 -0.6,1.5 -2.7,-1.2 0.1,-1.7 -3.7,-0.6 -2.4,-1.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="DE" title="0" data-name="Germany"
              data-id="DE"
              d="m 1043.6,232.3 -2.4,-1.9 -5.5,-2.4 -2.5,1.7 -4.7,1.1 -0.1,-2.1 -4.9,-1.4 -0.2,-2.3 -3,0.9 -3.6,-0.8 0.4,3.4 1.2,2.2 -3,3 -1,-1.3 -3.9,0.3 -0.9,1.3 1,2 -1,5.6 -1.1,2.3 -2.9,0 1.1,6.4 -0.4,4.2 1,1.4 -0.2,2.7 2.4,1.6 7.1,1.2 -2.3,4.2 -0.5,4.5 4.2,0 1,-1.4 5.4,1.9 1.5,-0.3 2.6,1.7 0.6,-1.6 4.4,0.3 3.4,-1.2 2.4,0.2 1.7,1.3 0.4,-1.1 -1,-4 1.7,-0.8 1.5,-2.9 -2.9,-2.6 -2.6,-1.5 -0.7,-2.6 -1,-1.9 3.4,-1.3 1.7,-1.5 3.4,-1.2 1.1,-1.2 1.4,0.7 2.1,-0.6 -2.3,-3.9 0.1,-2.1 -1.4,-3.3 -2,-2.2 1.2,-1.6 -1.4,-3.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="DJ" title="0" data-name="Djibouti"
              data-id="DJ"
              d="m 1217.8,499.2 -2.5,-1.7 3.1,-1.5 0.1,-2.7 -1.4,-1.9 -1.6,1.5 -2.4,-0.5 -1.9,2.8 -1.8,3 0.5,1.7 0.2,2 3.1,0.1 1.3,-0.5 1.3,1.1 2,-3.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="DK" title="0" data-name="Denmark"
              data-id="DK"
              d="m 1035.9,221.2 -1.7,-3 -6.7,2 0.9,2.5 5.1,3.4 2.4,-4.9 z m -8.6,-5.1 -2.6,-0.9 -0.7,-1.6 1.3,-2 -0.1,-3 -3.6,1.6 -1.5,1.7 -4,0.4 -1.2,1.7 -0.7,1.6 0.4,6.1 2.1,3.4 3.6,0.8 3,-0.9 -1.5,-3 3.1,-4.3 1.4,0.7 1,-2.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="DO" title="0" data-name="Dominican Rep."
              data-id="DO"
              d="m 579.6,457.4 0,1.8 1.4,1 2.6,-4.4 2,-0.9 0.6,1.6 2.2,-0.4 1.1,-1.2 1.8,0.3 2.6,-0.2 2.5,1.3 2.3,-2.6 -2.5,-2.3 -2.4,-0.2 0.3,-1.9 -3,0.1 -0.8,-2.2 -1.4,0.1 -3.1,-1.6 -4.4,-0.1 -0.8,1.1 0.2,3.5 -0.7,2.4 -1.5,1.1 1.2,1.9 -0.2,1.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="DZ" title="0" data-name="Algeria"
              data-id="DZ"
              d="m 1021,336.9 -3.6,0.4 -2.2,-1.5 -5.6,0 -4.9,2.6 -2.7,-1 -8.7,0.5 -8.9,1.2 -5,2 -3.4,2.6 -5.7,1.2 -5.1,3.5 2,4.1 0.3,3.9 1.8,6.7 1.4,1.4 -1,2.5 -7,1 -2.5,2.4 -3.1,0.5 -0.3,4.7 -6.3,2.5 -2.1,3.2 -4.4,1.7 -5.4,1 -8.9,4.7 -0.1,7.5 0,0.4 -0.1,1.2 20.3,15.5 18.4,13.9 18.6,13.8 1.3,3 3.4,1.8 2.6,1.1 0.1,4 6.1,-0.6 7.8,-2.8 15.8,-12.5 18.6,-12.2 -2.5,-4 -4.3,-2.9 -2.6,1.2 -2,-3.6 -0.2,-2.7 -3.4,-4.7 2.1,-2.6 -0.5,-4 0.6,-3.5 -0.5,-2.9 0.9,-5.2 -0.4,-3 -1.9,-5.6 -2.6,-11.3 -3.4,-2.6 0,-1.5 -4.5,-3.8 -0.6,-4.8 3.2,-3.6 1.1,-5.3 -1,-6.2 1,-3.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="EC" title="0" data-name="Ecuador"
              data-id="EC"
              d="m 553.1,573.1 -2.4,-1.5 -2.8,-2.1 -1.6,1 -4.7,-0.9 -1.4,-2.7 -1,0.1 -5.6,-3.6 -3.9,2.5 -3.1,1.4 0.4,2.6 -2.2,4.1 -1,3.9 -1.9,1 1,5.8 -1.1,1.8 3.4,2.7 2.1,-2.9 1.3,2.8 -2.9,4.7 0.7,2.7 -1.5,1.5 0.2,2.3 2.3,-0.5 2.3,0.7 2.5,3.2 3.1,-2.6 0.9,-4.3 3.3,-5.5 6.7,-2.5 6,-6.7 1.7,-4.1 -0.8,-4.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="EG" title="0" data-name="Egypt"
              data-id="EG"
              d="m 1129.7,374.8 -5.5,-1.9 -5.3,-1.7 -7.1,0.2 -1.8,3 1.1,2.7 -1.2,3.9 2,5.1 1.3,22.7 1,23.4 22.1,0 21.4,0 21.8,0 -1,-1.3 -6.8,-5.7 -0.4,-4.2 1,-1.1 -5.3,-7 -2,-3.6 -2.3,-3.5 -4.8,-9.9 -3.9,-6.4 -2.8,-6.7 0.5,-0.6 4.6,9.1 2.7,2.9 2,2 1.2,-1.1 1.2,-3.3 0.7,-4.8 1.3,-2.5 -0.7,-1.7 -3.9,-9.2 0,0 -2.5,1.6 -4.2,-0.4 -4.4,-1.5 -1.1,2.1 -1.7,-3.2 -3.9,-0.8 -4.7,0.6 -2.1,1.8 -3.9,2 -2.6,-1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ER" title="0" data-name="Eritrea"
              data-id="ER"
              d="m 1198.1,474 -3.2,-3.1 -1.8,-5.9 -3.7,-7.3 -2.6,3.6 -4,1 -1.6,2 -0.4,4.2 -1.9,9.4 0.7,2.5 6.5,1.3 1.5,-4.7 3.5,2.9 3.2,-1.5 1.4,1.3 3.9,0.1 4.9,2.5 1.6,2.2 2.5,2.1 2.5,3.7 2,2.1 2.4,0.5 1.6,-1.5 -2.8,-1.9 -1.9,-2.2 -3.2,-3.7 -3.2,-3.6 -7.9,-6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="EE" title="0" data-name="Estonia"
              data-id="EE"
              d="m 1093.2,197.5 -5.5,0.9 -5.4,1.6 0.9,3.4 3.3,2.1 1.5,-0.8 0.1,3.5 3.7,-1 2.1,0.7 4.4,2.2 3.8,0 1.6,-1.9 -2.5,-5.5 2.6,-3.4 -0.9,-1 0,0 -4.6,0.2 -5.1,-1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ET" title="0" data-name="Ethiopia"
              data-id="ET"
              d="m 1187.6,477 -1.5,4.7 -6.5,-1.3 -0.7,5.5 -2.1,6.2 -3.2,3.2 -2.3,4.8 -0.5,2.6 -2.6,1.8 -1.4,6.7 0,0.7 0.2,5 -0.8,2 -3,0.1 -1.8,3.6 3.4,0.5 2.9,3.1 1,2.5 2.6,1.5 3.5,6.9 2.9,1.1 0,3.6 2,2.1 3.9,0 7.2,5.4 1.8,0 1.3,-0.1 1.2,0.7 3.8,0.5 1.6,-2.7 5.1,-2.6 2.3,2.1 3.8,0 1.5,-2 3.6,-0.1 4.9,-4.5 7.4,-0.3 15.4,-19.1 -4.8,0.1 -18.5,-7.6 -2.2,-2.2 -2.1,-3.1 -2.2,-3.5 1.1,-2.3 -1.3,-1.1 -1.3,0.5 -3.1,-0.1 -0.2,-2 -0.5,-1.7 1.8,-3 1.9,-2.8 -2,-2.1 -2.5,-3.7 -2.5,-2.1 -1.6,-2.2 -4.9,-2.5 -3.9,-0.1 -1.4,-1.3 -3.2,1.5 -3.5,-2.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="FI" title="0" data-name="Finland"
              data-id="FI"
              d="m 1093.4,144.4 0.8,-3.8 -5.7,-2.1 -5.8,1.8 -1.1,3.9 -3.4,2.4 -4.7,-1.3 -5.3,0.3 -5.1,-2.9 -2.1,1.4 5.9,2.7 7.2,3.7 1.7,8.4 1.9,2.2 6.4,2.6 0.9,2.3 -2.6,1.2 -8.7,6.1 -3.3,3.6 -1.5,3.3 2.9,5.2 -0.1,5.7 4.7,1.9 3.1,3.1 7.1,-1.2 7.5,-2.1 8,-0.5 0,0 7.9,-7.4 3.3,-3.3 0.9,-2.9 -7.3,-3.9 0.9,-3.7 -4.9,-4.1 1.7,-4.8 -6.4,-6.3 2.8,-4.1 -7.2,-3.7 -0.4,-3.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" id="FJ" title="0" data-name="Fiji" data-id="FJ"
              d="m 1976.7,674.4 -3.7,2 -1.9,0.3 -3.1,1.3 0.2,2.4 3.9,-1.3 3.9,-1.6 0.7,-3.1 z m -11,8.1 -1.6,1 -2.3,-0.8 -2.7,2.2 -0.2,2.8 2.9,0.8 3.6,-0.9 1.8,-3.3 -1.5,-1.8 z"
              style=" fill-rule:evenodd" inkscape:connector-curvature="0" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GA" title="0" data-name="Gabon"
              data-id="GA"
              d="m 1050.2,557.7 -0.7,-0.3 -3.4,0.8 -3.4,-0.8 -2.6,0.4 0,7.6 -8.2,0 -1.9,0.3 -1.1,4.8 -1.3,4.6 -1.3,2 -0.2,2.1 3.4,6.6 3.7,5.3 5.8,6.4 4.3,-3.5 -2.1,-4.2 1.9,-1.6 3.8,-0.8 0.5,-2.8 3,3 4.9,0.3 1.7,-3 0.8,-4.3 -0.6,-4.9 -2.7,-3.8 2.4,-7.4 -1.4,-1.2 -4.2,0.5 -1.5,-3.3 0.4,-2.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GB" title="0" data-name="United Kingdom"
              data-id="GB"
              d="m 950,227.5 -4.9,-3.7 -3.9,0.3 0.8,3.2 -1.1,3.2 2.9,-0.1 3.5,1.3 2.7,-4.2 z m 13,-24.3 -5.5,0.5 -3.6,-0.4 -3.7,4.8 -1.9,6.1 2.2,3 0.1,5.8 2.6,-2.8 1.4,1.6 -1.7,2.7 1,1.6 5.7,1.1 0.1,0 3.1,3.8 -0.8,3.5 0,0 -7.1,-0.6 -1,4 2.6,3.3 -5.1,1.9 1.3,2.4 7.5,1 0,0 -4.3,1.3 -7.3,6.5 2.5,1.2 3.5,-2.3 4.5,0.7 3.3,-2.9 2.2,1.2 8.3,-1.7 6.5,0.1 4.3,-3.3 -1.9,-3.1 2.4,-1.8 0.5,-3.9 -5.8,-1.2 -1.3,-2.3 -2.9,-6.9 -3.2,-1 -4.1,-7.1 -0.4,-0.6 -4.8,-0.4 4.2,-5.3 1.3,-4.9 -5,0 -4.7,0.8 5,-6.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GE" title="0" data-name="Georgia"
              data-id="GE"
              d="m 1200,300.2 -7.5,-2.9 -7.7,-1 -4.5,-1.1 -0.5,0.7 2.2,1.9 3,0.7 3.4,2.3 2.1,4.2 -0.3,2.7 5.4,-0.3 5.6,3 6.9,-1 1.1,-1 4.2,1.8 2.8,0.4 0.6,-0.7 -3.2,-3.4 1.1,-0.9 -3.5,-1.4 -2.1,-2.5 -5.1,-1.3 -2.9,1 -1.1,-1.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GH" title="0" data-name="Ghana"
              data-id="GH"
              d="m 976.8,502.1 -2.6,-0.5 -1.8,1 -2.4,-0.5 -9.7,0.3 -0.2,3.6 0.8,4.8 1.4,9.1 -2.3,5.3 -1.5,7.2 2.4,5.5 -0.2,2.5 5,1.8 5,-1.9 3.2,-2.1 8.7,-3.8 -1.2,-2.2 -1.5,-4 -0.4,-3.2 1.2,-5.7 -1.4,-2.3 -0.6,-5.1 0.1,-4.6 -2.4,-3.3 0.4,-1.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GN" title="0" data-name="Guinea"
              data-id="GN"
              d="m 912.4,493 -0.8,0.4 -3,-0.5 -0.4,0.7 -1.3,0.1 -4,-1.5 -2.7,-0.1 -0.1,2.1 -0.6,0.7 0.4,2.1 -0.8,0.9 -1.3,0 -1.4,1 -1.7,-0.1 -2.6,3.1 1.6,1.1 0.8,1.4 0.7,2.8 1.3,1.2 1.5,0.9 2.1,2.5 2.4,3.7 3,-2.8 0.7,-1.7 1,-1.4 1.5,-0.2 1.3,-1.2 4.5,0 1.5,2.3 1.2,2.7 -0.2,1.8 0.9,1.7 0,2.3 1.5,-0.3 1.2,-0.2 1.5,-0.7 2.3,3.9 -0.4,2.6 1.1,1.3 1.6,0.1 1.1,-2.6 1.6,0.2 0.9,0 0.3,-2.8 -0.4,-1.2 0.6,-0.9 2,-0.8 -1.3,-5.1 -1.3,-2.6 0.5,-2.2 1.1,-0.5 -1.7,-1.8 0.3,-1.9 -0.7,-0.7 -1.2,0.6 0.2,-2.1 1.2,-1.6 -2.3,-2.7 -0.6,-1.7 -1.3,-1.4 -1.1,-0.2 -1.3,0.9 -1.8,0.8 -1.6,1.4 -2.4,-0.5 -1.5,-1.6 -0.9,-0.2 -1.5,0.8 -0.9,0 -0.3,-2.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GM" title="0" data-name="Gambia"
              data-id="GM"
              d="m 882.8,488.5 5,0.1 1.4,-0.9 1,0 2.1,-1.5 2.4,1.4 2.4,0.1 2.4,-1.5 -1.1,-1.8 -1.8,1.1 -1.8,-0.1 -2.1,-1.5 -1.8,0.1 -1.3,1.5 -6.1,0.2 -0.7,2.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GW" title="0" data-name="Guinea-Bissau"
              data-id="GW"
              d="m 900.2,492.1 -10.3,-0.3 -1.5,0.7 -1.8,-0.2 -3,1.1 0.3,1.3 1.7,1.4 0,0.9 1.2,1.8 2.4,0.5 2.9,2.6 2.6,-3.1 1.7,0.1 1.4,-1 1.3,0 0.8,-0.9 -0.4,-2.1 0.6,-0.7 0.1,-2.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GQ" title="0" data-name="Eq. Guinea"
              data-id="GQ" d="m 1040.1,557.8 -9.2,-0.2 -1.9,7.2 1,0.9 1.9,-0.3 8.2,0 0,-7.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GR" title="0" data-name="Greece"
              data-id="GR"
              d="m 1101.9,344.9 -0.8,2.8 6.6,1.2 0,1.1 7.6,-0.6 0.5,-1.9 -2.8,0.8 0,-1.1 -3.9,-0.5 -4.1,0.4 -3.1,-2.2 z m 11.5,-37.4 -2.7,-1.6 0.3,3 -4.6,0.6 -3.9,-2.1 -3.9,1.7 -3.8,-0.2 -1,0.2 -0.7,1.1 -2.8,-0.1 -1.9,1.3 -3.3,0.6 0,1.6 -1.6,0.9 -0.1,2.1 -2.1,3 0.5,1.9 2.9,3.6 2.3,3 1.3,4.3 2.3,5.1 4.6,2.9 3.4,-0.1 -2.4,-5.7 3.3,-0.7 -1.9,-3.3 5,1.7 -0.4,-3.7 -2.7,-1.8 -3.2,-3 1.8,-1.4 -2.8,-3 -1.6,-3.8 0.9,-1.3 3,3.2 2.9,0 2.5,-1 -3.9,-3.6 6.1,-1.6 2.7,0.6 3.2,0.2 1.1,-0.7 1.2,-3.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GL" title="0" data-name="Greenland"
              data-id="GL"
              d="m 887.4,76.3 -26,-0.4 -11.8,0.3 -5,1.3 -11.5,-0.1 -12.7,2.1 -1.6,1.7 6.7,2.1 -6.2,-1.3 -4.5,-0.3 -7,-1.4 -10.6,2.1 -2.7,-1.2 -10.4,0 -10.9,0.6 -8.9,1 -0.2,1.8 -5.3,0.5 -14.6,2.9 -4.6,1.7 8.1,1.5 -2.8,1.6 -14.9,2.2 -15.5,2.2 -2.2,1.7 6.4,2 14.5,1.2 -7.5,0.2 -10.9,1.5 3.8,3.1 3,1.5 9.4,-0.3 10.1,-0.2 7.6,0.3 8,2.9 -1.4,2.1 3.6,1.9 1.4,5.3 1,3.6 1.4,1.9 -7,4.8 2.6,1.3 4.4,-0.8 2.6,1.8 5.3,3.4 -7.5,-1.4 -3.8,0 -3,2.8 -1.5,3.6 4.2,1.8 4,-0.8 2.6,-0.8 5.5,-1.9 -2.8,4.2 -2.6,2.3 -7.1,2 -7,6.3 2,2 -3.4,4 3.7,5.2 -1.5,5 0.7,3.7 4.8,7.1 0.8,5.6 3.1,3.2 8.9,0 5,4.7 6.5,-0.3 4.1,-5.7 3.5,-4.8 -0.3,-4.4 8.6,-4.6 3.3,-3.7 1.4,-3.9 4.7,-3.5 6.5,-1.3 6.1,-1.4 3,-0.2 10.2,-3.9 7.4,-5.7 4.8,-2.1 4.6,-0.1 12.5,-1.8 12.1,-4.3 11.9,-4.6 -5.5,-0.3 -10.6,-0.2 5.3,-2.8 -0.5,-3.6 4.2,3 2.7,2.1 7.3,-1 -0.6,-4.3 -4.5,-3.1 -5,-1.3 2.4,-1.4 7.2,2.1 0.5,-2.3 -4.1,-3.4 5.4,0 5.6,-0.8 1.7,-1.8 -4,-2.1 8.6,-0.3 -4,-4.3 4.1,-0.5 0.1,-4.2 -6.2,-2.5 6.4,-1.6 5.8,-0.1 -3.6,-3.2 1.1,-5.1 3.6,-2.9 4.9,-3.2 -8,-0.2 11.3,-0.7 2.2,-1 14.6,-2.9 -1.6,-1.7 -10,-0.8 -16.9,1.5 -9.2,1.5 4.5,-2.3 -2.3,-1.4 -7,1.2 -9.7,-1.4 -12.1,0.5 -1.4,-0.7 18.3,-0.4 12.9,-0.2 6.6,-1.4 -19.7,-2.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GT" title="0" data-name="Guatemala"
              data-id="GT"
              d="m 482.8,458.9 -5.1,-0.1 -5.2,0 -0.4,3.6 -2.6,0 1.8,2.1 1.9,1.5 0.5,1.4 0.8,0.4 -0.4,2.1 -7.1,0 -3.3,5.2 0.7,1.2 -0.8,1.5 -0.4,1.9 2.7,2.6 2.5,1.3 3.4,0.1 2.8,1.1 0.2,-1 2.1,-1.6 1.1,-0.7 -0.2,-0.7 1.4,-0.4 1.3,-1.6 -0.3,-1.3 0.5,-1.2 2.8,-1.8 2.8,-2.4 -1.5,-0.8 -0.6,0.9 -1.7,-1.1 -1.6,0 1.2,-7.2 0.7,-5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GY" title="0" data-name="Guyana"
              data-id="GY"
              d="m 656.1,534.2 -2.1,-2.3 -2.9,-3.1 -2.1,-0.1 -0.1,-3.3 -3.3,-4.1 -3.6,-2.4 -4.6,3.8 -0.6,2.3 1.9,2.3 -1.5,1.2 -3.4,1.1 0,2.9 -1.6,1.8 3.7,4.8 2.9,-0.3 1.3,1.5 -0.8,2.8 1.9,0.9 1.2,3 -1.6,2.2 -1,5.4 1.4,3.3 0.3,2.9 3.5,3 2.7,0.3 0.7,-1.3 1.7,-0.2 2.6,-1.1 1.8,-1.7 3.1,0.5 1.4,-0.2 -3.3,-5.6 -0.7,-3.5 -1.8,-0.1 -2.4,-4.6 1.1,-3.3 -0.3,-1.5 3.5,-1.6 1,-5.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="HN" title="0" data-name="Honduras"
              data-id="HN"
              d="m 514.1,476.8 -1.3,-1.8 -1.9,-1 -1.5,-1.4 -1.6,-1.2 -0.8,-0.1 -2.5,-0.9 -1.1,0.5 -1.5,0.2 -1.3,-0.4 -1.7,-0.4 -0.8,0.7 -1.8,0.7 -2.6,0.2 -2.5,-0.6 -0.9,0.4 -0.5,-0.6 -1.6,0.1 -1.3,1.1 -0.6,-0.2 -2.8,2.4 -2.8,1.8 -0.5,1.2 0.3,1.3 -1.3,1.6 1.5,0.5 1.1,1.3 1.6,1 0.1,0.9 2.5,-0.8 1.1,0.5 0.7,0.7 -0.6,2.5 1.7,0.6 0.7,2 1.8,-0.3 0.8,-1.5 0.8,0 0.2,-3.1 1.3,-0.2 1.2,0 1.4,-1.7 1.5,1.3 0.6,-0.8 1.1,-0.7 2.1,-1.8 0.3,-1.3 0.5,0.1 0.8,-1.5 0.6,-0.2 0.9,0.9 1.1,0.3 1.3,-0.8 1.4,0 2,-0.8 0.9,-0.9 1.9,0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="HR" title="0" data-name="Croatia"
              data-id="HR"
              d="m 1065,280.4 -4,-2.6 -1.6,-0.8 -3.9,1.7 -0.3,2.5 -1.7,0.6 0.2,1.7 -2,-0.1 -1.8,-1 -0.8,1 -3.5,-0.2 -0.2,0.1 0,2.2 1.7,2 1.3,-2.6 3.3,1 0.3,2 2.5,2.6 -1,0.5 4.6,4.5 4.8,1.8 3.1,2.2 5,2.3 0,0 0.5,-1 -4.7,-2.4 -2.2,-2.5 -2,-1.4 -2.5,-2.3 -1.3,-1.9 -2.7,-2.9 0.9,-2.5 1.9,1.4 1,-1.3 2.3,-0.1 4.4,1 3.5,-0.1 2.4,1.4 0,0 1.7,-2.3 -1.7,-1.8 -1.5,-2.4 0,0 -1.8,0.9 -4.2,-1.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="HT" title="0" data-name="Haiti"
              data-id="HT"
              d="m 580.6,446.7 -4.6,-1 -3.4,-0.2 -1.4,1.7 3.4,1 -0.3,2.4 2.2,2.8 -2.1,1.4 -4.2,-0.5 -5,-0.9 -0.7,2.1 2.8,1.9 2.7,-1.1 3.3,0.4 2.7,-0.4 3.6,1.1 0.2,-1.8 -1.2,-1.9 1.5,-1.1 0.7,-2.4 -0.2,-3.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="HU" title="0" data-name="Hungary"
              data-id="HU"
              d="m 1079.1,263.8 -1.6,0.4 -1,1.5 -2.2,0.7 -0.6,-0.4 -2.3,1 -1.9,0.2 -0.3,1.2 -4.1,0.8 -1.9,-0.7 -2.6,-1.6 -0.2,2.6 -2.8,0 1.1,1.3 -1.3,4 0.8,0.1 1.2,2.1 1.6,0.8 4,2.6 4.2,1.2 1.8,-0.9 0,0 3.7,-1.6 3.2,0.2 3.8,-1.1 2.6,-4.3 1.9,-4.2 2.9,-1.3 -0.6,-1.6 -2.9,-1.7 -1,0.6 -5.5,-1.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ID" title="0" data-name="Indonesia"
              data-id="ID"
              d="m 1651.9,637.3 0.5,-1.7 -1.8,-1.9 -2.8,-2 -5.3,1.3 7,4.4 2.4,-0.1 z m 20.9,-0.6 4,-4.8 0.1,-1.9 -0.5,-1.3 -5.7,2.6 -2.8,3.9 -0.7,2.1 0.6,0.8 5,-1.4 z m -35.6,-13 -1.6,2.2 -3.1,0.1 -2.2,3.6 3,0.1 3.9,-0.9 6.6,-1.2 -1.2,-2.8 -3.5,0.6 -1.9,-1.7 z m 28.1,0 -5.2,2.3 -3.8,0.5 -3.4,-1.9 -4.5,1.3 -0.2,2.3 7.4,0.8 8.6,-1.8 1.1,-3.5 z m -79.5,-8.4 -0.7,-2.3 -2.3,-0.5 -4.4,-2.4 -6.8,-0.4 -4.1,6.1 5.1,0.4 0.8,2.8 10,2.6 2.4,-0.8 4.1,0.6 6.3,2.4 5.2,1.2 5.8,0.5 5.1,-0.2 5.9,2.5 6.6,-2.4 -6.6,-3.8 -8.3,-1.1 -1.8,-4.1 -10.3,-3.1 -1.3,2.6 -10.7,-0.6 z m 146.6,-3.6 0.2,-3 -1.2,-1.9 -1.3,2.2 -1.2,2.2 0.3,4.8 3.2,-4.3 z m -41,-17.5 -1.4,-2.1 -5.7,0.3 1,2.7 3.9,1.2 2.2,-2.1 z m 18.1,-2.4 -6.1,-1.8 -6.9,0.3 -1.5,3.5 3.9,0.2 3.2,-0.4 4.6,0.5 4.7,2.6 -1.9,-4.9 z m 21,-12.3 -0.8,-2.4 -9,-2.6 -2.9,2.1 -7.6,1.5 2.3,3.2 5,1.2 2.1,3.7 8.3,0.1 0.4,1.6 -4,-0.1 -6.2,2.3 4.2,3.1 -0.1,2.8 1.2,2.3 2.1,-0.5 1.8,-3.1 8.2,5.9 4.6,0.5 10.6,5.4 2.3,5.3 1,6.9 -3.7,1.8 -2.8,5.2 7.1,-0.2 1.6,-1.8 5.5,1.3 4.6,5.2 1.5,-20.8 1,-20.7 -6,-1.2 -4.1,-2.3 -4.7,-2.2 -5,0 -6.6,3.8 -4.9,6.8 -5.7,-3.8 -1.3,-10.3 z m -50,-16.4 -1,-1.4 -5.5,4.6 -6.5,0.3 -7.1,-0.9 -4.4,-1.9 -4.7,4.8 -1.2,2.6 -2.9,9.6 -0.9,5 -2.4,4.2 1.6,4.3 2.3,0.1 0.6,6.1 -1.9,5.9 2.3,1.9 3.6,-1 0.3,-9.1 -0.2,-7.4 3.8,-1.9 -0.7,6.2 3.9,3.7 -0.8,2.5 1.3,1.7 5.6,-2.4 -3,5.2 2.1,2.2 3.1,-1.9 0.3,-4.1 -4.7,-7.4 1.1,-2.2 -5.1,-8.1 5,-2.5 2.6,-3.7 2.4,0.9 0.5,-2.9 -10.5,2.1 -3.1,2.9 -5,-5.6 0.9,-4.8 4.9,-1 9.3,-0.3 5.4,1.3 4.3,-1.3 4.4,-6.3 z m 19.4,1.9 -0.6,-2.6 -3.3,-0.6 -0.5,-3.5 -1.8,2.3 -1,5.1 1.7,8.2 2.2,4 1.6,-0.8 -2.3,-3.3 0.9,-3.9 2.9,0.6 0.2,-5.5 z m -60.9,-4.5 0.9,-2.9 -4.3,-6 3,-5.8 -5,-1 -6.4,0 -1.7,7.2 -2,2.2 -2.7,8.9 -4.5,1.3 -5.4,-1.8 -2.7,0.6 -3.2,3.2 -3.6,-0.4 -3.6,1.2 -3.9,-3.5 -1,-4.3 -3.3,4.2 -0.6,5.9 0.8,5.6 2.6,5.4 2.8,1.8 0.7,8.5 4.6,0.8 3.6,-0.4 2,3.1 6.7,-2.3 2.8,2 4,0.4 2,3.9 6.5,-2.9 0.8,2.3 2.5,-9.7 0.3,-6.4 5.5,-4.3 -0.2,-5.8 1.8,-4.3 6.7,-0.8 -6.5,-5.9 z m -68.7,48.9 0.7,-9.8 1.7,-8 -2.6,-4 -4.1,-0.5 -1.9,-3.6 -0.9,-4.4 -2,-0.2 -3.2,-2.2 2.3,-5.2 -4.3,-2.9 -3.3,-5.3 -4.8,-4.4 -5.7,-0.1 -5.5,-6.8 -3.2,-2.7 -4.5,-4.3 -5.2,-6.2 -8.8,-1.2 -3.6,-0.3 0.6,3.2 6.1,7 4.4,3.6 3.1,5.5 5.1,4 2.2,4.9 1.7,5.5 4.9,5.3 4.1,8.9 2.7,4.8 4.1,5.2 2.2,3.8 7,5.2 4.5,5.3 6.2,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="IN" title="0" data-name="India"
              data-id="IN"
              d="m 1414.1,380.1 -8.5,-4.4 -6.2,-4 -3.2,-7 4.1,0.9 -0.6,-3.3 -3,-3.3 -0.8,-5.2 -7.6,-7.5 -3.7,5.4 -5.7,1 -8.5,-1.6 -1.9,2.8 3.2,5.6 2.9,4.3 5,3.1 -3.7,3.7 1,4.5 -3.9,6.3 -2.1,6.5 -4.5,6.7 -6.4,-0.5 -4.9,6.6 4,2.9 1.3,4.9 3.5,3.2 1.8,5.5 -12,0 -3.2,4.2 7.1,5.4 1.9,2.5 -2.4,2.3 8,7.7 4,0.8 7.6,-3.8 1.7,5.9 0.8,7.8 2.5,8.1 3.6,12.3 5.8,8.8 1.3,3.9 2,8 3.4,6.1 2.2,3 2.5,6.4 3.1,8.9 5.5,6 2.2,-1.8 1.7,-4.4 5,-1.8 -1.8,-2.1 2.2,-4.8 2.9,-0.3 -0.7,-10.8 1.9,-6.1 -0.7,-5.3 -1.9,-8.2 1.2,-4.9 2.5,-0.3 4.8,-2.3 2.6,-1.6 -0.3,-2.9 5,-4.2 3.7,-4 5.3,-7.5 7.4,-4.2 2.4,-3.8 -0.9,-4.8 6.6,-1.3 3.7,0.1 0.5,-2.4 -1.6,-5.2 -2.6,-4.8 0.4,-3.8 -3.7,-1.7 0.8,-2.3 3.1,-2.4 -4.6,-3.4 1.2,-4.3 4.8,2.7 2.7,0.4 1.2,4.4 5.4,0.9 5,-0.1 3.4,1.1 -1.6,5.3 -2.4,0.4 -1.1,3.6 3.5,3.3 0.2,-4 1.5,-0.1 4.5,10.1 2.4,-1.5 -0.9,-2.7 0.9,-2.1 -0.9,-6.6 4.6,1.4 1.5,-5.2 -0.3,-3.1 2.1,-5.4 -0.9,-3.6 6.1,-4.4 4.1,1.1 -1.3,-3.9 1.6,-1.2 -0.9,-2.4 -6.1,-0.9 1.2,-2.7 -3.5,-3.9 -3.2,2.6 -4.9,-1.5 -5.3,4 -3.9,4.8 -4.2,0.8 2.7,2 0.4,3.9 -4.4,0.2 -4.7,-0.4 -3.2,1 -5.5,-2.5 -0.3,-1.2 -1.5,-5.1 -3,1.4 0.1,2.7 1.5,4.1 -0.1,2.5 -4.6,0.1 -6.8,-1.5 -4.3,-0.6 -3.8,-3.2 -7.6,-0.9 -7.7,-3.5 -5.8,-3.1 -5.7,-2.5 0.9,-5.9 2.8,-2.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="IE" title="0" data-name="Ireland"
              data-id="IE"
              d="m 947.3,231.7 -3.5,-1.3 -2.9,0.1 1.1,-3.2 -0.8,-3.2 -3.7,2.8 -6.7,4.7 2.1,6.1 -4.2,6.4 6.7,0.9 8.7,-3.6 3.9,-5.4 -0.7,-4.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="IR" title="0" data-name="Iran"
              data-id="IR"
              d="m 1213.5,324.4 -3.2,-2.9 -1.2,-2.4 -3.3,1.8 2.9,7.3 -0.7,2 3.7,5.2 0,0 4.7,7.8 3.7,1.9 1,3.8 -2.3,2.2 -0.5,5 4.6,6.1 7,3.4 3.5,4.9 -0.2,4.6 1.7,0 0.5,3.3 3.4,3.4 1.7,-2.5 3.7,2.1 2.8,-1 5.1,8.4 4.3,6.1 5.5,1.8 6.1,4.9 6.9,2.1 5.1,-3.1 4,-1.1 2.8,1.1 3.2,7.8 6.3,0.8 6.1,1.5 10.5,1.9 1.2,-7.4 7.4,-3.3 -0.9,-2.9 -2.7,-1 -1,-5.7 -5.6,-2.7 -2.8,-3.9 -3.2,-3.3 3.9,-5.8 -1.1,-4 -4.3,-1.1 -1.1,-4 -2.7,-5.1 1.6,-3.5 -2.5,-0.9 0.5,-4.7 0.5,-8 -1.6,-5.5 -3.9,-0.2 -7.3,-5.7 -4.3,-0.7 -6.5,-3.3 -3.8,-0.6 -2.1,1.2 -3.5,-0.2 -3,3.7 -4.4,1.2 -0.2,1.6 -7.9,1.7 -7.6,-1.1 -4.3,-3.3 -5.2,-1.3 -2.5,-4.8 -1.3,0.3 -3.8,-3.4 1.2,-3.1 -1.9,-1.9 -1.9,0.5 -5.3,4.7 -1.8,0.2 -3.7,-0.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="IQ" title="0" data-name="Iraq"
              data-id="IQ"
              d="m 1207.3,334.9 -6.2,-0.9 -2.1,1 -2.1,4.1 -2.7,1.6 1.2,4.7 -0.9,7.8 -11,6.7 3.1,7.7 6.7,1.7 8.5,4.5 16.7,12.7 10.2,0.5 3.2,-6.1 3.7,0.5 3.2,0.4 -3.4,-3.4 -0.5,-3.3 -1.7,0 0.2,-4.6 -3.5,-4.9 -7,-3.4 -4.6,-6.1 0.5,-5 2.3,-2.2 -1,-3.8 -3.7,-1.9 -4.7,-7.8 0,0 -2.3,1.1 -2.1,-1.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="IS" title="0" data-name="Iceland"
              data-id="IS"
              d="m 915.7,158.6 -6.9,-0.4 -7.3,2.9 -5.1,-1.5 -6.9,3 -5.9,-3.8 -6.5,0.8 -3.6,3.7 8.7,1.3 -0.1,1.6 -7.8,1.1 8.8,2.7 -4.6,2.5 11.7,1.8 5.6,0.8 3.9,-1 12.9,-3.9 6.1,-4.2 -4.4,-3.8 1.4,-3.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="IL" title="0" data-name="Israel"
              data-id="IL"
              d="m 1167.8,360.5 -1.4,0.1 -0.4,1.1 -1.8,0 -0.1,0.1 -0.6,1.6 -0.6,4.8 -1.1,2.9 0.4,0.4 -1.4,2.1 0,0 3.9,9.2 0.7,1.7 1.7,-10.2 -0.4,-2.4 -2.4,0.8 0.1,-1.7 1.2,-0.8 -1.4,-0.7 0.7,-4.3 2,0.9 0.7,-2 -0.1,0 0.6,-1 -0.3,-2.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="IT" title="0" data-name="Italy"
              data-id="IT"
              d="m 1057.8,328.6 -4,0.5 -5.2,0.7 -6.2,-0.6 -0.6,3.4 7.5,3.3 2.7,0.7 4.2,2.4 0.9,-3.3 -0.9,-2 1.6,-5.1 z m -33.7,-18.9 -2.5,1.9 -2.8,-0.3 1.3,3.6 0.4,7.6 2.1,1.7 2,-2.1 2.4,0.4 0.4,-8.4 -3.3,-4.4 z m 14.3,-34.3 -1.3,-2.2 -4.8,1.1 -0.5,1.2 -3.1,-0.9 -0.3,2.5 -2.1,1.1 -3.8,-0.8 -0.9,2.5 -2.4,0.2 -0.9,-1 -2.7,2.1 -2.4,0.3 -2.2,-1.3 -0.2,1.7 1.6,2.4 -1.7,1.8 1.5,4.8 2.7,0.8 -0.5,2.7 2.1,-0.5 2.8,-2.8 2.3,-0.9 4.2,2.1 2.6,0.7 1.9,6 3.6,3.6 4.9,4 4.2,2.8 3.9,0.4 2.3,2.5 3.4,1.2 1.7,2.7 2.2,0.8 1.8,3.2 2.3,3.7 -1.1,1.3 -0.8,3.5 0.1,2 2.1,-0.5 2.5,-5.6 2.1,-0.4 0.4,-3.3 -3.9,-2.3 1.9,-4.1 4.5,1 3.1,3 0.8,-2.3 -0.6,-1.2 -4.7,-3.2 -3.9,-1.9 -4.8,-2.3 1.4,-1.2 -1.4,-1.4 -4,0.1 -6,-5 -2.9,-5.1 -4.9,-3.1 -1.9,-3.1 0.5,-1.8 -0.4,-3 3.9,-2.2 4.1,0.9 -1.4,-2.7 0.3,-3 -7.2,-1.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="JM" title="0" data-name="Jamaica"
              data-id="JM"
              d="m 550.7,458.5 3.9,-0.1 -0.8,-1.8 -2.7,-1.5 -3.7,-0.6 -1.2,-0.2 -2.4,0.4 -0.8,1.5 2.9,2.3 3,1 1.8,-1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="JO" title="0" data-name="Jordan"
              data-id="JO"
              d="m 1186.6,367.6 -3.1,-7.7 -9.6,6.7 -6.3,-2.5 -0.7,2 0.4,3.9 -0.6,1.9 0.4,2.4 -1.7,10.2 0.3,0.9 6.1,1 2.1,-2 1.1,-2.3 4,-0.8 0.7,-2.2 1.7,-1 -6.1,-6.4 10.4,-3.1 0.9,-1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="JP" title="0" data-name="Japan"
              data-id="JP"
              d="m 1692.5,354.9 -4.5,-1.3 -1.1,2.7 -3.3,-0.8 -1.3,3.8 1.2,3 4.2,1.8 -0.1,-3.7 2.1,-1.5 3.1,2.1 1.3,-3.9 -1.6,-2.2 z m 24.4,-19.3 -3.6,-6.7 1.3,-6.4 -2.8,-5.2 -8.1,-8.7 -4.8,1.2 0.2,3.9 5.1,7.1 1,7.9 -1.7,2.5 -4.5,6.5 -5,-3.1 0,11.5 -6.3,-1.3 -9.6,1.9 -1.9,4.4 -3.9,3.3 -1.1,4 -4.3,2 4,4.3 4.1,1.9 0.9,5.7 3.5,2.5 2.5,-2.7 -0.8,-10.8 -7.3,-4.7 6.1,-0.1 5,-3 8.6,-1.4 2.4,4.8 4.6,2.4 4.4,-7.3 9.1,-0.4 5.4,-3 0.6,-4.6 -2.5,-3.2 -0.6,-5.2 z m -11.8,-44.2 -5.3,-2.1 -10.4,-6.4 1.9,4.8 4.3,8.5 -5.2,0.4 0.6,4.7 4.6,6.1 5.7,0 -1.6,-6.8 10.8,4.2 0.4,-6.1 6.4,-1.7 -6,-6.9 -1.7,2.6 -4.5,-1.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KZ" title="0" data-name="Kazakhstan"
              data-id="KZ"
              d="m 1308.8,223.8 -9,-1.3 -3.1,2.5 -10.8,2.2 -1.7,1.5 -16.8,2.1 -1.4,2.1 5,4.1 -3.9,1.6 1.5,1.7 -3.6,2.9 9.4,4.2 -0.2,3 -6.9,-0.3 -0.8,1.8 -7.3,-3.2 -7.6,0.2 -4.3,2.5 -6.6,-2.4 -11.9,-4.3 -7.5,0.2 -8.1,6.6 0.7,4.6 -6,-3.6 -2.1,6.8 1.7,1.2 -1.7,4.7 5.3,4.3 3.6,-0.2 4.2,4.1 0.2,3.2 2.8,1 4.4,-1.3 5,-2.7 4.7,1.5 4.9,-0.3 1.9,3.9 0.6,6 -4.6,-0.9 -4,1 0.9,4.5 -5,-0.6 0.6,2 3.2,1.6 3.7,5.5 6.4,2.1 1.5,2.1 -0.7,2.6 0.7,1.5 1.8,-2 5.5,-1.3 3.8,1.7 4.9,4.9 2.5,-0.3 -6.2,-22.8 11.9,-3.6 1.1,0.5 9.1,4.5 4.8,2.3 6.5,5.5 5.7,-0.9 8.6,-0.5 7.5,4.5 1.5,6.2 2.5,0.1 2.6,5 6.6,0.2 2.3,3 1.9,0 0.9,-4.5 5.4,-4.3 2.5,-1.2 0.3,-2.7 3.1,-0.8 9.1,2.1 -0.5,-3.6 2.5,-1.3 8.1,2.6 1.6,-0.7 8.6,0.2 7.8,0.6 3.3,2.2 3.5,0.9 -1.7,-3.5 2.9,-1.6 -8.7,-10.7 9,-2.4 2,-1.4 -1,-11.1 10.7,2 1.6,-2.8 -2.5,-6.2 3.8,-0.6 1.8,-4.2 -4.3,-3.8 -6,0.9 -3.3,-2.6 -3.9,-1.2 -4.1,-3.6 -3.2,-1.1 -6.2,1.6 -8.3,-3.6 -1.1,3.3 -18.1,-15.5 -8.3,-4.7 0.8,-1.9 -9.1,5.7 -4.4,0.4 -1.2,-3.3 -7,-2.1 -4.3,1.5 -4.3,-6.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KE" title="0" data-name="Kenya"
              data-id="KE"
              d="m 1211.7,547.2 -3.8,0 -2.3,-2.1 -5.1,2.6 -1.6,2.7 -3.8,-0.5 -1.2,-0.7 -1.3,0.1 -1.8,0 -7.2,-5.4 -3.9,0 -2,-2.1 0,-3.6 -2.9,-1.1 -3.8,4.2 -3.4,3.8 2.7,4.4 0.7,3.2 2.6,7.3 -2.1,4.7 -2.7,4.2 -1.6,2.6 0,0.3 1.4,2.4 -0.4,4.7 20.2,13 0.4,3.7 8,6.3 2.2,-2.1 1.2,-4.2 1.8,-2.6 0.9,-4.5 2.1,-0.4 1.4,-2.7 4,-2.5 -3.3,-5.3 -0.2,-23.2 4.8,-7.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KG" title="0" data-name="Kyrgyzstan"
              data-id="KG"
              d="m 1387.2,302.6 -3.5,-0.9 -3.3,-2.2 -7.8,-0.6 -8.6,-0.2 -1.6,0.7 -8.1,-2.6 -2.5,1.3 0.5,3.6 -9.1,-2.1 -3.1,0.8 -0.3,2.7 1.8,0.6 -3.1,4.1 4.6,2.3 3.2,-1.6 7.1,3.3 -5.2,4.5 -4.1,-0.6 -1.4,2 -5.9,-1.1 0.6,3.7 5.4,-0.5 7.1,2 9.5,-0.9 1,-1.5 -1.1,-1.5 4,-3 3.2,-1.2 5.7,0.9 0.6,-4 6.4,-0.8 1,-2.4 6.8,-3.4 0.2,-1.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KH" title="0" data-name="Cambodia"
              data-id="KH"
              d="m 1574.8,481.8 -5.2,-2.3 -2,4.3 -4.9,-2.4 -5.3,-1 -7.1,1.3 -3,5.2 2.1,7.7 3.4,6.6 2.6,3.3 4.7,0.9 4.7,-2.5 5.8,-0.5 -2.8,-3.8 8.9,-4.9 -0.1,-7.7 -1.8,-4.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KR" title="0" data-name="Korea"
              data-id="KR"
              d="m 1637.3,331.7 6.2,5.5 -3.4,1.1 5.2,6.8 1.1,4.8 2.1,3.5 4.5,-0.5 3.2,-2.7 4.2,-1.2 0.5,-3.6 -3.4,-7.5 -3.3,-4.2 -8.2,-7.6 0.1,1.6 -2.1,0.4 -3.5,0.3 -0.7,2.9 -2.4,-0.2 -0.1,0.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KW" title="0" data-name="Kuwait"
              data-id="KW" d="m 1235.6,381.4 -3.7,-0.5 -3.2,6.1 4.9,0.6 1.7,3.1 3.8,-0.2 -2.4,-4.8 0.3,-1.5 -1.4,-2.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LA" title="0" data-name="Lao PDR"
              data-id="LA"
              d="m 1574.8,481.8 0.2,-6.4 -2,-4.5 -4.8,-4.4 -4.3,-5.6 -5.7,-7.5 -7.3,-3.8 1.3,-2.3 3.3,-1.7 -3,-5.5 -6.8,-0.1 -3.4,-5.7 -4,-5.1 -2.7,1 1.9,7.2 -2.9,-0.1 -0.7,-1.5 -4.1,4.1 -0.8,2.4 2.6,1.9 0.9,3.8 3.8,0.3 -0.4,6.7 1,5.7 5.3,-3.8 1.8,1.2 3.2,-0.2 0.8,-2.2 4.3,0.4 4.9,5.2 1.3,6.3 5.2,5.5 0.5,5.4 -1.5,2.9 4.9,2.4 2,-4.3 5.2,2.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LB" title="0" data-name="Lebanon"
              data-id="LB"
              d="m 1167.8,360.5 0.9,-3.5 2.6,-2.4 -1.2,-2.5 -2.4,-0.3 -0.1,0.2 -2.1,4.5 -1.3,5.2 1.8,0 0.4,-1.1 1.4,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LR" title="0" data-name="Liberia"
              data-id="LR"
              d="m 929.4,523.3 -1.6,-0.2 -1.1,2.6 -1.6,-0.1 -1.1,-1.3 0.4,-2.6 -2.3,-3.9 -1.5,0.7 -1.2,0.2 -2.6,3 -2.6,3.4 -0.3,1.9 -1.3,2 3.7,4.1 4.8,3.5 5.1,4.8 5.7,3.1 1.5,-0.1 0.5,-5.2 0.5,-0.8 -0.2,-2.5 -2.3,-2.7 -1.8,-0.4 -1.6,-1.8 1.2,-2.8 -0.6,-3.1 0.3,-1.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LY" title="0" data-name="Libya"
              data-id="LY"
              d="m 1111.8,371.4 -1.5,-2.1 -5.4,-0.8 -1.8,-1.1 -2,0 -2,-2.8 -7.3,-1.3 -3.6,0.8 -3.7,3 -1.5,3.1 1.5,4.8 -2.4,3 -2.5,1.6 -5.9,-3.1 -7.7,-2.7 -4.9,-1.2 -2.8,-5.7 -7.2,-2.8 -4.5,-1.1 -2.2,0.6 -6.4,-2.2 -0.1,4.9 -2.6,1.8 -1.5,2 -3.7,2.5 0.7,2.6 -0.4,2.7 -2.6,1.4 1.9,5.6 0.4,3 -0.9,5.2 0.5,2.9 -0.6,3.5 0.5,4 -2.1,2.6 3.4,4.7 0.2,2.7 2,3.6 2.6,-1.2 4.3,2.9 2.5,4 8.8,2.8 3.1,3.5 3.9,-2.4 5.4,-3.5 22.3,12.2 22.4,12.2 0,-2.7 6.3,0 -0.5,-12.7 -1,-23.4 -1.3,-22.7 -2,-5.1 1.2,-3.9 -1.1,-2.7 1.8,-3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LK" title="0" data-name="Sri Lanka"
              data-id="LK"
              d="m 1432.2,532.7 2.3,-1.8 0.6,-6.6 -3,-6.6 -2.9,-4.5 -4.1,-3.5 -1.9,10.3 1.4,9.1 2.8,5.1 4.8,-1.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LS" title="0" data-name="Lesotho"
              data-id="LS"
              d="m 1128.1,766.5 1.1,-2 3.1,-1 1.1,-2.1 1.9,-3.1 -1.7,-1.9 -2.3,-2 -2.6,1.3 -3.1,2.5 -3.2,4 3.7,4.9 2,-0.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LT" title="0" data-name="Lithuania"
              data-id="LT"
              d="m 1100.4,221.2 -5,-2.9 -2.5,-0.4 -0.9,-1.3 -4.4,0.6 -7.9,-0.4 -5,1.9 1.7,5 5,1.1 2.2,0.9 -0.2,1.7 0.6,1.5 2.5,0.6 1.4,1.9 4.6,0 4.8,-2.2 0.5,-3.4 3.5,-2 -0.9,-2.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LU" title="0" data-name="Luxembourg"
              data-id="LU" d="m 1007,258.6 0.2,-2.7 -1,-1.4 -1.3,0.2 -0.4,3.5 1.1,0.5 1.4,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LV" title="0" data-name="Latvia"
              data-id="LV"
              d="m 1102.1,210.1 -3.8,0 -4.4,-2.2 -2.1,-0.7 -3.7,1 -0.2,4.6 -3.6,0.1 -4.4,-4.5 -4,2.1 -1.7,3.7 0.5,4.5 5,-1.9 7.9,0.4 4.4,-0.6 0.9,1.3 2.5,0.4 5,2.9 2.6,-1 4.6,-2.3 -2.1,-3.6 -1,-2.8 -2.4,-1.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MA" title="0" data-name="Morocco"
              data-id="MA"
              d="m 965.2,348.4 -2.3,-0.1 -5.5,-1.4 -5,0.4 -3.1,-2.7 -3.9,0 -1.8,3.9 -3.7,6.7 -4,2.6 -5.4,2.9 -3.5,4.3 -0.9,3.4 -2.1,5.4 1.1,7.9 -4.7,5.3 -2.7,1.7 -4.4,4.4 -5.1,0.7 -2.8,2.4 -0.1,0.1 -3.6,6.5 -3.7,2.3 -2.1,4 -0.2,3.3 -1.6,3.8 -1.9,1 -3.1,4 -2,4.5 0.3,2.2 -1.9,3.3 -2.2,1.7 -0.3,3 0.1,0 12.4,-0.5 0.7,-2.3 2.3,-2.9 2,-8.8 7.8,-6.8 2.8,-8.1 1.7,-0.4 1.9,-5 4.6,-0.7 1.9,0.9 2.5,0 1.8,-1.5 3.4,-0.2 -0.1,-3.4 0,0 0.8,0 0.1,-7.5 8.9,-4.7 5.4,-1 4.4,-1.7 2.1,-3.2 6.3,-2.5 0.3,-4.7 3.1,-0.5 2.5,-2.4 7,-1 1,-2.5 -1.4,-1.4 -1.8,-6.7 -0.3,-3.9 -2,-4.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MD" title="0" data-name="Moldova"
              data-id="MD"
              d="m 1118.5,283.3 1.2,-0.7 0.5,-2.1 1.1,-2 -0.5,-1.1 1,-0.5 0.6,0.9 3,0.2 1.2,-0.5 -1,-0.6 0.2,-1 -2,-1.5 -1.1,-2.6 -1.9,-1.1 0,-2.1 -2.5,-1.6 -2,-0.3 -3.9,-1.9 -3.2,0.6 -1.1,0.9 1.6,0.6 1.8,1.9 1.9,2.6 3.4,3.7 0.6,2.7 -0.2,2.7 1.3,2.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MG" title="0" data-name="Madagascar"
              data-id="MG"
              d="m 1255.7,658.4 -1.1,-4.2 -1.4,-2.7 -1.8,-2.7 -2,2.8 -0.3,3.8 -3.3,4.5 -2.3,-0.8 0.6,2.7 -1.8,3.2 -4.8,3.9 -3.4,3.7 -2.4,0 -2.2,1.2 -3.1,1.3 -2.8,0.2 -1,4.1 -2.2,3.5 0.1,5.9 0.8,4 1.1,3 -0.8,4.1 -2.9,4.8 -0.2,2.1 -2.6,1.1 -1.3,4.6 0.2,4.6 1.6,5 -0.1,5.7 1.2,3.3 4.2,2.3 3,1.7 5,-2.7 4.6,-1.5 3.1,-7.4 2.8,-8.9 4.3,-12 3.3,-8.8 2.7,-7.4 0.8,-5.4 1.6,-1.5 0.7,-2.7 -0.8,-4.7 1.2,-1.9 1.6,3.8 1.1,-1.9 0.8,-3.1 -1.3,-2.9 -0.5,-7.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MX" title="0" data-name="Mexico"
              data-id="MX"
              d="m 444.4,407.8 -3.6,-1.4 -3.9,-2 -0.8,-3 -0.2,-4.5 -2.4,-3.6 -1,-3.7 -1.6,-4.4 -3.1,-2.5 -4.4,0.1 -4.8,5 -4,-1.9 -2.2,-1.9 -0.4,-3.5 -0.8,-3.3 -2.4,-2.8 -2.1,-2 -1.3,-2.2 -9.3,0 -0.8,2.6 -4.3,0 -10.7,0 -10.7,-4.4 -7.1,-3.1 1,-1.3 -7,0.7 -6.3,0.5 0.2,5.7 0.7,5.1 0.7,4.1 0.8,4 2.6,1.8 2.9,4.5 -1,2.9 -2.7,2.3 -2.1,-0.3 -0.6,0.5 2.3,3.7 2.9,1.5 1,1.7 0.9,-0.9 3.1,2.9 2.1,2 0.1,3.4 -1.2,4.7 2.5,1.6 3.3,3.1 2.9,3.6 0.7,3.9 1,0 2.7,-2.3 0.4,-1.2 -1.5,-2.8 -1.6,-2.9 -2.6,-0.2 0.4,-3.4 -0.9,-3 -1,-2.8 -0.5,-5.9 -2.6,-3.2 -0.6,-2.3 -1.2,-1.6 0,-4.1 -1,0.1 -0.1,-2.2 -0.7,-0.5 -0.4,-1.4 -2.7,-4.4 -1.1,-2.6 1,-4.8 0.1,-3 1.8,-2.6 2.4,1.7 1.9,-0.2 3.1,2.5 -0.9,2.4 0.4,4.9 1.5,4.7 -0.4,2 1.7,3.1 2.3,3.4 2.7,0.5 0.3,4.4 2.4,3.1 2.5,1.5 -1.8,4 0.7,1.5 4.1,2.6 1.9,4 4.5,4.9 3.8,6.4 1.3,3.2 0,2.5 1.4,2.9 -0.3,2.2 -1.6,1.6 0.3,1.8 -1.9,0.7 0.8,3.1 2.2,4 5.3,3.6 1.9,2.9 5.4,2 3,0.4 1.2,1.7 4.2,3 5.9,3 4,0.9 4.8,2.9 4,1.2 3.7,1.7 2.9,-0.7 4.8,-2.4 3.1,-0.4 4.4,1.6 2.6,2.1 5.5,6.9 0.4,-1.9 0.8,-1.5 -0.7,-1.2 3.3,-5.2 7.1,0 0.4,-2.1 -0.8,-0.4 -0.5,-1.4 -1.9,-1.5 -1.8,-2.1 2.6,0 0.4,-3.6 5.2,0 5.1,0.1 0.1,-1 0.7,-0.3 0.9,0.8 2.5,-3.9 1,0 1.2,-0.1 1.2,1.6 2,-5 1.2,-2.7 -0.9,-1.1 1.8,-3.9 3.5,-3.8 0.6,-3.1 -1.2,-1.3 -3.4,0.5 -4.8,-0.2 -6,1.5 -4,1.7 -1.2,1.8 -1.2,5.4 -1.8,3.7 -3.9,2.6 -3.6,1.1 -4.3,1.1 -4.3,0.6 -5.1,1.8 -1.9,-2.6 -5.6,-1.7 -1.8,-3.2 -0.7,-3.6 -3,-4.7 -0.4,-5 -1.2,-3.1 -0.5,-3.4 1.1,-3.1 1.8,-8.6 1.8,-4.5 3.1,-5.6 -2.1,0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MK" title="0" data-name="Macedonia"
              data-id="MK"
              d="m 1094,304.8 -2.8,-2 -2.4,0.1 -1.7,0.4 -1.1,0.2 -2.9,1 -0.1,1.2 -0.7,0 0,0 -0.4,2.1 0.9,2.6 2.3,1.6 3.3,-0.6 1.9,-1.3 2.8,0.1 0.7,-1.1 1,-0.2 -0.8,-4.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ML" title="0" data-name="Mali"
              data-id="ML"
              d="m 1000.3,450.3 -6.1,0.6 -0.1,-4 -2.6,-1.1 -3.4,-1.8 -1.3,-3 -18.6,-13.8 -18.4,-13.9 -8.4,0.1 2.4,27.4 2.4,27.5 1,0.8 -1.3,4.4 -22.3,0.1 -0.9,1.4 -2.1,-0.4 -3.2,1.3 -3.8,-1.8 -1.8,0.2 -1,3.7 -1.9,1.2 0.2,3.9 1.1,3.7 2.1,1.8 0.4,2.4 -0.3,2 0.3,2.3 0.9,0 1.5,-0.8 0.9,0.2 1.5,1.6 2.4,0.5 1.6,-1.4 1.8,-0.8 1.3,-0.9 1.1,0.2 1.3,1.4 0.6,1.7 2.3,2.7 -1.2,1.6 -0.2,2.1 1.2,-0.6 0.7,0.7 -0.3,1.9 1.7,1.8 0.7,-0.6 1.6,1 4.3,0.1 1,-1.9 1,0.1 1.6,-0.7 0.9,2.7 1.3,-0.8 2.3,-0.9 -0.4,-3.7 1.6,-2.7 -0.2,-2.2 4.5,-5.2 0.8,-4.4 1.6,-1.6 2.7,0.9 2.3,-1.3 0.8,-1.6 4.3,-2.9 1.1,-2 5.2,-2.6 3,-0.9 1.4,1.2 3.6,0 3.6,-0.3 2,-2.2 7.6,-0.6 4.9,-1 0.5,-3.9 3,-4.3 -0.1,-14.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MM" title="0" data-name="Myanmar"
              data-id="MM"
              d="m 1533.9,435.8 -0.6,-2.6 -3.8,1.8 -2.5,-1.2 -4.5,-2.4 0.8,-5.2 -3.7,-1.3 -2.3,-5.8 -5.6,1 -0.7,-7.5 4.1,-5.3 -0.8,-5.3 -1.3,-4.9 -2.7,-1.5 -2.7,-3.7 -3,0.4 0.9,2.4 -1.6,1.2 1.3,3.9 -4.1,-1.1 -6.1,4.4 0.9,3.6 -2.1,5.4 0.3,3.1 -1.5,5.2 -4.6,-1.4 0.9,6.6 -0.9,2.1 0.9,2.7 -2.4,1.5 0.5,4.6 -2.1,-1 1.1,5.1 4.6,5.2 3.4,0.9 -0.4,2.2 5.4,7.4 1.9,5.9 -0.9,7.9 3.6,1.5 3.2,0.6 5.8,-4.6 3.2,-3.1 3.1,5.2 2,8.1 2.6,7.6 2.6,3.3 0.2,6.9 2.2,3.8 -1.3,4.8 0.9,4.8 2.2,-6.6 2.6,-5.9 -2.8,-5.8 -0.2,-3 -1,-3.5 -4.2,-5.1 -1.7,-3.2 1.7,-1.1 1.4,-5.6 -2.9,-4.2 -4.1,-4.6 -3.5,-5.6 2.2,-1.1 1.5,-6.9 3.9,-0.3 2.8,-2.8 3,-1.4 0.8,-2.4 4.1,-4.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ME" title="0" data-name="Montenegro"
              data-id="ME"
              d="m 1080,299.8 0.4,-0.6 -2,-1.2 -1.8,-0.7 -0.8,-0.8 -1.5,-1.1 -0.9,0.6 -1.5,1.4 -0.4,3.4 -0.5,1 0,0 2.3,1.2 1.6,2.1 1.1,0.4 0,0 -0.5,-1.9 2,-3.1 0.4,1.2 1.3,-0.5 0.8,-1.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MN" title="0" data-name="Mongolia"
              data-id="MN"
              d="m 1473.7,252.1 -3.7,-4.6 -6.6,-1.5 -4.8,-0.8 -6.9,-2.5 -1.3,6.4 4,3.6 -2.4,4.3 -7.9,-1.6 -5,-0.2 -4.7,-2.9 -5.1,-0.1 -5.3,-1.9 -5.9,2.9 -6.6,5.4 -4.7,1 3.3,4.4 5.7,3.3 8.1,2.3 5.8,5 1.3,7.3 3,2.7 6.4,1 7.2,0.9 7.9,3.8 3.4,0.7 4.9,5.7 4.7,3.6 5.5,-0.1 11.2,1.3 6.4,-0.8 5.5,0.9 9.3,3.8 6.2,-0.1 3.2,2 4.4,-3.3 7.2,-2.2 7.5,-0.2 4.9,-2.2 1.9,-3.3 2.5,-2 -1.9,-2.1 -2.9,-2.3 0.4,-4 3.2,0.5 5.9,1.3 3.1,-3.3 6.3,-2.4 1.4,-4.1 2.4,-1.8 6.8,-0.8 4.3,0.7 -0.7,-2.2 -7.2,-4.3 -5.1,-2 -2.5,2.3 -5.4,-1 -2.4,0.8 -2.7,-2.6 -0.3,-6.2 -0.6,-4.6 -5.5,0.5 -3.9,-2.1 -3.3,-0.7 -4.5,4.4 -5.8,1 -3.6,1.6 -6.7,-1 -4.5,0 -4.9,-3.1 -6.5,-3 -5.4,-0.8 -5.7,0.8 -3.9,1.1 -8.4,-2.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MZ" title="0" data-name="Mozambique"
              data-id="MZ"
              d="m 1203,640.7 -0.8,-2.9 0,0 0,0 -4.6,3.7 -6.2,2.5 -3.3,-0.1 -2.1,1.9 -3.9,0.1 -1.4,0.8 -6.7,-1.8 -2.1,0.3 -1.6,6 0.7,7.3 0.3,0 1.9,2 2.2,4.6 0.1,8.2 -2.5,1.3 -1.9,4.5 -3.4,-4 -0.2,-4.5 1.3,-2.9 -0.3,-2.6 -2.1,-1.6 -1.6,0.6 -3,-3 -17.1,5.2 0.3,4.5 0.3,2.4 4.6,-0.1 2.6,1.3 1.1,1.6 2.6,0.5 2.8,2 -0.3,8.1 -1.3,4.4 -0.5,4.7 0.8,1.9 -0.8,3.7 -0.9,0.6 -1.6,4.6 -6.2,7.2 2.2,9 1.1,4.5 -1.4,7.1 0.4,2.3 0.6,2.9 0.3,2.8 4.1,0 0.7,-3.3 -1.4,-0.5 -0.3,-2.6 2.6,-2.4 6.8,-3.4 4.6,-2.2 2.5,-2.3 0.9,-2.6 -1.2,-1.1 1.1,-3 0.5,-6.2 -1,0.3 0,-1.9 -0.8,-3.7 -2.4,-4.8 0.7,-4.6 2.3,-1.4 4.1,-4.6 2.2,-1.1 6.7,-6.8 6.4,-3.1 5.2,-2.5 3.7,-3.9 2.4,-4.4 1.9,-4.6 -0.9,-3.1 0.2,-9.9 -0.4,-5.6 0.4,-6.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MR" title="0" data-name="Mauritania"
              data-id="MR"
              d="m 949.8,413.3 -20.3,-15.5 -0.2,9.7 -17.9,-0.3 -0.2,16.3 -5.2,0.5 -1.4,3.3 0.9,9.2 -21.6,-0.1 -1.2,2.2 2.8,2.7 1.4,3 -0.7,3.2 0.6,3.2 0.5,6.3 -0.8,5.9 -1.7,3.2 0.4,3.4 2,-2 2.7,0.5 2.8,-1.4 3.1,0 2.6,1.8 3.7,1.7 3.2,4.7 3.6,4.4 1.9,-1.2 1,-3.7 1.8,-0.2 3.8,1.8 3.2,-1.3 2.1,0.4 0.9,-1.4 22.3,-0.1 1.3,-4.4 -1,-0.8 -2.4,-27.5 -2.4,-27.4 8.4,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MW" title="0" data-name="Malawi"
              data-id="MW"
              d="m 1169.2,661.5 0.1,-2.3 -1.2,-1.9 0.1,-2.8 -1.5,-4.7 1.7,-3.5 -0.1,-7.7 -1.9,-4.1 0.2,-0.7 0,0 -1.1,-1.7 -5.4,-1.2 2.6,2.8 1.2,5.4 -1,1.8 -1.2,5.1 0.9,5.3 -1.8,2.2 -1.9,5.9 2.9,1.7 3,3 1.6,-0.6 2.1,1.6 0.3,2.6 -1.3,2.9 0.2,4.5 3.4,4 1.9,-4.5 2.5,-1.3 -0.1,-8.2 -2.2,-4.6 -1.9,-2 -0.3,0 0,0.8 1.1,0.3 1,3.4 -0.2,0.8 -1.9,-2.5 -1,1.6 -0.8,-1.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MY" title="0" data-name="Malaysia"
              data-id="MY"
              d="m 1543.6,532.7 -4.7,-2.8 -0.9,1.1 1.4,2.7 -0.4,4.7 2.1,3.4 1,5.3 3.4,4.3 0.8,3.2 6.7,5 5.4,4.8 4,-0.5 0.1,-2.1 -2.3,-5.6 -2.1,-1.8 -0.5,-3.8 -0.6,-2.1 0.5,-2.9 -0.5,-4.3 -2.6,-4.3 -3.5,-3.8 -1.3,-0.6 -1.7,2.6 -3.7,0.8 -0.6,-3.3 z m 99,11 -1.2,-3.1 3.8,-0.4 0.3,-2.4 -4.8,-2 -3.8,-1.7 -0.4,-2.8 -3.1,-3.2 -2.3,0 -2.5,5 -4.1,4.4 -0.1,3.1 -0.1,4.1 -2.7,-0.2 -1.1,2.2 -2.7,-3.3 -2.6,4 -3.8,5 -6.7,1.4 -2.4,1.2 -0.9,5.4 -4.4,1.2 -4.1,-2.2 1,4.3 3.9,3.5 3.6,-1.2 3.6,0.4 3.2,-3.2 2.7,-0.6 5.4,1.8 4.5,-1.3 2.7,-8.9 2,-2.2 1.7,-7.2 6.4,0 5,1 4,-2.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NA" title="0" data-name="Namibia"
              data-id="NA"
              d="m 1105.4,683.7 -10.3,2.5 -13.4,-0.9 -3.7,-3 -22.5,0.3 -0.9,0.4 -3.2,-2.9 -3.6,-0.1 -3.3,1 -2.7,1.2 0.2,4.9 4.4,6.2 1.1,4 2.8,7.7 2.7,5.2 2.1,2.6 0.6,3.5 0,7.6 1.6,9.8 1.2,4.6 1,6.2 1.9,4.7 3.9,4.8 2.7,-3.2 2.1,1.8 0.8,2.7 2.4,0.5 3.3,1.2 2.9,-0.5 5,-3.2 1.1,-23.6 0.6,-18.5 5.4,-0.2 0.9,-22.7 4.1,-0.2 8.6,-2.2 2,2.6 3.7,-2.5 1.6,0 3.2,-1.5 0,-0.5 -2.1,-1.4 -3.6,-0.4 -4.6,1.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NE" title="0" data-name="Niger"
              data-id="NE"
              d="m 1051.3,425.6 -8.8,-2.8 -18.6,12.2 -15.8,12.5 -7.8,2.8 0.1,14.6 -3,4.3 -0.5,3.9 -4.9,1 -7.6,0.6 -2,2.2 -3.6,0.3 -0.5,3.1 0.8,2.9 3.1,4.1 0.2,3.1 6.4,1.4 -0.1,4.4 1.9,-1.9 2,0 4.3,3.7 0.3,-5.7 1.6,-2.6 0.8,-3.6 1.4,-1.4 6,-0.8 5.6,2.4 2.1,2.4 2.9,0.1 2.6,-1.5 6.8,3.3 2.8,-0.2 3.3,-2.7 3.3,0.2 1.6,-0.9 3,0.4 4.3,1.8 4.3,-3.5 1.3,0.2 3.9,7 1,-0.2 0.2,-2 1.6,-0.4 0.5,-2.9 -3.6,-0.2 0,-4.1 -2.4,-2.3 2.3,-8.4 6.9,-6 0.2,-8.3 1.8,-12.9 1.1,-2.7 -2.3,-2.2 -0.2,-2.1 -2,-1.6 -1.6,-9.9 -3.9,2.4 -3.1,-3.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NG" title="0" data-name="Nigeria"
              data-id="NG"
              d="m 1055.8,492.7 -1,0.2 -3.9,-7 -1.3,-0.2 -4.3,3.5 -4.3,-1.8 -3,-0.4 -1.6,0.9 -3.3,-0.2 -3.3,2.7 -2.8,0.2 -6.8,-3.3 -2.6,1.5 -2.9,-0.1 -2.1,-2.4 -5.6,-2.4 -6,0.8 -1.4,1.4 -0.8,3.6 -1.6,2.6 -0.3,5.7 -0.2,2.1 1.2,3.8 -1.1,2.5 0.6,1.7 -2.7,4 -1.7,1.9 -1,4 0.1,4.1 -0.3,10.2 4.9,0 4.3,0 3.9,4.2 1.9,4.6 3,3.9 4.5,0.2 2.2,-1.4 2.1,0.3 5.8,-2.3 1.4,-4.5 2.7,-6.1 1.6,-0.1 3.3,-3.7 2.1,-0.1 3.2,2.6 3.9,-2.2 0.5,-2.6 1.2,-2.6 0.8,-3.2 3,-2.6 1.1,-4.5 1.2,-1.4 0.7,-3.3 1.5,-4 4.6,-5 0.3,-2.1 0.6,-1.1 -2.3,-2.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NI" title="0" data-name="Nicaragua"
              data-id="NI"
              d="m 514.1,476.8 -1.9,-0.2 -0.9,0.9 -2,0.8 -1.4,0 -1.3,0.8 -1.1,-0.3 -0.9,-0.9 -0.6,0.2 -0.8,1.5 -0.5,-0.1 -0.3,1.3 -2.1,1.8 -1.1,0.7 -0.6,0.8 -1.5,-1.3 -1.4,1.7 -1.2,0 -1.3,0.2 -0.2,3.1 -0.8,0 -0.8,1.5 -1.8,0.3 -0.4,0.4 -0.9,-1 -0.7,1 2.6,2.9 2.2,2 1,2.1 2.5,2.6 1.8,2 0.9,-0.8 3.5,1.7 1.4,-0.8 1.7,0.5 0.8,1.3 1.7,0.4 1.4,-1.3 -0.8,-1.1 -0.1,-1.7 1.2,-1.6 -0.2,-1.7 0.7,-2.7 0.9,-0.7 0.1,-2.8 -0.2,-1.7 0.4,-2.8 0.9,-2.5 1.4,-2.2 -0.3,-2.3 0.4,-1.4 0.6,-0.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NL" title="0" data-name="Netherlands"
              data-id="NL"
              d="m 1005.5,243.9 2.9,0 1.1,-2.3 1,-5.6 -1,-2 -3.9,-0.2 -6.5,2.6 -3.9,8.9 -2.5,1.7 0,0 3.6,0.5 4.4,-1.3 3.1,2.7 2.8,1.4 -1.1,-6.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NO" title="0" data-name="Norway"
              data-id="NO"
              d="m 1088.8,133.1 -6.9,1.1 -7.3,-0.3 -5.1,4.4 -6.7,-0.3 -8.5,2.3 -10.1,6.8 -6.4,4 -8.8,10.7 -7.1,7.8 -8.1,5.8 -11.2,4.8 -3.9,3.6 1.9,13.4 1.9,6.3 6.4,3 6,-1.4 8.5,-6.8 3.3,3.6 1.7,-3.3 3.4,-4 0.9,-6.9 -3.1,-2.9 -1,-7.6 2.3,-5.3 4.3,0.1 1.3,-2.2 -1.8,-1.9 5.7,-7.9 3.4,-6.1 2.2,-3.9 4,0.1 0.6,-3.1 7.9,0.9 0,-3.5 2.5,-0.3 2.1,-1.4 5.1,2.9 5.3,-0.3 4.7,1.3 3.4,-2.4 1.1,-3.9 5.8,-1.8 5.7,2.1 -0.8,3.8 3.2,-0.5 6.4,-2.2 0,0 -5.4,-3.3 4.8,-1.4 -13.6,-3.9 z m -22.6,-33.3 -5.6,-1 -1.9,-1.7 -7.2,0.9 2.6,1.5 -2.2,1.2 6.7,1.1 7.6,-2 z m -25.4,-8.3 -4.8,-1.6 -5.1,0.2 -1,1.5 -5,0 -2.2,-1.5 -9.3,1.6 3.2,3.5 7.6,3.8 5.7,1.4 -3,1.7 8.4,2.9 4.4,-0.2 0.9,-3.9 3,-0.9 1.2,-3.4 8.5,-1.8 -12.5,-3.3 z m 24.2,-3.1 -9.1,-1 -3.2,1.2 -5.3,-1 -10.4,1.2 4.3,2 5.1,0 0.9,1.3 10.6,0.7 10.1,-0.5 4.3,-2.4 -7.3,-1.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NP" title="0" data-name="Nepal"
              data-id="NP"
              d="m 1455.2,394.8 -6.5,-0.6 -6.4,-1.5 -5,-2.8 -4.5,-1.2 -2.5,-3.1 -3.2,-0.9 -6.4,-4.1 -4.7,-2 -1.9,1.5 -2.8,2.9 -0.9,5.9 5.7,2.5 5.8,3.1 7.7,3.5 7.6,0.9 3.8,3.2 4.3,0.6 6.8,1.5 4.6,-0.1 0.1,-2.5 -1.5,-4.1 -0.1,-2.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NZ" title="0" data-name="New Zealand"
              data-id="NZ"
              d="m 1868.6,832.8 0.9,-2.6 -5.8,2.9 -3.4,3.4 -3.2,1.6 -5.9,4.6 -5.6,3.2 -7,3.2 -5.5,2.4 -4.3,1.1 -11.3,6.1 -6.4,4.6 -1.1,2.3 5.1,0.4 1.5,2.1 4.5,0.1 4,-1.8 6.3,-2.8 8.1,-6.2 4.7,-4.1 6.2,-2.3 4,-0.1 0.6,-2.9 4.6,-2.5 7,-4.5 4.2,-2.9 2.1,-2.6 0.5,-2.6 -5.6,2.5 0.8,-2.6 z m 28.8,-30.5 1.9,-5.7 -3.1,-1.7 -0.8,-3.6 -2.3,0.5 -0.4,4.6 0.8,5.7 0.9,2.7 -0.9,1.1 -0.6,4.4 -2.4,4.1 -4.2,5 -5.3,2.2 -1.7,2.4 3.7,2.5 -0.8,3.5 -6.9,5.1 1.4,0.9 -0.4,1.6 5.9,-2.5 5.9,-4.2 4.5,-3.4 1.6,-1.2 1.5,-2.7 2.8,-2 3.8,0.2 4.2,-3.8 5.1,-5.7 -2.1,-0.8 -4.6,2.5 -3.2,-0.5 -2.9,-2.1 2.3,-4.9 -1.2,-1.8 -2.9,4.4 0.4,-6.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="OM" title="0" data-name="Oman"
              data-id="OM"
              d="m 1301,437.8 2.1,-2 0.8,-1.8 1.6,-3.8 -0.1,-1.4 -2.1,-0.8 -1.6,-2.1 -2.9,-3.7 -3.3,-1.1 -4.1,-0.9 -3.3,-2.3 -2.9,-4.3 -2.8,0 -0.1,4.2 1.1,0.8 -2.4,1.3 0.3,2.6 -1.4,2.6 0.1,2.6 2.9,4.5 -2.6,12.7 -16.1,6.4 5.2,10.5 2.1,4.4 2.5,-0.3 3.6,-2.2 3.1,0.6 2.5,-1.8 -0.2,-2.5 2.1,-1.6 3.4,0 1.2,-1.3 0.2,-3.1 3.3,-2.4 2.6,0 0.4,-0.8 -1,-4.2 0.6,-3.2 1,-1.5 2.5,0.3 1.7,-4.4 z m -16.6,-30.4 0.2,-2.6 -0.7,-0.6 -1.3,2.2 1.3,2.2 0.5,-1.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PK" title="0" data-name="Pakistan"
              data-id="PK"
              d="m 1388.3,346.3 -9.4,-2.6 -2.9,-5 -4.7,-3 -2.8,0.7 -2.4,1.2 -5.8,0.8 -5.3,1.3 -2.4,2.8 1.9,2.8 1.4,3.2 -2,2.7 0.8,2.5 -0.9,2.3 -5.1,-0.2 3,4.2 -3,1.6 -1.5,3.8 1.1,3.8 -1.7,1.8 -2.1,-0.6 -4,0.9 -0.2,1.7 -4,0 -2.3,3.6 0.8,5.4 -6.6,2.6 -3.8,-0.5 -0.9,1.4 -3.3,-0.8 -5.3,0.9 -9.6,-3.2 3.2,3.3 2.8,3.9 5.6,2.7 1,5.7 2.7,1 0.9,2.9 -7.4,3.3 -1.2,7.4 7.6,-0.9 8.9,-0.1 9.9,-1.2 4.9,4.8 2.1,4.6 4.2,1.6 3.2,-4.2 12,0 -1.8,-5.5 -3.5,-3.2 -1.3,-4.9 -4,-2.9 4.9,-6.6 6.4,0.5 4.5,-6.7 2.1,-6.5 3.9,-6.3 -1,-4.5 3.7,-3.7 -5,-3.1 -2.9,-4.3 -3.2,-5.6 1.9,-2.8 8.5,1.6 5.7,-1 3.7,-5.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PA" title="0" data-name="Panama"
              data-id="PA"
              d="m 543.5,517 -2,-1.8 -1.7,-1.9 -2.5,-1.1 -3.1,-0.2 0.3,-0.6 -3.1,-0.4 -2,1.9 -3.5,1.3 -2.5,1.6 -2.7,0.5 -1.5,-1.6 -0.5,0.5 -2.3,-0.3 0.2,-1.3 -1.9,-2.3 -2.2,0.6 -0.1,2.5 1.1,1 -0.8,0.7 0.1,1.2 -0.5,1.3 -0.4,1.2 0.6,1 0.3,-1.4 2.4,0 1.4,0.7 2.3,0.5 1,2.5 1.8,0.4 0.8,-1.1 0.8,3.8 2.6,-0.3 0.9,-0.9 1.5,-0.9 -2.5,-3.4 0.6,-1.3 1.3,-0.3 2.3,-1.6 1.2,-2.2 2.5,-0.4 2.7,1.8 1,2.1 1.4,0.4 -1.5,1.7 1,3.5 1.8,1.8 0.9,-3.1 1.8,0.5 1.1,-1.9 -1.1,-3.8 0.7,-0.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PE" title="0" data-name="Peru"
              data-id="PE"
              d="m 584.3,599.5 -2.9,-3.4 -1.7,-0.1 3.5,-6.5 -4.4,-3 -3.3,0.6 -2.1,-1.1 -3,1.7 -4.2,-0.8 -3.4,-6.7 -2.7,-1.7 -1.8,-3 -3.7,-3 -1.5,0.6 0.8,4.9 -1.7,4.1 -6,6.7 -6.7,2.5 -3.3,5.5 -0.9,4.3 -3.1,2.6 -2.5,-3.2 -2.3,-0.7 -2.3,0.5 -0.2,-2.3 1.5,-1.5 -0.7,-2.7 -4.4,4 -1.6,4.5 3,6.1 -1.7,2.8 4.1,2.6 4.5,4.1 2,4.7 2.4,2.9 6,12.7 6.2,11.7 5.4,8.4 -0.8,1.8 2.8,5.3 4.6,3.9 10.7,6.9 11.6,6.4 0.7,2.6 5.9,3.7 2.7,-1.6 1.2,-3.3 2.8,-6.9 -2.8,-5.3 1.1,-2.1 -1.2,-2.4 1.9,-3.2 -0.3,-5.4 -0.1,-4.5 1.1,-2.1 -5.5,-10.3 -3,1.1 -2.6,-0.7 -0.2,-9.7 -4.4,3.8 -4.9,-0.2 -2.3,-3.4 -3.7,-0.3 1,-2.8 -3.3,-3.8 -2.6,-5.8 1.5,-1.1 -0.1,-2.7 3.3,-1.9 -0.7,-3.4 1.3,-2.2 0.4,-3 6.2,-4.3 4.6,-1.2 0.7,-1 5.1,0.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PH" title="0" data-name="Philippines"
              data-id="PH"
              d="m 1684.6,518.6 -0.6,-2.3 -0.8,-3.2 -4.8,-3 0.8,4.9 -3.9,0.2 -0.7,2.8 -4.2,1.7 -2.2,-2.8 -2.8,2.4 -3.4,1.7 -1.9,5.4 1.1,1.9 3.9,-3.6 2.7,0.3 1.5,-2.7 3.8,3 -1.5,3.1 1.9,4.6 6.8,3.7 1.4,-3 -2.1,-4.7 2.4,-3.2 2.5,6.4 1.5,-5.8 -0.6,-3.5 -0.8,-4.3 z m -14.5,-11.8 0,-6.1 -3.6,6.1 0.5,-4.2 -3,0.3 -0.3,4 -1.2,1.8 -1,1.7 3.8,4.4 1.6,-1.9 1.4,-4 1.8,-2.1 z m -30.1,6.1 2.6,-4.4 3.4,-3.5 -1.5,-5.2 -2.4,6.3 -2.9,4.4 -3.8,4 -2.4,4.4 7,-6 z m 17.4,-16.4 1.2,3 -0.1,3.3 0.5,2.9 3.3,-1.9 2.4,-2.7 -0.2,-2.6 -3.6,0 -3.5,-2 z m 20,-1.7 -1.8,-2.4 -5.4,-0.1 4,4.8 0.3,2.4 -3.3,-0.5 1.2,3.9 1.7,0.3 0.7,4.5 2.5,-1.4 -1.7,-4 -0.4,-2.1 4.5,1.7 -2.3,-7.1 z m -22.9,-5.8 -2.2,-2.3 -4.8,-0.2 3.4,4.8 2.8,3.2 0.8,-5.5 z m -6.4,-34.6 -3.3,0 -0.9,5.8 1.1,9.9 -2.6,-2 1.2,6 1.2,2.8 3.3,3.7 0.4,-2.3 1.8,1.4 -1.5,1.7 0.1,2.6 2.9,1.4 5,-0.9 4,3.8 1.1,-2.4 2.5,3.4 4.8,3.1 0.2,-2.9 -2,-1.6 0.1,-3.4 -7.5,-3.6 -2.3,0.8 -3.1,-0.7 -2,-5.1 0.1,-5.1 3,-2.1 0.6,-5.3 -2.7,-4.6 0.4,-2.6 -0.7,-1.6 -1.5,1.6 -3.7,-1.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PG" title="0"
              data-name="Papua New Guinea" data-id="PG"
              d="m 1850.7,615.6 0.9,-1.8 -2.4,-2.2 -2.5,-4 -1.6,-1.5 -0.5,-1.9 -0.8,0.7 0.9,4.8 2.2,4 2.2,2.5 1.6,-0.6 z m -21.2,-8.6 2.1,-3.9 0.4,-3.5 -1.1,-1 -3.4,0.1 0.4,3.7 -3.3,2.3 -1.7,2.2 -3.2,0.5 -0.4,-3.4 -0.8,0.1 -1,3.1 -3.1,0.5 -5,-0.9 -0.6,1.9 3.1,1.8 4.5,1.9 2.9,0 3,-1.5 3.2,-1.6 1,-1.8 3,-0.5 z m -27.8,12.2 -0.9,-4.3 5.2,-0.7 -1.1,-3.3 -9.1,-4 -0.6,-3.7 -2.9,-3.2 -3.7,-3.3 -10.2,-3.6 -9.6,-4.4 -1,20.7 -1.5,20.8 5.7,0.2 3.1,1.1 4.6,-2.2 -0.3,-4.7 3.6,-2.1 4.9,-1.8 7,2.8 2.4,5.6 2.9,3.5 3.9,4 5.5,1 4.8,0.7 1.1,1.6 3.8,-0.4 0.8,-1.8 -5.6,-2.7 1.8,-1.2 -4.2,-1.1 0.5,-2.8 -3.2,0.2 -3,-6.8 -4.7,-4.1 z m 34.7,-18.4 -0.5,-3.3 -2,-2.1 -2.1,-2.6 -2.3,-1.5 -1.9,-1.4 -2.9,-1.8 -1.6,1.5 3.9,1.9 3.1,2.7 2.4,2.1 1.2,2.4 0.8,3.8 1.9,-1.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PL" title="0" data-name="Poland"
              data-id="PL"
              d="m 1069.4,228.3 -4.6,-0.1 -0.5,-1.4 -4.8,-1.1 -5.7,2.1 -7.1,2.8 -3.1,1.7 1.4,3.1 -1.2,1.6 2,2.2 1.4,3.3 -0.1,2.1 2.3,3.9 2.4,1.9 3.7,0.6 -0.1,1.7 2.7,1.2 0.6,-1.5 3.4,0.6 0.7,2 3.6,0.3 2.6,3.1 0.3,0.4 1.9,-0.9 2.7,2.2 2.8,-1.3 2.4,0.6 3.4,-0.8 4.9,2.3 1.1,0.4 -1.6,-2.8 3.8,-5.1 2.3,-0.7 0.3,-1.8 -3.1,-5.3 -0.5,-2.7 -1.9,-2.9 2.7,-1.2 -0.3,-2.4 -1.7,-2.3 -0.6,-2.7 -1.4,-1.9 -2.5,-0.6 -8.7,0.1 -5.9,-0.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KP" title="0" data-name="Dem. Rep. Korea"
              data-id="KP"
              d="m 1644.7,302.3 0,0 -5.5,-3.6 0.1,3.5 -6.3,2.6 2.7,3.3 -4.6,-0.2 -3.6,-2 -1,4.4 -3.8,3.4 -2.1,4 3.3,1.7 3.4,0.7 0.8,1 0.4,3.5 1.1,1.2 -0.9,0.7 -0.1,2.9 1.9,1 1.6,0.6 0.8,1.2 1.3,-0.5 0,-1.3 3.1,1.3 0.1,-0.6 2.4,0.2 0.7,-2.9 3.5,-0.3 2.1,-0.4 -0.1,-1.6 -4.3,-2.8 -2.6,-1 0.2,-0.7 -1.2,-2.8 1.3,-1.7 2.9,-1 1,-1.9 0.3,-1.1 1.9,-1.4 -2.8,-4.5 0.3,-2.1 0.9,-2 2.2,0.3 0,0 0,0 0,0 -1.4,-1.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PT" title="0" data-name="Portugal"
              data-id="PT"
              d="m 937.6,335.9 -0.4,-2.1 2,-2.5 0.8,-1.7 -1.8,-1.9 1.6,-4.3 -2,-3.8 2.2,-0.5 0.3,-3 0.9,-0.9 0.2,-4.9 2.4,-1.7 -1.3,-3.1 -3,-0.2 -0.9,0.8 -3,0 -1.2,-3.1 -2.1,0.9 -1.9,1.6 0.1,2.1 0.9,2.2 0.1,2.7 -1.3,3.8 -0.4,2.5 -2.2,2.3 -0.6,4.2 1.2,2.4 2.3,0.6 0.4,4 -1,5.1 2.8,-0.7 2.7,0.9 2.2,-1.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PY" title="0" data-name="Paraguay"
              data-id="PY"
              d="m 655.7,700.5 -0.3,-1.9 -5.4,-3.3 -5.1,-0.1 -9.5,1.9 -2.1,5.6 0.2,3.4 -1.5,7.6 11.2,10.4 4.6,1 7.2,4.7 5.9,2.5 1.1,2.8 -4.2,9.6 5.7,1.8 6.2,1 4.2,-1.1 4.3,-4.8 0.3,-5.7 0.7,-3.6 0.3,-3.8 -0.3,-3.5 -2.1,-1.2 -2,1.1 -2,-0.3 -0.9,-2.5 -1,-5.8 -1.2,-1.9 -3.9,-1.7 -2.1,1.2 -6,-1.2 -0.4,-8.6 -1.9,-3.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PS" title="0" data-name="Palestine"
              data-id="PS" d="m 1166.9,366.1 -2,-0.9 -0.7,4.3 1.4,0.7 -1.2,0.8 -0.1,1.7 2.4,-0.8 0.6,-1.9 -0.4,-3.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="QA" title="0" data-name="Qatar"
              data-id="QA" d="m 1258,415.5 0.8,-3.8 -0.5,-3.7 -1.9,-2 -1.4,0.7 -1.1,3.3 0.8,4.7 1.8,1.2 1.5,-0.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="RO" title="0" data-name="Romania"
              data-id="RO"
              d="m 1108.1,266.3 -2.1,0 -1,1.5 -3.6,0.6 -1.6,0.9 -2.4,-1.5 -3.2,0 -3.2,-0.7 -1.9,1.3 -2.9,1.3 -1.9,4.2 -2.6,4.3 -3.8,1.1 2.9,2.5 0.8,1.9 3.2,1.5 0.7,2.5 3.1,1.8 1.4,-1.3 1.4,0.7 -1.1,1.1 1,1 1.8,2.6 1.9,-0.5 4,1 7.5,0.3 2.3,-1.6 5.8,-1.4 4,2.2 3,0.7 0.4,-7.4 1.6,0.5 2.3,-1.3 -0.4,-1.6 -2.4,-1.1 -2.2,1 -2.4,-1.1 -1.3,-2.8 0.2,-2.7 -0.6,-2.7 -3.4,-3.7 -1.9,-2.6 -1.8,-1.9 -1.6,-0.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" id="RU" title="0" data-name="Russia" data-id="RU" style=" fill-rule:evenodd"
              d="m 1332.3,95.1 -4.5,-4 -13.6,-4.1 -9.4,-2.1 -6.2,0.9 -5.3,2.9 5.8,0.8 6.6,3.2 8,1.7 11.5,1.3 7.1,-0.6 z m -178.7,-7.3 0.9,-0.6 -5.7,-0.9 -2.8,0.7 -1.3,1 -1.5,-1.2 -5.2,0.1 -6.2,0.8 7.7,0.1 -1.1,1.3 4.4,1 3.6,-0.7 0.1,-0.7 2.9,-0.3 4.2,-0.6 z m 200.5,9.9 -1.5,-1.8 -12.5,-2.6 -3,-0.3 -2.2,0.5 1.2,6 18,-1.8 z m 15.2,6.3 -9.2,-0.7 3.4,-1.2 -8.2,-1.5 -6.1,1.9 -1,2 1.5,2.1 -6.9,-0.1 -5.3,2.6 -4.3,-1.1 -9.3,0.5 0.3,1.3 -9.2,0.7 -4.9,2.4 -4.2,0.2 -1.2,3.3 5.5,2.6 -7.7,0.7 -9.5,-0.3 -5.8,1.1 4.8,5.4 6.9,4.3 -9.6,-3 -7.9,0.3 -5.1,2 4.5,3.8 -4.9,-1 -2.1,-5 -4.2,-2.8 -1.8,0.1 3.6,3.7 -4.6,3.5 8.1,4.2 0.4,5.4 2.9,2.9 4.7,0.5 0.4,3.5 4.4,3.1 -1.9,2.6 0.5,2.7 -3.7,1.4 -0.5,2 -5.3,-0.8 3.5,-7.8 -0.5,-3.6 -6.7,-3.3 -3.8,-7.3 -3.7,-3.7 -3.6,-1.6 0.8,-4.2 -2.9,-2.9 -11.3,-1.4 -2.1,1 0.5,4.7 -4.3,4.7 1.2,1.7 4.7,4.1 0.1,2.6 5.3,0.5 0.8,1.1 5.8,2.9 -1,2.8 -18.5,-6.1 -6.6,-1.7 -12.8,-1.6 -1.2,1.7 5.9,3.1 -2.7,3.6 -6.4,-3.2 -5,2.2 -7.6,0.1 -2.1,1.9 -5.3,-0.6 2.5,-3.3 -3.2,-0.2 -12.3,4.6 -7.6,2.6 0.4,3.5 -6,1.2 -4,-1.9 -1.2,-3 5,-0.7 -3.6,-3 -12.2,-1.8 4.3,3.4 -0.8,3.2 4.7,3.3 -1.1,3.8 -4.6,-1.9 -4,-0.3 -8,5.4 4.2,4.1 -3.2,1.4 -11.4,-3.5 -2.1,2.1 3.3,2.4 0.2,2.7 -3.8,-1.4 -6,-1.7 -1.9,-5.8 -1,-2.6 -8,-4 2.9,-0.7 20.1,4.2 6.4,-1.5 3.7,-2.9 -1.6,-3.6 -4,-2.6 -17.6,-6.1 -11.6,-1.3 -7.6,-3.2 -3.6,1.8 0,0 -6.4,2.2 -3.2,0.5 0.4,3.7 7.2,3.7 -2.8,4.1 6.4,6.3 -1.7,4.8 4.9,4.1 -0.9,3.7 7.3,3.9 -0.9,2.9 -3.3,3.3 -7.9,7.4 0,0 5.3,2.8 -4.5,3.2 0,0 0.9,1 -2.6,3.4 2.5,5.5 -1.6,1.9 2.4,1.4 1,2.8 2.1,3.6 5.2,1.5 1,1.4 2.3,-0.7 4.8,1.4 1,2.9 -0.6,1.6 3.7,3.9 2.2,1.1 -0.1,1.1 3.4,1.1 1.7,1.6 -1.6,1.3 -3.9,-0.2 -0.8,0.6 1.5,2 2,3.9 0,0 1.8,0.2 1,-1.4 1.5,0.3 4.8,-0.5 3.8,3.4 -0.9,1.3 0.7,1.9 4,0.2 2.2,2.7 0.2,1.2 6.6,2.2 3.5,-1 3.6,2.9 2.9,-0.1 7.6,2 0.4,1.9 -1.3,3.2 1.8,3.4 -0.3,2.1 -4.7,0.5 -2.2,1.7 0.4,2.8 4.2,-1 0.4,1.3 -6.8,2.6 3.2,2.4 -3.2,5.2 -3.4,1 5,3.6 6.2,2.4 7.4,5.1 0.5,-0.7 4.5,1.1 7.7,1 7.5,2.9 1.1,1.2 2.9,-1 5.1,1.3 2.1,2.5 3.5,1.4 1.5,0.2 4.3,3.8 2.4,0.4 0.5,-1.5 2.6,-2.5 0,0 -7.3,-7.3 -0.4,-4.1 -5.9,-5.9 3.5,-6.3 4.6,-1.1 1.4,-3.7 -2.8,-1 -0.2,-3.2 -4.2,-4.1 -3.6,0.2 -5.3,-4.3 1.7,-4.7 -1.7,-1.2 2.1,-6.8 6,3.6 -0.7,-4.6 8.1,-6.6 7.5,-0.2 11.9,4.3 6.6,2.4 4.3,-2.5 7.6,-0.2 7.3,3.2 0.8,-1.8 6.9,0.3 0.2,-3 -9.4,-4.2 3.6,-2.9 -1.5,-1.7 3.9,-1.6 -5,-4.1 1.4,-2.1 16.8,-2.1 1.7,-1.5 10.8,-2.2 3.1,-2.5 9,1.3 4.3,6.3 4.3,-1.5 7,2.1 1.2,3.3 4.4,-0.4 9.1,-5.7 -0.8,1.9 8.3,4.7 18.1,15.5 1.1,-3.3 8.3,3.6 6.2,-1.6 3.2,1.1 4.1,3.6 3.9,1.2 3.3,2.6 6,-0.9 4.3,3.8 1.7,-0.5 4.7,-1 6.6,-5.4 5.9,-2.9 5.3,1.9 5.1,0.1 4.7,2.9 5,0.2 7.9,1.6 2.4,-4.3 -4,-3.6 1.3,-6.4 6.9,2.5 4.8,0.8 6.6,1.5 3.7,4.6 8.4,2.6 3.9,-1.1 5.7,-0.8 5.4,0.8 6.5,3 4.9,3.1 4.5,0 6.7,1 3.6,-1.6 5.8,-1 4.5,-4.4 3.3,0.7 3.9,2.1 5.5,-0.5 7.3,2.3 4.4,-3.9 -1.9,-2.7 -0.1,-6.5 1.2,-2 -2.5,-3.3 -3.7,-1.5 1.7,-3 5.1,-1.1 6.2,-0.2 8.5,1.8 5.9,2.3 7.7,6.1 3.8,2.7 4.4,3.7 6.1,6.1 9.9,1.9 8.9,4.5 6,5.8 7.5,0 2.6,-2.5 6.9,-1.8 1.3,5.6 -0.4,2.3 2.8,6.8 0.6,6 -6.8,-1.1 -2.9,2.2 4.7,5.3 3.8,7.3 -2.5,0.1 1.9,3.1 0,0 1.4,1.1 0,0 0,0 0,0 -0.4,-2 4,-4.5 5.1,3 3.2,-0.1 4.4,-3.6 1,-3.7 2.1,-7.1 1.9,-7.2 -1.3,-4.3 1,-9 -5.2,-9.9 -5.5,-7.3 -1.3,-6.2 -4.7,-5.1 -12.7,-6.7 -5.6,-0.4 -0.3,3 -5.8,-1.3 -5.7,-3.8 -8,-0.7 4.9,-14.1 3.5,-11.5 13.1,-1.8 14.9,1 2.5,-2.8 7.9,0.8 4.3,4.3 6.4,-0.6 8.4,-1.6 -7.7,-3.5 0,-9.8 9.1,-1.9 12.1,7.1 3.6,-6.4 -3.2,-4.7 4.7,-0.5 6.5,8.1 -2.4,4.6 -0.8,6 0.3,7.5 -5.7,1.3 2.8,2.7 -0.1,3.6 6.4,8.3 16,13.4 10.5,8.8 5.7,4.3 1.6,-5.7 -4.5,-6.2 5.7,-1.5 -5.4,-6.9 5,-3.1 -4.7,-2.6 -3.4,-5 4.1,-0.2 -9,-8.6 -6.7,-1.4 -2.9,-2.4 -1.1,-5.6 -3.1,-3.9 7,0.8 1.3,-2.5 4.7,2.2 6.1,-4.6 11.4,4 -1.7,-2.6 2,-3.6 1.5,-4 3.1,-0.7 6.5,-4.3 9.8,1.2 -0.9,-1.5 -3.8,-2.3 -4.1,-1.6 -9.1,-4.6 -8.1,-3 6.1,0.4 2,-2.5 0,0 -32.9,-21.9 -9.4,-2.3 -15.7,-2.6 -7.9,0.3 -15.2,-1.4 1.8,2.3 8.5,3.4 -2.5,1.8 -14.2,-4.8 -6.8,0.6 -9.2,-1.1 -7,0.2 -3.9,1.1 -7.2,-1.6 -5.1,-3.8 -6.5,-2.2 -9.2,-0.9 -14.7,1 -16.1,-4 -7.8,-3 -40.1,-3.4 -2.1,2.2 9.3,4.8 -7.5,-0.7 -1,1.5 -9.7,-1.6 -5,1.4 -9.3,-2.4 3,5.5 -8.9,-2.1 -10,-4.1 -0.4,-2.2 -6,-3.3 -9.8,-2.6 -6.1,0 -9.3,-0.9 4.7,3.9 -17.2,-0.8 -3.9,-2.3 -13.3,-0.9 -5.3,0.8 -0.1,1.3 -5.8,-3.2 -2.3,0.9 -7.2,-1.2 -5.6,-0.7 1.1,-1.5 6.6,-2.8 2.3,-1.5 -2.4,-2.5 -5.5,-1.9 -11.5,-2.3 -10.8,-0.1 -1.9,1.2 -4.1,-2.4 z m -162.2,31.6 -9.9,-4.3 -3.1,-4.3 3.3,-4.9 2.8,-5 8.6,-4.7 9.8,-2.4 11.3,-2.4 1.3,-1.5 -4.2,-1.9 -6.6,0.6 -4.9,1.8 -11.7,0.9 -10.1,3.1 -6.8,2.7 2.5,2.2 -6.6,4.4 3.9,0.7 -5.4,4.3 1.6,2.8 -3.4,1.1 1.9,2.8 7.9,1.4 2.2,2.3 13.4,0.7 2.2,-0.4 z m 314,-24.7 -17.9,-2.6 -10.2,-0.2 -3.4,0.9 3.4,3.4 12.4,3.2 4.5,-1.2 14.2,0.2 -3,-3.7 z m 25.2,2.3 -11.7,-1.3 -8.2,-0.7 1.7,1.6 10.3,2 6.8,0.4 1.1,-2 z m -12.5,9.5 -2.5,-1.4 -8.3,-1.9 -4.1,0.5 -0.8,2 1.1,0.2 8.8,0.6 5.8,0 z m 162.6,12.3 -6,-3.6 -1.4,2.2 3.5,1.6 3.9,-0.2 z m -612.4,93.9 -0.6,-1.5 0.2,-1.7 -2.2,-0.9 -5,-1.1 -6.3,2 -0.7,2.6 5.9,0.7 8.7,-0.1 z m 589.7,21.8 -7.2,-6.2 -5.1,-6 -6.8,-5.8 -4.9,-4 -1.3,0.8 4.4,2.8 -1.9,2.8 6.8,8.3 7.8,6 6.4,8.3 2.4,4.6 5.5,6.8 3.8,6 4.6,5.2 -0.1,-4.8 6.5,3.8 -3,-4.4 -9.5,-6.3 -3.7,-9 8.9,2 -13.6,-10.9 z"
              inkscape:connector-curvature="0" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="RW" title="0" data-name="Rwanda"
              data-id="RW"
              d="m 1147.6,579.4 -3.3,1.9 -1.4,-0.6 -1.6,1.8 -0.2,3.8 -0.8,0.4 -0.6,3.5 3.5,0.5 1.7,-3.6 3,0.4 0,0 1.6,-0.8 0.4,-3.7 -2.3,-3.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="EH" title="0" data-name="W. Sahara"
              data-id="EH"
              d="m 929.6,396.2 -0.8,0 0,0 0.1,3.4 -3.4,0.2 -1.8,1.5 -2.5,0 -1.9,-0.9 -4.6,0.7 -1.9,5 -1.7,0.4 -2.8,8.1 -7.8,6.8 -2,8.8 -2.3,2.9 -0.7,2.3 -12.4,0.5 -0.1,0 -0.3,2.7 1.2,-2.2 21.6,0.1 -0.9,-9.2 1.4,-3.3 5.2,-0.5 0.2,-16.3 17.9,0.3 0.2,-9.7 0.1,-1.2 0,-0.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SA" title="0" data-name="Saudi Arabia"
              data-id="SA"
              d="m 1228.7,387 -10.2,-0.5 -16.7,-12.7 -8.5,-4.5 -6.7,-1.7 -0.9,1 -10.4,3.1 6.1,6.4 -1.7,1 -0.7,2.2 -4,0.8 -1.1,2.3 -2.1,2 -6.1,-1 -0.5,2.5 0,2.2 -0.6,3.5 2.7,0 3.2,4.4 3.7,5.1 2.5,4.7 1.7,1.5 1.7,3.3 -0.2,1.4 2.1,3.7 3,1.3 2.8,2.5 3.6,7 0,3.8 0.9,4.4 4,6.1 2.5,1 4.1,4.4 1.9,5.2 3.2,5.3 3,2.3 0.6,2.5 1.8,1.9 0.9,2.8 2.3,-2.1 -0.7,-2.7 1.2,-3.1 2.4,1.7 1.5,-0.6 6.4,-0.2 1,0.7 5.4,0.6 2.1,-0.3 1.6,2.1 2.5,-1 3.5,-6.7 5,-2.9 15.7,-2.4 16.1,-6.4 2.6,-12.7 -2.9,-4.5 -1,1.3 -16.8,-3.2 -2.6,-6.4 -0.4,-1.5 -1.2,-2.4 -1.5,0.4 -1.8,-1.2 -1,-1.6 -0.9,-2.1 -1.7,-1.8 -1,-2.1 0.4,-2.1 -0.6,-2.7 -4,-2.6 -1.2,-2.3 -2.9,-1.4 -2.7,-5.5 -3.8,0.2 -1.7,-3.1 -4.9,-0.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SD" title="0" data-name="Sudan"
              data-id="SD"
              d="m 1180.8,468.5 0.4,-4.2 1.6,-2 4,-1 2.6,-3.6 -3.1,-2.4 -2.2,-1.6 -2.5,-7.6 -1.1,-6.5 1.1,-1.2 -2.1,-6.2 -21.8,0 -21.4,0 -22.1,0 0.5,12.7 -6.3,0 0,2.7 1.1,25.2 -4.8,-0.4 -2.4,4.7 -1.4,3.9 1.2,1.5 -1.8,1.9 0.7,2.7 -1.4,2.6 -0.5,2.4 2,-0.4 1.2,2.5 0.1,3.7 2.1,1.8 0,1.6 0.7,2.7 3.3,4 0,2.6 -0.8,2.6 0.3,2 2,1.8 0.5,0.3 1.7,-0.7 1.9,-1.2 1.3,-5.7 1.5,-2.9 4,-0.9 1,1.8 3,3.7 1.5,0.5 2,-1.1 4.1,0.3 0.8,1.3 5.5,0 0.2,-1.3 2.9,-1.2 0.5,-1.9 2.1,-1.3 4.8,3.7 2.8,-0.7 2.7,-4.5 3,-3.5 -0.6,-3.9 -1.4,-1.8 3.4,-0.3 0.3,-1.5 2.6,0.5 -0.5,4.7 0.8,4.6 2.9,2.5 0.7,2.2 0,3.1 0.8,0.1 0,-0.7 1.4,-6.7 2.6,-1.8 0.5,-2.6 2.3,-4.8 3.2,-3.2 2.1,-6.2 0.7,-5.5 -0.7,-2.5 1.9,-9.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SS" title="0" data-name="S. Sudan"
              data-id="SS"
              d="m 1166,508.7 -0.7,-2.2 -2.9,-2.5 -0.8,-4.6 0.5,-4.7 -2.6,-0.5 -0.3,1.5 -3.4,0.3 1.4,1.8 0.6,3.9 -3,3.5 -2.7,4.5 -2.8,0.7 -4.8,-3.7 -2.1,1.3 -0.5,1.9 -2.9,1.2 -0.2,1.3 -5.5,0 -0.8,-1.3 -4.1,-0.3 -2,1.1 -1.5,-0.5 -3,-3.7 -1,-1.8 -4,0.9 -1.5,2.9 -1.3,5.7 -1.9,1.2 -1.7,0.7 3.8,2.5 3.1,2.6 0.1,2 3.8,3.4 2.4,2.7 1.5,3.8 4.2,2.5 0.9,2.1 3.5,5.2 2.5,0.8 1.5,-1.1 2.6,0.4 3.1,-1.3 1.4,2.7 5,4.2 0,0 2.3,-1.7 3.5,1.4 4.5,-1.5 4,0.1 3.4,-3 3.4,-3.8 3.8,-4.2 -3.5,-6.9 -2.6,-1.5 -1,-2.5 -2.9,-3.1 -3.4,-0.5 1.8,-3.6 3,-0.1 0.8,-2 -0.2,-5 -0.8,-0.1 0,-3.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SN" title="0" data-name="Senegal"
              data-id="SN"
              d="m 908.9,479.2 -3.6,-4.4 -3.2,-4.7 -3.7,-1.7 -2.6,-1.8 -3.1,0 -2.8,1.4 -2.7,-0.5 -2,2 -1.3,3.3 -2.8,4.4 -2.5,1.2 2.7,2.3 2.2,5 6.1,-0.2 1.3,-1.5 1.8,-0.1 2.1,1.5 1.8,0.1 1.8,-1.1 1.1,1.8 -2.4,1.5 -2.4,-0.1 -2.4,-1.4 -2.1,1.5 -1,0 -1.4,0.9 -5,-0.1 0.8,4.9 3,-1.1 1.8,0.2 1.5,-0.7 10.3,0.3 2.7,0.1 4,1.5 1.3,-0.1 0.4,-0.7 3,0.5 0.8,-0.4 0.3,-2 -0.4,-2.4 -2.1,-1.8 -1.1,-3.7 -0.2,-3.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SL" title="0" data-name="Sierra Leone"
              data-id="SL"
              d="m 919.4,518.7 -1.5,0.3 0,-2.3 -0.9,-1.7 0.2,-1.8 -1.2,-2.7 -1.5,-2.3 -4.5,0 -1.3,1.2 -1.5,0.2 -1,1.4 -0.7,1.7 -3,2.8 0.7,4.7 0.9,2.3 2.9,3.5 4.1,2.5 1.5,0.5 1.3,-2 0.3,-1.9 2.6,-3.4 2.6,-3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SV" title="0" data-name="El Salvador"
              data-id="SV"
              d="m 487.2,487 0.6,-2.5 -0.7,-0.7 -1.1,-0.5 -2.5,0.8 -0.1,-0.9 -1.6,-1 -1.1,-1.3 -1.5,-0.5 -1.4,0.4 0.2,0.7 -1.1,0.7 -2.1,1.6 -0.2,1 1.4,1.3 3.1,0.4 2.2,1.3 1.9,0.6 3.3,0.1 0.7,-1.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="RS" title="0" data-name="Serbia"
              data-id="RS"
              d="m 1084.8,285.2 -3.2,-1.5 -0.8,-1.9 -2.9,-2.5 -3.2,-0.2 -3.7,1.6 0,0 1.5,2.4 1.7,1.8 -1.7,2.3 0,0 1.8,0 -1,2.7 2.7,2.3 -0.5,2.9 -1.2,0.3 1.5,1.1 0.8,0.8 1.8,0.7 2,1.2 -0.4,0.6 1.2,-0.5 0.5,-2 0.9,-0.4 0.8,0.9 1,0.4 0.8,1 0.8,0.3 1.1,1.1 0.8,0 -0.5,1.5 -0.5,0.7 0.2,0.5 1.7,-0.4 2.4,-0.1 0.7,-0.9 -0.6,-0.7 0.7,-2 1.7,-1.9 -2.8,-2.6 -0.7,-2.3 1.1,-1.4 -1,-1 1.1,-1.1 -1.4,-0.7 -1.4,1.3 -3.1,-1.8 -0.7,-2.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SR" title="0" data-name="Suriname"
              data-id="SR"
              d="m 668,533.8 -4.6,0.5 -0.6,1.1 -6.7,-1.2 -1,5.7 -3.5,1.6 0.3,1.5 -1.1,3.3 2.4,4.6 1.8,0.1 0.7,3.5 3.3,5.6 3.1,0.5 0.5,-1.3 -0.9,-1.3 0.5,-1.8 2.3,0.6 2.7,-0.7 3.2,1.4 1.4,-2.7 0.6,-2.9 1,-2.8 -2.1,-3.7 -0.4,-4.4 3.1,-5.5 -6,-1.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SK" title="0" data-name="Slovakia"
              data-id="SK"
              d="m 1087.4,260.9 -4.9,-2.3 -3.4,0.8 -2.4,-0.6 -2.8,1.3 -2.7,-2.2 -1.9,0.9 -0.3,-0.4 -1.5,0 -0.6,1.1 -1.1,0.3 -0.2,1.4 -0.9,0.3 -0.1,0.6 -1.6,0.6 -2.2,-0.1 -0.6,1.4 -0.3,0.8 0.7,2.1 2.6,1.6 1.9,0.7 4.1,-0.8 0.3,-1.2 1.9,-0.2 2.3,-1 0.6,0.4 2.2,-0.7 1,-1.5 1.6,-0.4 5.5,1.9 1,-0.6 0.7,-2.5 1.1,-1.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SI" title="0" data-name="Slovenia"
              data-id="SI"
              d="m 1059.4,277 -1.2,-2.1 -0.8,-0.1 -0.9,1.1 -4.3,0.1 -2.4,1.4 -4.2,-0.4 -0.3,3 1.4,2.7 -1.1,0.5 3.5,0.2 0.8,-1 1.8,1 2,0.1 -0.2,-1.7 1.7,-0.6 0.3,-2.5 3.9,-1.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SE" title="0" data-name="Sweden"
              data-id="SE"
              d="m 1077.7,161.1 -1.9,-2.2 -1.7,-8.4 -7.2,-3.7 -5.9,-2.7 -2.5,0.3 0,3.5 -7.9,-0.9 -0.6,3.1 -4,-0.1 -2.2,3.9 -3.4,6.1 -5.7,7.9 1.8,1.9 -1.3,2.2 -4.3,-0.1 -2.3,5.3 1,7.6 3.1,2.9 -0.9,6.9 -3.4,4 -1.7,3.3 4.2,8.4 4.4,6.7 2,5.7 5.3,-0.3 2.2,-4.7 5.7,0.5 2,-5.5 0.6,-10 4.6,-1.3 3.3,-6.6 -4.8,-3.3 -3.6,-4 2.1,-8.1 7.7,-4.9 6.1,-4.5 -1.2,-3.5 3.4,-3.9 7,-1.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SZ" title="0" data-name="Swaziland"
              data-id="SZ"
              d="m 1150.5,736.6 -2.7,-1.2 -1.6,0.5 -0.7,1.8 -1.6,2.4 -0.1,2.2 3,3.5 3.3,-0.7 1.3,-2.8 -0.3,-2.8 -0.6,-2.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SY" title="0" data-name="Syria"
              data-id="SY"
              d="m 1183.5,359.9 11,-6.7 0.9,-7.8 -1.2,-4.7 2.7,-1.6 2.1,-4.1 -5.9,1.1 -2.8,-0.2 -5.7,2.5 -4.3,0 -3,-1.2 -5.5,1.8 -1.9,-1.3 0.1,3.6 -1.2,1.5 -1.2,1.4 -1,2.6 1.1,5 2.4,0.3 1.2,2.5 -2.6,2.4 -0.9,3.5 0.3,2.6 -0.6,1 0.1,0 6.3,2.5 9.6,-6.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TD" title="0" data-name="Chad"
              data-id="TD"
              d="m 1108.4,447.6 -22.4,-12.2 -22.3,-12.2 -5.4,3.5 1.6,9.9 2,1.6 0.2,2.1 2.3,2.2 -1.1,2.7 -1.8,12.9 -0.2,8.3 -6.9,6 -2.3,8.4 2.4,2.3 0,4.1 3.6,0.2 -0.5,2.9 2.2,4.1 0.5,4.2 -0.2,4.3 3.1,5.8 -3.1,-0.1 -1.6,0.4 -2.5,-0.6 -1.2,3 3.3,3.7 2.5,1.1 0.8,2.6 1.8,4.4 -0.9,1.7 4.7,-0.4 1,-1.7 0.9,0.2 1.4,1.4 7.1,-2.4 2.3,-2.5 2.9,-2.2 -0.6,-2.3 1.6,-0.6 5.4,0.4 5.2,-2.9 4,-7 2.8,-2.5 3.5,-1.1 0,-1.6 -2.1,-1.8 -0.1,-3.7 -1.2,-2.5 -2,0.4 0.5,-2.4 1.4,-2.6 -0.7,-2.7 1.8,-1.9 -1.2,-1.5 1.4,-3.9 2.4,-4.7 4.8,0.4 -1.1,-25.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TG" title="0" data-name="Togo"
              data-id="TG"
              d="m 981.7,502.2 -4.9,-0.1 -0.4,1.9 2.4,3.3 -0.1,4.6 0.6,5.1 1.4,2.3 -1.2,5.7 0.4,3.2 1.5,4 1.2,2.2 4.6,-1.3 -1.4,-4.4 0.2,-14.6 -1.1,-1.3 -0.2,-3.1 -2,-2.3 -1.7,-1.9 0.7,-3.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TH" title="0" data-name="Thailand"
              data-id="TH"
              d="m 1562.7,481.4 1.5,-2.9 -0.5,-5.4 -5.2,-5.5 -1.3,-6.3 -4.9,-5.2 -4.3,-0.4 -0.8,2.2 -3.2,0.2 -1.8,-1.2 -5.3,3.8 -1,-5.7 0.4,-6.7 -3.8,-0.3 -0.9,-3.8 -2.6,-1.9 -3,1.4 -2.8,2.8 -3.9,0.3 -1.5,6.9 -2.2,1.1 3.5,5.6 4.1,4.6 2.9,4.2 -1.4,5.6 -1.7,1.1 1.7,3.2 4.2,5.1 1,3.5 0.2,3 2.8,5.8 -2.6,5.9 -2.2,6.6 -1.3,6.1 -0.3,3.9 1.2,3.6 0.7,-3.8 2.9,3.1 3.2,3.5 1.1,3.2 2.4,2.4 0.9,-1.1 4.7,2.8 0.6,3.3 3.7,-0.8 1.7,-2.6 -3.1,-3.3 -3.4,-0.8 -3.3,-3.6 -1.4,-5.5 -2.6,-5.8 -3.7,-0.2 -0.7,-4.6 1.4,-5.6 2.2,-9.3 -0.2,-7 4.9,-0.1 -0.3,5 4.7,-0.1 5.3,2.9 -2.1,-7.7 3,-5.2 7.1,-1.3 5.3,1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TJ" title="0" data-name="Tajikistan"
              data-id="TJ"
              d="m 1344.1,315.7 -2.1,0.2 -1.3,-1.8 0.2,-2.9 -6.4,1.5 -0.5,4 -1.5,3.5 -4.4,-0.3 -0.6,2.8 4.2,1.6 2.4,4.7 -1.3,6.6 1.8,0.8 3.3,-2.1 2.1,1.3 0.9,-3 3.2,0.1 0.6,-0.9 -0.2,-2.6 1.7,-2.3 3.2,1.5 0,2 1.6,0.3 1,5.4 2.6,2.1 1.5,-1.3 2.1,-0.7 2.5,-2.9 3.8,0.5 5.4,0 -1.8,-3.7 -0.6,-2.5 -3.5,-1.4 -1.6,0.6 -3,-5.9 -9.5,0.9 -7.1,-2 -5.4,0.5 -0.6,-3.7 5.9,1.1 1.4,-2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TM" title="0" data-name="Turkmenistan"
              data-id="TM"
              d="m 1325.6,334.2 -0.8,-4 -7.7,-2.7 -6.2,-3.2 -4.2,-3 -7,-4.4 -4.3,-6.4 -2,-1.2 -5.5,0.3 -2.3,-1.3 -1.9,-4.9 -7.8,-3.3 -3.3,3.6 -3.8,2.2 1.6,3.1 -5.8,0.1 -2.5,0.3 -4.9,-4.9 -3.8,-1.7 -5.5,1.3 -1.8,2 2.5,4 -0.5,-4.5 3.7,-1.6 2.4,3.6 4.6,3.7 -4,2 -5.3,-1.5 0.1,5.2 3.5,0.4 -0.4,4.4 4.5,2.1 0.7,6.8 1.8,4.5 4.4,-1.2 3,-3.7 3.5,0.2 2.1,-1.2 3.8,0.6 6.5,3.3 4.3,0.7 7.3,5.7 3.9,0.2 1.6,5.5 5.9,2.4 3.9,-0.8 0.4,-3 4,-0.9 2.5,-2 -0.1,-5.2 4.1,-1.2 0.3,-2.3 2.9,1.7 1.6,0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TL" title="0" data-name="Timor-Leste"
              data-id="TL"
              d="m 1676.8,631.9 4.9,-1.8 6,-2.8 2.2,-1.7 -2,-0.8 -1.8,0.8 -4,0.2 -4.9,1.4 -0.8,1.5 0.5,1.3 -0.1,1.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TN" title="0" data-name="Tunisia"
              data-id="TN"
              d="m 1038,361.4 -2,-1 -1.5,-3 -2.8,-0.1 -1.1,-3.5 3.4,-3.2 0.5,-5.6 -1.9,-1.6 -0.1,-3 2.5,-3.2 -0.4,-1.3 -4.4,2.4 0.1,-3.3 -3.7,-0.7 -5.6,2.6 -1,3.3 1,6.2 -1.1,5.3 -3.2,3.6 0.6,4.8 4.5,3.8 0,1.5 3.4,2.6 2.6,11.3 2.6,-1.4 0.4,-2.7 -0.7,-2.6 3.7,-2.5 1.5,-2 2.6,-1.8 0.1,-4.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TR" title="3751456" data-name="Turkey"
              data-id="TR"
              d="m 1166.6,308.9 -9.7,-4.4 -8.5,0.2 -5.7,1.7 -5.6,4 -9.9,-0.8 -1.6,4.8 -7.9,0.2 -5.1,6.1 3.6,3 -2,5 4.2,3.6 3.7,6.4 5.8,-0.1 5.4,3.5 3.6,-0.8 0.9,-2.7 5.7,0.2 4.6,3.5 8,-0.7 3.1,-3.7 4.6,1.5 3.2,-0.6 -1.7,2.4 2.3,3 1.2,-1.4 1.2,-1.5 -0.1,-3.6 1.9,1.3 5.5,-1.8 3,1.2 4.3,0 5.7,-2.5 2.8,0.2 5.9,-1.1 2.1,-1 6.2,0.9 2.1,1.6 2.3,-1.1 0,0 -3.7,-5.2 0.7,-2 -2.9,-7.3 3.3,-1.8 -2.4,-1.9 -4.2,-1.5 0,-3.1 -1.3,-2.2 -5.6,-3 -5.4,0.3 -5.5,3.2 -4.5,-0.6 -5.8,1 -7.8,-2.4 z m -49.6,4 2,-1.9 6.1,-0.4 0.7,-1.5 -4.7,-2 -0.9,-2.4 -4.5,-0.8 -5,2 2.7,1.6 -1.2,3.9 -1.1,0.7 0.1,1.3 1.9,2.9 3.9,-3.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TW" title="0" data-name="Taiwan"
              data-id="TW" d="m 1642.3,427.2 1.2,-10.2 0.1,-3.9 -2.9,-1.9 -3.3,4.8 -1.9,6.3 1.5,4.7 4,5.4 1.3,-5.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TZ" title="0" data-name="Tanzania"
              data-id="TZ"
              d="m 1149.6,578.6 -2,0.8 2.3,3.6 -0.4,3.7 -1.6,0.8 0,0 0.3,2.5 1.2,1.5 0,2 -1.4,1.4 -2.2,3.3 -2.1,2.3 -0.6,0.1 -0.3,2.7 1.1,0.9 -0.2,2.7 1,2.6 -1.3,2.4 4.5,4.3 0.3,3.9 2.7,6.5 0,0 0.3,0.2 2.2,1.1 3.5,1.1 3.2,1.9 5.4,1.2 1.1,1.7 0,0 0.4,-1.2 2.8,3.4 0.3,6.7 1.8,2.4 0,0.1 2.1,-0.3 6.7,1.8 1.4,-0.8 3.9,-0.1 2.1,-1.9 3.3,0.1 6.2,-2.5 4.6,-3.7 0,0 -2,-1.4 -2.2,-6.3 -1.8,-3.9 0.4,-3.1 -0.3,-1.9 1.7,-3.9 -0.2,-1.6 -3.5,-2.3 -0.3,-3.6 2.8,-7.9 -8,-6.3 -0.4,-3.7 -20.2,-13 0,0 -2.8,2.8 -1.9,2.9 2.2,2.2 -3.2,1.6 -0.7,-0.8 -3.2,0.4 -2.5,1.4 -1.6,-2.4 1.1,-4.5 0.2,-3.8 0,0 0,0 -6.2,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="UG" title="0" data-name="Uganda"
              data-id="UG"
              d="m 1167.6,545.1 -3.4,3 -4,-0.1 -4.5,1.5 -3.5,-1.4 -2.3,1.7 0,0 -0.3,7.5 2.3,0.8 -1.8,2.3 -2.2,1.7 -2.1,3.3 -1.2,3 -0.3,5.1 -1.3,2.4 -0.1,4.8 1.4,0.6 3.3,-1.9 2,-0.8 6.2,0.1 0,0 -0.3,-2.5 2.6,-3.7 3.5,-0.9 2.4,-1.5 2.9,1.2 0.3,0.5 0,-0.3 1.6,-2.6 2.7,-4.2 2.1,-4.7 -2.6,-7.3 -0.7,-3.2 -2.7,-4.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="UA" title="0" data-name="Ukraine"
              data-id="UA"
              d="m 1138.5,241 -4.8,0.5 -1.5,-0.3 -1,1.4 -1.8,-0.2 0,0 -4.1,0.3 -1.2,1.4 0.2,3.1 -2,-0.6 -4.3,0.3 -1.5,-1.5 -1.6,1.1 -2,-0.9 -3.8,-0.1 -5.6,-1.5 -5,-0.5 -3.7,0.2 -2.4,1.6 -2.2,0.3 3.1,5.3 -0.3,1.8 -2.3,0.7 -3.8,5.1 1.6,2.8 -1.1,-0.4 -1.1,1.7 -0.7,2.5 2.9,1.7 0.6,1.6 1.9,-1.3 3.2,0.7 3.2,0 2.4,1.5 1.6,-0.9 3.6,-0.6 1,-1.5 2.1,0 1.1,-0.9 3.2,-0.6 3.9,1.9 2,0.3 2.5,1.6 0,2.1 1.9,1.1 1.1,2.6 2,1.5 -0.2,1 1,0.6 -1.2,0.5 -3,-0.2 -0.6,-0.9 -1,0.5 0.5,1.1 -1.1,2 -0.5,2.1 -1.2,0.7 2.4,1.1 2.2,-1 2.4,1.1 3.3,-4.6 1.3,-3.4 4.5,-0.8 0.7,2.4 8,1.5 1.7,1.4 -4.5,2.1 -0.7,1.2 5.8,1.8 -0.6,2.9 3,1.3 6.3,-3.6 5.3,-1.1 0.6,-2.2 -5.1,0.4 -2.7,-1.5 -1,-3.9 3.9,-2.3 4.6,-0.3 3,-2 3.9,-0.5 -0.4,-2.8 2.2,-1.7 4.7,-0.5 0.3,-2.1 -1.8,-3.4 1.3,-3.2 -0.4,-1.9 -7.6,-2 -2.9,0.1 -3.6,-2.9 -3.5,1 -6.6,-2.2 -0.2,-1.2 -2.2,-2.7 -4,-0.2 -0.7,-1.9 0.9,-1.3 -3.8,-3.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="UY" title="0" data-name="Uruguay"
              data-id="UY"
              d="m 692.5,787 -2.1,-3.7 1.9,-3 -3.8,-4.3 -4.8,-3.5 -6.2,-4.1 -1.9,0.2 -6.2,-4.9 -3.4,0.7 -0.5,5.1 -0.3,6.5 1.1,6.3 -0.9,1.4 0.4,4.2 3.9,3.5 3.6,-0.2 5.4,2.7 2.7,-0.6 4.2,1.2 5.3,-3.5 1.6,-4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="US" title="54052"
              data-name="United States" data-id="US"
              d="m 116.7,450.7 2,-0.9 2.5,-1.4 0.2,-0.4 -0.9,-2.2 -0.7,-0.8 -0.8,-0.6 -1.9,-1.1 -0.4,-0.1 -0.4,0.6 0,1.3 -1.2,1 -0.4,0.7 0.4,2.3 -0.6,1.8 1.2,0.9 1,-1.1 z m -0.6,-9.9 0.6,-0.7 -1.2,-1 -1.8,-0.6 -0.7,0.5 0,0.4 0.5,0.5 0.6,1.4 2,-0.5 z m -3,-3.4 -2.6,-0.2 -0.6,0.7 2.9,0.2 0.3,-0.7 z m -4.7,-0.9 -1.1,-2.1 -0.3,-0.4 -1.7,0.9 0.1,0.2 0.4,1.5 1.8,0.2 0.4,0.1 0.4,-0.4 z m -8.3,-4.2 0.3,-1.5 -1.3,-0.1 -1,0.6 -0.4,0.5 1.6,1.1 0.8,-0.6 z m 412.1,-173.2 -1.6,0 -1.3,2.4 -10.1,0 -16.8,0 -16.7,0 -14.8,0 -14.7,0 -14.5,0 -15,0 -4.8,0 -14.6,0 -13.9,0 -1.6,5.1 -2.4,5.1 -2.3,1.6 1.1,-5.9 -5.8,-2.1 -1.4,1.2 -0.4,2.9 -1.8,5.4 -4.2,8.3 -4,5.6 -4,5.6 -5.4,5.8 -1.1,4.7 -2.8,5.3 -3.9,5.2 1,3.4 -1.9,5.2 1.5,5.4 1.3,2.2 -0.8,1.5 0.4,9 2.5,6.5 -0.8,3.5 1,1 4.6,0.7 1.3,1.7 2.8,0.3 -0.1,1.9 2.2,0.7 2.1,3.7 -0.3,3.2 6.3,-0.5 7,-0.7 -1,1.3 7.1,3.1 10.7,4.4 10.7,0 4.3,0 0.8,-2.6 9.3,0 1.3,2.2 2.1,2 2.4,2.8 0.8,3.3 0.4,3.5 2.2,1.9 4,1.9 4.8,-5 4.4,-0.1 3.1,2.5 1.6,4.4 1,3.7 2.4,3.6 0.2,4.5 0.8,3 3.9,2 3.6,1.4 2.1,-0.2 -0.6,-2.2 0.4,-3.1 1,-4.4 1.9,-2.8 3.7,-3.1 6,-2.7 6.1,-4.7 4.9,-1.5 3.5,-0.4 3.5,1.4 4.9,-0.8 3.3,3.4 3.8,0.2 2.4,-1.2 1.7,0.9 1.3,-0.8 -0.9,-1.3 0.7,-2.5 -0.5,-1.7 2.4,-1 4.2,-0.4 4.7,0.7 6.2,-0.8 3,1.5 2,3 0.9,0.3 6.1,-2.9 1.9,1 3,5.3 0.8,3.5 -2,4.2 0.4,2.5 1.6,4.9 2,5.5 1.8,1.4 0.4,2.8 2.6,0.8 1.7,-0.8 2,-3.9 0.7,-2.5 0.9,-4.3 -1.2,-7.4 0.5,-2.7 -1.5,-4.5 -0.7,-5.4 0.1,-4.4 1.8,-4.5 3.5,-3.8 3.7,-3 6.9,-4.1 1.3,-2.2 3.3,-2.3 2.8,-0.4 4.4,-3.8 6,-1.9 4.6,-4.8 0.9,-6.5 0.1,-2.2 -1.4,-0.4 1.5,-6.2 -3,-2.1 3.2,1 0,-4.1 1.9,-2.7 -1,5.3 2,2.5 -2.9,4.4 0.4,0.2 4.4,-5.1 2.4,-2.5 0.6,-2.5 -0.9,-1.1 -0.1,-3.5 1.2,1.6 1.1,0.4 -0.1,1.6 5.2,-4.9 2.5,-4.5 -1.4,-0.3 2.1,-1.8 -0.4,0.8 3.3,0 7.8,-1.9 -1.1,-1.2 -7.9,1.2 4.8,-1.8 3.1,-0.3 2.4,-0.3 4.1,-1.1 2.4,0.1 3.8,-1 1,-1.7 -1.1,-1.4 -0.2,2.2 -2.1,-0.1 -0.6,-3.3 1.1,-3.3 1.4,-1.3 3.9,-3.7 5.9,-1.8 6,-2.1 6.3,-3 -0.2,-2 -2.1,-3.5 2.8,-8.5 -1.5,-1.8 -3.7,1.1 -1.1,-1.7 -5.5,4.7 -3.2,4.9 -2.7,2.8 -2.5,0.9 -1.7,0.3 -1,1.6 -9.3,0 -7.7,0 -2.7,1.2 -6.7,4.2 0.2,0.9 -0.6,2.4 -4.6,2 -3.9,-0.5 -4,-0.2 -2.6,0.7 -0.3,1.8 0,0 -0.1,0.6 -5.8,3.7 -4.5,1.8 -2.9,0.8 -3.7,1.7 -4,0.9 -2.5,-0.3 -2.7,-1.3 2.7,-2.4 0,0 2,-2.2 3.7,-3.4 0,0 0,0 0.7,-2.5 0.5,-3.5 -1.6,-0.7 -4.3,2.8 -0.9,-0.1 0.3,-1.5 3.8,-2.5 1.6,-2.8 0.7,-2.8 -2.7,-2.4 -3.7,-1.3 -1.7,2.4 -1.4,0.6 -2.2,3.1 0.4,-2.1 -2.6,1.5 -2.1,2 -2.6,3.1 -1.3,2.6 0.1,3.8 -1.8,4 -3.3,3 -1.4,0.9 -1.6,0.7 -1.8,0 -0.3,-0.4 -0.1,-3.3 0.7,-1.6 0.7,-1.5 0.6,-3 2.5,-3.5 2.9,-4.3 4.6,-4.7 -0.7,0 -5.4,4 -0.4,-0.7 2.9,-2.3 4.7,-4 3.7,-0.5 4.4,-1.3 3.7,0.7 0.1,0 4.7,-0.5 -1.5,-2.5 0,0 -1.2,-0.2 0,0 0,0 -1.4,-0.3 -0.4,-1.7 -5.1,0.5 -5,1.4 -2.5,-2.3 -2.5,-0.8 3.1,-3.3 -5.3,2 -4.9,2.1 -4.6,1.5 -2.1,-2.1 -5.5,1.3 0.4,-0.9 4.6,-2.6 4.7,-2.5 5.9,-2.1 0,0 0,0 -5.3,-1.6 -4.4,0.8 -3.8,-1.9 -4.6,-1 -3.2,-0.4 -1,-1 0.8,-3.4 z m -240.6,-46.9 6.9,-2.8 0,-1.8 -2.6,-0.4 -3.4,0.9 -6.4,2.1 -2.2,2.7 0.7,1.6 7,-2.3 z m -38.7,-16.4 2.3,-2.3 -2.9,-0.5 -5.7,1 0.8,1.6 1.6,1.1 3.9,-0.9 z m 1.2,-22.3 -3.1,2.2 0.4,0.5 4.2,-0.4 0.3,1.1 1.7,1.2 4.9,-1.2 1.2,-0.6 -3.3,-0.8 -1.6,-1.5 -3.4,0.6 -1.3,-1.1 z m 124.9,-40.2 -4.4,-1.1 -10.2,2.8 -3.2,-0.3 -11,2.3 -4.8,0.6 -7.8,2.5 -4.8,2.6 -8.6,2.5 -7.6,0.1 -6.3,2.9 3.2,1.7 0.7,2.3 -0.8,2.7 2.3,2.1 -1.2,3.5 -9.2,0.2 4.3,-2.8 -3.4,0 -13.1,2.7 -9.1,2.3 1,3.3 -1.2,2.2 4.5,1.4 6.9,-0.7 1.8,1.3 2.9,-1.3 6.1,-1.2 2.7,0 -5.9,2.1 1.1,1 -2.5,2.6 -5.5,1.8 -2.5,-0.5 -7,2.7 -1.8,-0.9 -4.1,0.4 -5.3,3 -7.6,3.1 -5.8,3.4 0.3,2.4 -4,3.3 1.4,1.4 0.5,2.7 7.2,-1.1 0.4,2.1 -3.3,2.1 -3.6,3.5 2.8,0 7.2,-2.3 -1.6,2.9 3.6,-2.1 -0.4,3 4.8,-2.2 0.4,1.1 7.2,-1.8 -6.2,3.4 -5.7,4.5 -5.7,2.1 -2.3,1.2 -10.3,3.6 -4.9,2.4 -6.5,0.7 -8.5,3.3 -6.6,1.8 -8.1,2.8 -0.4,1 10,-1.7 6,-2 6.9,-2 6.1,-1.7 2.8,0.5 8.1,-2.6 4.5,-2.8 10.5,-3.1 3.9,-2.6 6.6,-1.8 7.6,-2.5 8.9,-4.2 -0.2,-2.9 11.1,-4.1 7.4,-3.9 9.2,-3.2 -0.4,1.4 -6.7,1.8 -8.3,5.7 -3.2,3.5 6.4,-1.3 6.1,-1.9 6.5,-1.3 2.9,-0.3 3.5,-4.1 6.3,-1.2 2.6,2.5 6,2.7 6.7,-0.5 5.7,2 3.2,1.1 3.3,6.1 3.7,1.7 7.1,0.2 4.1,0.4 -2.7,5.5 1.6,4.9 -3.3,5.2 2.5,1.9 0.6,2.2 0,0 5.1,-2.9 3.1,-3.7 -4.6,-3.8 1.5,-6.8 1.1,-4.2 -1.7,-2.7 -0.7,-2.4 0.5,-3 -6.4,1.9 -7.6,3.3 -0.2,-3.9 -0.6,-2.6 -2.7,-1.6 -4.2,-0.1 35.4,-32.4 24.3,-20.2 0,0 0,0 -3.5,-0.7 -4.1,-1.6 -6.5,0.8 -2.2,-0.7 -7.1,-0.5 -6.2,-1.6 -4.8,0.5 -4.9,-0.9 2,-1.2 -6.3,-0.3 -3.3,1 0.5,-2.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="UZ" title="0" data-name="Uzbekistan"
              data-id="UZ"
              d="m 1339.8,303.1 -2.5,1.2 -5.4,4.3 -0.9,4.5 -1.9,0 -2.3,-3 -6.6,-0.2 -2.6,-5 -2.5,-0.1 -1.5,-6.2 -7.5,-4.5 -8.6,0.5 -5.7,0.9 -6.5,-5.5 -4.8,-2.3 -9.1,-4.5 -1.1,-0.5 -11.9,3.6 6.2,22.8 5.8,-0.1 -1.6,-3.1 3.8,-2.2 3.3,-3.6 7.8,3.3 1.9,4.9 2.3,1.3 5.5,-0.3 2,1.2 4.3,6.4 7,4.4 4.2,3 6.2,3.2 7.7,2.7 0.8,4 2.9,0 4.3,1.4 1.3,-6.6 -2.4,-4.7 -4.2,-1.6 0.6,-2.8 4.4,0.3 1.5,-3.5 0.5,-4 6.4,-1.5 -0.2,2.9 1.3,1.8 2.1,-0.2 4.1,0.6 5.2,-4.5 -7.1,-3.3 -3.2,1.6 -4.6,-2.3 3.1,-4.1 -1.8,-0.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="VE" title="0" data-name="Venezuela"
              data-id="VE"
              d="m 642,518.9 -2.2,-1.5 -2.9,0.2 -0.7,-5.1 -4.1,-3.2 -4.4,-0.4 -1.8,-3 4.8,-1.9 -6.7,0.1 -6.9,0.4 -0.2,1.6 -3.2,1.9 -4.2,-0.7 -3.1,-2.9 -6,0.7 -5,-0.1 -0.1,-2.1 -3.5,-3.5 -3.9,-0.1 -1.7,-4.5 -2.1,2 0.6,3 -7.1,2.6 0,4.8 1.6,2.2 -1.5,4.6 -2.4,0.4 -1.9,-5 2.7,-3.7 0.3,-3.3 -1.7,-2.9 3.3,-0.8 0.3,-1.5 -3.7,1.1 -1.6,3.2 -2.2,1.8 -1.8,2.4 -0.9,4.5 -1.8,3.7 2.9,0.5 0.6,2.9 1.1,1.4 0.4,2.5 -0.8,2.4 0.2,1.3 1.3,0.6 1.3,2.2 7.2,-0.6 3.2,0.8 3.8,5.5 2.3,-0.7 4,0.3 3.2,-0.7 2,1.1 -1.2,3.4 -1.3,2.1 -0.5,4.6 1,4.2 1.5,1.9 0.2,1.5 -2.9,3.1 2,1.4 1.4,2.2 1.7,6.4 3,3.4 4.4,-0.5 1.1,-1.9 4.2,-1.5 2.3,-1 0.7,-2.7 4.1,-1.8 -0.3,-1.4 -4.8,-0.5 -0.7,-4 0.3,-4.3 -2.4,-1.6 1,-0.6 4.2,0.8 4.4,1.6 1.7,-1.5 4,-1 6.4,-2.4 2.1,-2.4 -0.7,-1.8 -3.7,-4.8 1.6,-1.8 0,-2.9 3.4,-1.1 1.5,-1.2 -1.9,-2.3 0.6,-2.3 4.6,-3.8 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="VN" title="0" data-name="Vietnam"
              data-id="VN"
              d="m 1571.6,435 -5.9,-1.6 -3,-2.6 0.2,-3.7 -5.2,-1.1 -3,-2.4 -4.1,3.4 -5.3,0.7 -4.3,0 -2.7,1.5 4,5.1 3.4,5.7 6.8,0.1 3,5.5 -3.3,1.7 -1.3,2.3 7.3,3.8 5.7,7.5 4.3,5.6 4.8,4.4 2,4.5 -0.2,6.4 1.8,4.2 0.1,7.7 -8.9,4.9 2.8,3.8 -5.8,0.5 -4.7,2.5 4.5,3.7 -1.3,4.3 2.3,4 6.6,-5.9 4.1,-5.3 6.1,-4.1 4.3,-4.2 -0.4,-11.2 -4,-11.7 -4.1,-5.1 -5.6,-4 -6.4,-8.3 -5.3,-6.7 0.5,-4.4 3.7,-6 6.5,-5.5 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="VU" title="0" data-name="Vanuatu"
              data-id="VU"
              d="m 1908.6,676.9 -2.7,-3.6 -0.6,1.7 1.3,2.8 2,-0.9 z m -2,-9.7 -2.3,-2 -0.9,4.9 0.5,1.8 1.2,-0.4 1.3,0.8 0.2,-5.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="YE" title="0" data-name="Yemen"
              data-id="YE"
              d="m 1271.5,466.2 -2.1,-4.4 -5.2,-10.5 -15.7,2.4 -5,2.9 -3.5,6.7 -2.5,1 -1.6,-2.1 -2.1,0.3 -5.4,-0.6 -1,-0.7 -6.4,0.2 -1.5,0.6 -2.4,-1.7 -1.2,3.1 0.7,2.7 -2.3,2.1 0.4,2.7 -0.6,1.3 0.7,2.9 -1.1,0.3 1.7,2.6 1.3,4.7 1,1.9 0,3.4 1.6,3.8 3.9,0.3 1.8,-0.9 2.7,0.2 0.8,-1.7 1.5,-0.4 1.1,-1.7 1.4,-0.4 4.7,-0.3 3.5,-1.2 3.1,-2.7 1.7,0.4 2.4,-0.3 4.7,-4.5 8.8,-3 5.3,-2.7 0,-2.1 0.9,-2.9 3.9,-1.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ZA" title="0" data-name="South Africa"
              data-id="ZA"
              d="m 1148.2,713.7 -2.9,-0.6 -1.9,0.8 -2.6,-1.1 -2.2,-0.1 -8,4.7 -5.2,4.7 -2,4.3 -1.7,2.4 -3,0.5 -1.2,3 -0.6,2 -3.6,1.5 -4.4,-0.3 -2.5,-1.8 -2.3,-0.8 -2.7,1.5 -1.5,3.1 -2.7,1.9 -2.8,2.8 -4,0.7 -1.1,-2.3 0.7,-3.8 -3,-6.1 -1.4,-1 -1.1,23.6 -5,3.2 -2.9,0.5 -3.3,-1.2 -2.4,-0.5 -0.8,-2.7 -2.1,-1.8 -2.7,3.2 3.5,8.2 0,0.1 2.5,5.3 3.2,6 -0.2,4.8 -1.7,1.2 1.4,4.2 -0.2,3.8 0.6,1.7 0.3,-0.9 2.1,2.9 1.8,0.1 2.1,2.3 2.4,-0.2 3.5,-2.4 4.6,-1 5.6,-2.5 2.2,0.3 3.3,-0.8 5.7,1.2 2.7,-1.2 3.2,1 0.8,-1.8 2.7,-0.3 5.8,-2.5 4.3,-2.9 4.1,-3.8 6.7,-6.5 3.4,-4.6 1.8,-3.2 2.5,-3.3 1.2,-0.9 3.9,-3.2 1.6,-2.9 1.1,-5.2 1.7,-4.7 -4.1,0 -1.3,2.8 -3.3,0.7 -3,-3.5 0.1,-2.2 1.6,-2.4 0.7,-1.8 1.6,-0.5 2.7,1.2 -0.4,-2.3 1.4,-7.1 -1.1,-4.5 -2.2,-9 z m -20.1,52.8 -2,0.6 -3.7,-4.9 3.2,-4 3.1,-2.5 2.6,-1.3 2.3,2 1.7,1.9 -1.9,3.1 -1.1,2.1 -3.1,1 -1.1,2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ZM" title="0" data-name="Zambia"
              data-id="ZM"
              d="m 1149.2,626.7 -1.9,-0.5 0.4,-1.3 -1,-0.3 -7.5,1.1 -1.6,0.7 -1.6,4.1 1.2,2.8 -1.2,7.5 -0.8,6.4 1.4,1.1 3.9,2.5 1.5,-1.2 0.3,6.9 -4.3,0 -2.1,-3.5 -2,-2.8 -4.3,-0.8 -1.2,-3.4 -3.4,2 -4.5,-0.9 -1.8,-2.8 -3.5,-0.6 -2.6,0.1 -0.3,-2 -1.9,-0.1 0.5,2 -0.7,3 0.9,3 -0.9,2.4 0.5,2.2 -11.6,-0.1 -0.8,20.3 3.6,5.2 3.5,4 4.6,-1.5 3.6,0.4 2.1,1.4 0,0.5 1,0.5 6.2,0.7 1.7,0.7 1.9,-0.1 3.2,-4.1 5.1,-5.3 2,-0.5 0.7,-2.2 3.3,-2.5 4.2,-0.9 -0.3,-4.5 17.1,-5.2 -2.9,-1.7 1.9,-5.9 1.8,-2.2 -0.9,-5.3 1.2,-5.1 1,-1.8 -1.2,-5.4 -2.6,-2.8 -3.2,-1.9 -3.5,-1.1 -2.2,-1.1 -0.3,-0.2 0,0 0.5,1.1 -1,0.4 -1.2,-1.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ZW" title="0" data-name="Zimbabwe"
              data-id="ZW"
              d="m 1148.2,713.7 6.2,-7.2 1.6,-4.6 0.9,-0.6 0.8,-3.7 -0.8,-1.9 0.5,-4.7 1.3,-4.4 0.3,-8.1 -2.8,-2 -2.6,-0.5 -1.1,-1.6 -2.6,-1.3 -4.6,0.1 -0.3,-2.4 -4.2,0.9 -3.3,2.5 -0.7,2.2 -2,0.5 -5.1,5.3 -3.2,4.1 -1.9,0.1 -1.7,-0.7 -6.2,-0.7 1.9,5.1 1.1,1.1 1.6,3.7 6,7 2.3,0.7 -0.1,2.2 1.5,4.1 4.2,0.9 3.4,2.9 2.2,0.1 2.6,1.1 1.9,-0.8 2.9,0.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SO" title="0" data-name="Somalia"
              data-id="SO"
              d="m 1223.4,505.7 -2.6,-2.7 -1.2,-2.6 -1.8,-1.2 -2,3.4 -1.1,2.3 2.2,3.5 2.1,3.1 2.2,2.2 18.5,7.6 4.8,-0.1 -15.4,19.1 -7.4,0.3 -4.9,4.5 -3.6,0.1 -1.5,2 -4.8,7.2 0.2,23.2 3.3,5.3 1.3,-1.5 1.3,-3.4 6.1,-7.7 5.3,-4.8 8.3,-6.4 5.6,-5.1 6.4,-8.7 4.7,-7.1 4.6,-9.3 3.2,-8.2 2.5,-7.1 1.3,-6.8 1.1,-2.3 -0.2,-3.4 0.4,-3.7 -0.2,-1.7 -2.1,0 -2.6,2.2 -2.9,0.6 -2.5,0.9 -1.8,0.2 0,0 -3.2,0.2 -1.9,1.1 -2.8,0.5 -4.8,1.9 -6.1,0.8 -5.2,1.6 -2.8,0 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GF" title="0" data-name="French Guiana"
              data-id="GF"
              d="m 681.4,556.2 1.8,-4.7 3.5,-5.8 -0.9,-2.6 -5.8,-5.4 -4.1,-1.5 -1.9,-0.7 -3.1,5.5 0.4,4.4 2.1,3.7 -1,2.7 -0.6,2.9 -1.4,2.8 2.4,1.3 1.8,-1.8 1.2,0.3 0.8,1.8 2.7,-0.5 2.1,-2.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="FR" title="0" data-name="France"
              data-id="FR"
              d="m 1025.7,303.8 -1.1,-5.2 -3.2,2.3 -1,2.3 1.4,4.2 2.4,1.2 1.5,-4.8 z m -31.5,-50.9 -2.4,-2.4 -2.2,-0.1 -0.7,-2.2 -4.3,1.2 -1.4,5.1 -11.3,4.8 -4.6,-2.6 1.4,7 -8.2,-1.6 -6.4,1.3 0.4,4.6 7.5,2.4 3.6,3.1 5.1,6.5 -1,12.3 -2.7,3.7 2,2.4 9.4,2.8 1.9,-1.3 5.7,2.8 6,-0.8 0.5,-3.7 7.4,-2 10,1.6 4.5,-3.4 0.5,-2.7 -2.7,-0.8 -1.5,-4.8 1.7,-1.8 -1.6,-2.4 0.2,-1.7 -1.8,-2.7 -2.4,0.9 0,-2.8 3.5,-3.5 -0.2,-1.6 2.3,0.6 1.3,-1 0.5,-4.5 2.3,-4.2 -7.1,-1.2 -2.4,-1.6 -1.4,0.1 -1.1,-0.5 -4.4,-2.8 -2.5,0.4 -3.4,-2.9 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ES" title="0" data-name="Spain"
              data-id="ES"
              d="m 985,325.7 0,-0.2 -0.5,0 -0.3,-0.4 -0.1,0.2 -0.1,0.2 0,0.2 0.5,0 0.4,0.1 0.1,-0.1 z m -0.8,-1.6 0.3,0 0.6,-0.7 0,-0.3 -0.3,-0.2 -1.1,0.2 -0.2,0.3 0,0.3 -0.3,0.1 -0.1,0.4 0.1,0.2 0.8,0.1 0.2,-0.4 z M 967,296 l -8.2,-0.2 -4.2,0.3 -5.4,-1 -6.8,0 -6.2,-1.1 -7.4,4.5 2,2.6 -0.4,4.4 1.9,-1.6 2.1,-0.9 1.2,3.1 3,0 0.9,-0.8 3,0.2 1.3,3.1 -2.4,1.7 -0.2,4.9 -0.9,0.9 -0.3,3 -2.2,0.5 2,3.8 -1.6,4.3 1.8,1.9 -0.8,1.7 -2,2.5 0.4,2.1 4.8,1 1.4,3.7 2,2.2 2.5,0.6 2.1,-2.5 3.3,-2.3 5,0.1 6.7,0 3.8,-5 3.9,-1.3 1.2,-4.2 3,-2.9 -2,-3.7 2,-5.1 3.1,-3.5 0.5,-2.1 6.6,-1.3 4.8,-4.2 -0.3,-3.5 -6,0.8 -5.7,-2.8 -1.9,1.3 -9.4,-2.8 -2,-2.4 z m 26,22.6 0.1,-0.3 0.1,-0.2 0.1,-0.1 -0.2,-0.2 0,-0.1 0.2,-0.2 -0.2,-0.1 -1.3,0.4 -0.7,0.4 -2.1,1.5 0,0.3 0.1,0.2 0.4,0 0.2,0.4 0.4,-0.4 0.3,-0.1 0.3,0.1 0.3,0.2 0.1,0.6 0.1,0.2 0.6,0.1 0.9,0.4 0.4,-0.2 0.5,-0.3 0.2,-0.6 0.3,-0.5 0.3,-0.5 0.3,-0.4 -0.1,-0.4 -0.3,-0.1 -0.3,-0.1 -0.5,0.2 -0.5,-0.2 z m 6,-0.3 0.1,-0.4 0,-0.1 -0.5,-0.7 -0.9,-0.3 -1,0.1 -0.1,0.1 0,0.4 0.1,0.1 0.6,0.1 1.6,0.7 0.1,0 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AW" title="0" data-name="Aruba"
              data-id="AW"
              d="m 586.6,492.9 -0.1,-0.1 -0.3,-0.6 -0.3,-0.3 -0.1,0.1 -0.1,0.3 0.3,0.3 0.3,0.4 0.3,0.1 0,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AI" title="0" data-name="Anguilla"
              data-id="AI" d="m 627.9,456.2 0.1,-0.2 -0.2,-0.1 -0.8,0.5 0,0.1 0.9,-0.3 z" style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AD" title="0" data-name="Andorra"
              data-id="AD"
              d="m 985.4,301.7 0.1,-0.2 0.1,-0.2 0,-0.1 -0.2,-0.1 -0.7,-0.2 -0.3,-0.1 -0.2,0.1 -0.2,0.2 -0.1,0.3 0.1,0.1 0,0.2 0,0.2 0.1,0.2 0.2,0 0.2,0 0.3,-0.1 0.5,-0.3 0.1,0 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="AG" title="0"
              data-name="Antigua and Barb." data-id="AG"
              d="m 634.3,463.8 0.2,-0.1 0,-0.1 0,-0.2 -0.1,-0.1 -0.1,-0.2 -0.4,-0.2 -0.5,0.5 0,0.2 0.1,0.3 0.6,0.1 0.2,-0.2 z m 0.2,-3.5 0,-0.5 -0.1,-0.2 -0.3,0 -0.1,-0.1 -0.1,0 -0.1,0.1 0.1,0.6 0.5,0.3 0.1,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BS" title="0" data-name="Bahamas"
              data-id="BS"
              d="m 574.4,437.3 0.2,-0.6 -0.3,-0.1 -0.5,0.7 -0.6,0.3 -0.3,0 -0.7,-0.3 -0.5,0 -0.4,0.5 -0.6,0.1 0.1,0.1 0,0.2 -0.2,0.3 0,0.2 0.1,0.3 1.5,-0.1 1.3,-0.2 0.7,-0.9 0.2,-0.5 z m 0.8,-2 -0.4,-0.3 -0.4,0.3 0.1,0.3 0.7,-0.3 z m 0,-5.8 -0.4,-0.2 -0.3,0.5 0.3,0.1 0.7,-0.1 0.5,0.1 0.5,0.4 0.3,-0.2 -0.1,-0.1 -0.4,-0.3 -0.6,-0.1 -0.2,0 -0.3,-0.1 z m -6.6,1.3 0.7,-0.6 0.7,-0.3 0.9,-1.1 -0.1,-0.9 0.2,-0.4 -0.6,0.1 -0.1,0.3 -0.1,0.3 0.3,0.4 0,0.2 -0.2,0.4 -0.3,0.1 -0.1,0.2 -0.3,0.1 -0.4,0.5 -0.8,0.6 -0.2,0.3 0.4,-0.2 z m 1.2,-3.2 -0.6,-0.2 -0.2,-0.4 -0.4,-0.1 -0.1,0.2 0,0.2 0.1,0.4 0.2,-0.1 0.8,0.4 0.4,-0.3 -0.2,-0.1 z m -4.1,-1.1 0,-0.7 -0.4,-0.5 -0.6,-0.4 -0.1,-1.2 -0.3,-0.7 -0.2,-0.6 -0.4,-0.8 0,0.5 0.1,0.1 0.1,0.6 0.4,0.9 0.1,0.4 -0.1,0.4 -0.4,0.1 -0.1,0.2 0.5,0.3 0.8,0.3 0.5,1.3 0.1,-0.2 z m -4.1,-3.5 -0.5,-0.3 -0.2,-0.3 -0.7,-0.7 -0.3,-0.1 -0.2,0.4 0.4,0.1 0.9,0.7 0.4,0.2 0.2,0 z m 7.3,-4 -0.1,-0.3 -0.1,0 -0.3,0.1 -0.3,0.9 0.3,0 0.5,-0.7 z m -17.6,-1.1 -0.2,-0.3 -0.3,0.2 -0.5,0 -0.2,0.1 -0.4,0 -0.3,0.2 0.4,0.8 0.3,0.3 0.1,1 0.2,0.1 -0.1,0.7 1.1,0.1 0.4,-0.8 0,-0.3 0,-0.1 0,-0.2 0,-0.2 0,-0.9 -0.3,-0.5 -0.4,0.6 -0.4,-0.3 0.6,-0.4 0,-0.1 z m 12.9,0.3 -1,-1.4 0,-0.2 -0.5,-1.5 -0.3,-0.1 -0.1,0.1 -0.1,0.2 0.4,0.4 0,0.4 0.3,0.2 0.4,1.1 0.4,0.4 -0.1,0.3 -0.4,0.3 -0.1,0.2 0.1,0 0.6,-0.1 0.4,0 0,-0.3 z m -10.5,-5.2 0.5,-0.2 0,0 -0.3,-0.2 -0.7,0 -0.4,0.1 -0.2,0.2 0.1,0.1 0.4,0.1 0.6,-0.1 z m -2.4,2 -0.5,-0.6 -0.3,-0.9 -0.2,-0.4 0.1,-0.5 -0.3,-0.4 -0.6,-0.4 -0.3,0.1 0.1,1.1 -0.2,0.6 -0.8,1.1 0.1,0.4 0,0 0.1,0.2 -0.5,0.4 0,-0.3 -0.6,0.1 0.3,0.5 0.6,0.4 0.3,0.1 0.3,-0.2 0,0.5 0.3,0.4 0.1,0.4 0.3,-0.3 0.6,-0.2 0.2,-0.2 0.7,-0.4 0,-0.2 0.1,-0.6 0.1,-0.7 z m 6.7,-5 -0.3,-0.5 -0.1,0.1 -0.1,0.4 -0.3,0.4 0.5,-0.1 0.4,0.1 0.6,0.5 0.7,0.2 0.3,0.6 0.6,0.6 0,0.6 -0.4,0.6 -0.1,0.7 -0.6,0.1 0.1,0.1 0.3,0.3 0.1,0.4 0.2,0.2 0,-0.7 0.3,-0.8 0.4,-1.3 -0.1,-0.3 -0.3,-0.3 -0.7,-0.9 -0.7,-0.3 -0.8,-0.7 z m -8.8,-7.9 -0.5,-0.4 -0.2,0.4 0,0.1 -0.1,0.3 -0.5,0.4 -0.5,0.1 -0.7,-0.6 -0.2,-0.1 0.8,1.1 0.3,0.1 0.4,0 0.9,-0.3 1.6,-0.5 1.7,-0.2 0.1,-0.2 -0.1,-0.3 -0.8,0.2 -1,-0.1 -0.2,0.2 -0.4,0 -0.6,-0.2 z m 6.1,5.2 0.2,-0.3 0.4,-1.8 0.8,-0.6 0.1,-1.2 -0.5,-0.5 -0.4,-0.2 -0.1,-0.2 0.1,-0.2 -0.2,-0.1 -0.3,-0.2 -0.4,-0.6 -0.4,-0.4 -0.7,-0.1 -0.6,-0.1 -0.4,-0.1 -0.5,0.3 0.8,0 1.5,0.3 0.7,1.5 0.5,0.4 0.1,0.4 -0.2,0.4 0,0.4 -0.3,0.5 -0.1,0.8 -0.3,0.4 -0.7,0.5 0.4,0.2 0.3,0.6 0.2,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BM" title="0" data-name="Bermuda"
              data-id="BM" d="m 630.2,366.8 0.4,-0.6 -0.1,0 -0.5,0.5 -0.6,0.2 0.1,0.1 0.1,0 0.6,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="BB" title="0" data-name="Barbados"
              data-id="BB" d="m 644.9,488.9 0.4,-0.4 -0.3,-0.3 -0.6,-0.8 -0.3,0.1 0,1 0.1,0.3 0.5,0.3 0.2,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KM" title="0" data-name="Comoros"
              data-id="KM"
              d="m 1221.1,650.5 -0.4,-0.4 -0.4,0 0,0.2 0.1,0.4 1.1,0.2 -0.4,-0.4 z m 3.9,-1.5 -0.1,0 -0.2,0.1 -0.1,0.2 -0.1,0.3 -0.3,0 -0.2,0 -0.4,0 0.8,0.5 0.5,0.5 0.2,0.2 0.1,-0.2 0.1,-0.7 -0.3,-0.9 z m -5.6,-1.1 0.2,-0.3 -0.2,-0.7 -0.4,-0.8 0.1,-1.4 -0.2,-0.2 -0.3,0 -0.1,0.1 -0.1,0.3 -0.3,2 0.4,0.6 0.3,0.1 0.5,0.4 0.1,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CV" title="0" data-name="Cape Verde"
              data-id="CV"
              d="m 841.4,477.6 0.1,-0.4 -0.2,-0.6 -0.3,-0.1 -0.6,0.4 -0.1,0.3 0.1,0.3 0.3,0.3 0.3,0.1 0.4,-0.3 z m 6.3,-1.7 0.4,-0.2 0,-0.7 -0.1,-0.3 -0.4,0 -0.2,0.4 0,0.1 0,0.4 0.2,0.3 0.1,0 z m -1.4,0.8 -0.5,-0.9 -0.3,-0.1 -0.6,-0.7 0,-0.3 -0.3,-0.1 0,0.2 0,0.4 -0.2,0.5 0,0.5 0.4,0.8 0.4,0.2 0.7,0.1 0.4,-0.6 z m 3.1,-7.8 0,0.5 -0.3,0.7 0.5,0.3 0.3,0.1 0.6,-0.4 0.2,-0.5 -0.1,-0.3 -0.3,-0.3 -0.3,-0.1 -0.1,0.1 -0.5,-0.1 z m -6.4,-2.5 -1,-0.1 -0.6,-0.2 -0.1,0 0,0.3 0.4,0.8 0.2,-0.5 0.2,-0.1 0.8,0.2 0.4,-0.1 -0.1,-0.1 -0.2,-0.2 z m 6.7,-0.2 -0.1,-0.5 0,-0.7 -0.2,0 -0.3,0.2 0.1,0.7 0.1,0.1 0.2,0.5 0.2,-0.3 z m -11.1,-1 0,-0.2 -0.3,-0.5 -0.3,0.1 -0.4,0.2 -0.1,0.3 0.4,0.2 0.2,0 0.5,-0.1 z m -1.5,-0.9 0.8,-0.6 0.2,-0.3 -0.2,-0.5 -0.5,-0.1 -1.2,0.6 -0.1,0.2 0.1,0.3 0.1,0.5 0.2,0.1 0.6,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KY" title="0" data-name="Cayman Is."
              data-id="KY"
              d="m 527,449.1 -0.1,-0.3 -0.1,0.1 0,0.6 0.5,0 0.2,0 0.3,-0.2 0.6,0 -0.1,-0.2 -0.8,-0.1 -0.1,0.1 -0.2,0.1 -0.2,-0.1 z m 8,-2.3 0,0 -0.1,-0.1 -0.1,0 -0.3,0.1 -0.1,0 -0.1,0 -0.1,0.1 -0.1,0.1 0.2,0 0.4,-0.2 0.2,0 0.1,0 z m 0.8,-0.1 0.5,-0.2 0,0 -0.1,-0.1 -0.1,0 -0.1,0.1 -0.1,0 -0.5,0.3 0.2,0 0.2,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="DM" title="0" data-name="Dominica"
              data-id="DM"
              d="m 635.8,475.1 0.3,-0.7 -0.1,-1 -0.2,-0.4 -0.8,-0.3 0,0.2 -0.1,0.5 0.3,0.8 0.1,1.1 0.5,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="FK" title="0" data-name="Falkland Is."
              data-id="FK"
              d="m 690.3,902.7 -0.1,-0.3 -0.4,-0.2 -0.2,-0.1 0.1,0.2 0.1,0.3 0.1,0.2 0.2,0.1 0.2,-0.2 z m 5.5,-1.3 -0.1,-0.1 -0.2,0 -0.1,0.2 0.2,0.3 0.4,0.1 -0.2,-0.5 z m -12.9,-1.4 -0.1,0.2 -0.4,0.1 0.2,0.3 0.6,0.4 0.4,0 0.1,-0.3 -0.1,-0.6 -0.3,0 -0.4,-0.1 z m 2.8,-2 -0.9,-0.3 -0.4,-0.3 -0.3,0 0.4,0.4 0.1,0.2 0.1,0.2 0.6,0.3 0.6,0.3 0.4,0.3 -0.1,0.1 -0.8,0.3 -0.3,0 -0.2,0.1 0.4,0.2 0.6,-0.1 0.2,-0.1 0.2,0 0.3,0.1 0,0.2 -0.1,0.2 -0.2,0.2 -0.4,0.3 -0.6,0.4 -0.8,0 -0.7,0.7 0.9,0.5 0.7,0.3 0.9,0 0,-0.1 0.2,-0.1 0.3,0 0.1,-0.1 0.2,-0.4 0,-0.6 0.2,0 0.3,0.1 0.7,-0.1 0.3,-0.1 0.6,-0.9 0.4,-0.8 0.2,-0.4 0.3,-0.2 0.1,-0.2 0.1,-0.3 0.3,-0.2 0,-0.3 -0.4,-0.2 -0.3,-0.2 -0.3,0.3 -0.2,-0.1 -0.9,0.3 -0.4,0 -0.3,-0.2 -0.4,-0.1 -0.4,0.1 -0.5,0.5 -0.8,-0.2 z m 0.7,-0.4 0.1,-0.3 -0.1,-0.2 -0.5,-0.2 -0.5,0 0.2,0.5 0.2,0.2 0.6,0 z m 5.9,-0.7 -0.4,0 0.4,0.5 -0.8,0.8 0.2,0.6 0.3,0.4 0.1,0.2 -0.1,0.1 -0.4,0.1 -0.3,0.1 -0.2,0.3 -0.9,0.9 0.2,0.2 -0.3,0.7 0.2,0.3 0.8,0.7 0.8,0.4 0,-0.7 0.4,-0.1 0.4,0.2 0.4,-0.2 -0.9,-1 0.3,0 2.5,0.5 -0.1,-0.4 -0.1,-0.2 -0.3,-0.4 1.5,-0.4 0.5,-0.3 0.2,-0.3 0.6,-0.1 0.8,-0.3 -0.1,-0.1 0.1,-0.3 -0.4,-0.2 -0.5,-0.1 0.1,-0.3 0.5,-0.1 -0.8,-0.7 -0.3,-0.1 -1,0.1 -0.3,0.1 0,0.2 0.1,0.3 0.3,0.3 0.1,0.2 -0.2,-0.1 -1.1,-0.4 -0.2,-0.1 -0.2,-0.4 0.2,-0.1 0.3,0.1 0.1,-0.3 -0.4,-0.3 -0.4,-0.1 -0.9,0.1 -0.8,-0.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="FO" title="0" data-name="Faeroe Is."
              data-id="FO"
              d="m 947,186.9 0,-0.3 -0.1,-0.3 0,-0.2 -0.1,0 -0.5,-0.1 -0.1,-0.2 -0.1,0 0,0.2 0.1,0.4 0.5,0.4 0.3,0.2 0.1,0 -0.1,-0.1 z m 0.5,-2.1 0,-0.1 -0.2,-0.2 -0.5,-0.2 -0.2,-0.1 -0.2,0.1 0,0.2 0.1,0.1 0.4,0.1 0.4,0.3 0.1,0 0.1,-0.2 z m -2.4,-1.9 -0.2,-0.1 -0.5,0.1 -0.3,0 0.1,0.3 0.6,0.2 0.3,0 0.3,0 0.2,-0.1 -0.1,-0.2 -0.4,-0.2 z m 2.5,-0.5 -0.8,-0.2 -0.6,-0.3 -1,0.1 0.7,1.1 0.8,0.7 0.4,0.2 0,-0.1 0,-0.2 -0.4,-0.5 -0.1,-0.1 0,-0.1 0.1,-0.1 0.2,0 0.3,0.2 0.2,0 0.2,-0.7 z m 1,-0.2 -0.3,-0.2 -0.4,-0.4 0,0.5 0,0.3 0,0.1 0.1,0 0.3,0.1 0.3,-0.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GD" title="0" data-name="Grenada"
              data-id="GD" d="m 632.1,495.7 0.5,-0.2 0.2,-1.1 -0.3,-0.1 -0.3,0.3 -0.3,0.5 0,0.4 -0.2,0.3 0.4,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="HK" title="0" data-name="Hong Kong"
              data-id="HK"
              d="m 1604.9,430.9 0,-0.2 0,-0.2 -0.4,-0.2 -0.3,0 0.1,0.2 0.4,0.5 0.2,-0.1 z m -1.3,0 -0.1,-0.5 0.2,-0.3 -0.9,0.3 -0.1,0.3 0,0.1 0.2,0.1 0.7,0 z m 1.6,-1.2 -0.1,-0.3 -0.2,-0.1 -0.1,-0.3 -0.1,-0.2 0,0 -0.3,-0.1 -0.2,-0.1 -0.4,0 -0.1,0.1 -0.2,0 -0.2,0.2 0,0 0,0.2 -0.5,0.4 0,0.2 0.3,0.2 0.5,-0.1 0.6,0.2 0.8,0.3 0,-0.2 0,-0.3 0.2,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="KN" title="0"
              data-name="St. Kitts and Nevis" data-id="KN"
              d="m 629.9,463.2 0,-0.3 -0.2,-0.2 -0.3,0 0,0.5 0.2,0.2 0.3,-0.2 z m -0.5,-0.7 -0.1,-0.2 -0.1,-0.1 -0.2,-0.4 -0.4,-0.4 -0.2,0.1 -0.1,0.2 0,0.1 0,0 0.3,0.3 0.4,0.1 0.2,0.4 0.2,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LC" title="0" data-name="Saint Lucia"
              data-id="LC"
              d="m 637.4,484.2 0.1,-1.2 -0.1,-0.5 -0.2,0.1 -0.3,0.4 -0.4,0.6 -0.1,0.3 0,0.6 0.6,0.4 0.4,-0.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="LI" title="0" data-name="Liechtenstein"
              data-id="LI"
              d="m 1024.4,273.6 0,-0.2 0.1,-0.2 -0.1,-0.1 -0.1,-0.2 -0.1,-0.1 0,-0.2 -0.1,-0.1 0,-0.2 -0.1,-0.1 -0.2,0.6 0,0.5 0.1,0.2 0.1,0 0.4,0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MV" title="0" data-name="Maldives"
              data-id="MV"
              d="m 1389.1,551.6 0.1,-0.1 0,-0.2 -0.1,-0.1 -0.1,0 -0.1,0.2 0,0.1 0,0.1 0.2,0 z m 0.3,-5.9 0.1,-0.2 0,-0.1 0,-0.1 0,-0.1 0,-0.1 -0.1,0.1 -0.1,0.2 0,0.1 -0.1,0.1 0,0.1 0.1,0 0.1,0 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MT" title="0" data-name="Malta"
              data-id="MT"
              d="m 1053.6,344 -0.2,-0.2 -0.5,-0.5 -0.5,-0.1 0.1,0.6 0.4,0.4 0.5,0 0.2,-0.2 z m -1.4,-1.2 0,0 0,-0.2 -0.3,-0.1 -0.4,0.1 0.1,0.1 0.3,0.2 0.3,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MS" title="0" data-name="Montserrat"
              data-id="MS" d="m 631.8,465.7 -0.1,-0.5 -0.1,0 -0.2,0.4 0,0.3 0.3,0.1 0.1,-0.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MU" title="0" data-name="Mauritius"
              data-id="MU"
              d="m 1294.7,702.5 0.3,-0.3 0.2,-0.4 0.3,-0.3 0.1,-0.7 -0.2,-0.8 -0.4,-0.7 -0.5,0.1 -0.3,0.4 -0.2,0.5 -0.5,0.3 -0.1,0.3 -0.2,0.7 -0.1,0.4 -0.2,0.1 0,0.2 0.3,0.3 0.8,0.1 0.7,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NC" title="0" data-name="New Caledonia"
              data-id="NC"
              d="m 1897.3,716.1 0,-0.3 -0.4,-0.2 -0.2,0.5 0,0.1 0.2,0.1 0.2,0 0.2,-0.2 z m 4.6,-7.6 -0.1,-0.1 0,-0.3 0.1,-0.2 -0.4,0.2 -0.6,0.2 0.1,0.8 -0.1,0.4 0.3,0.1 0.1,0.3 0.2,0 0.7,-0.2 0.3,-1.1 -0.4,0 -0.2,-0.1 z m -3,-1.7 0.3,-0.5 0.1,-0.2 -0.2,-0.7 -0.3,-0.3 0.3,-1 -0.1,-0.2 -0.4,-0.2 -0.9,0.3 -0.1,0.2 0.5,0.1 0.2,0.2 -0.5,0.7 -0.5,0.1 0.1,0.5 0.2,0.4 0.7,0.2 0.3,0.4 0.3,0 z m -3.9,-2.9 0.3,-0.3 0.3,-0.4 -0.1,-0.1 0,-0.3 0.2,-0.4 0.3,-0.1 -0.2,-0.2 -0.2,-0.1 0,0.3 -0.3,0.7 -0.1,0.3 -0.5,0.6 0.3,0 z m -12.3,-2.9 -0.6,-0.7 -0.1,0.2 -0.1,0.4 0,0.3 0.3,0.2 0.1,0.2 -0.1,0.5 0,0.4 0.6,0.9 0.1,0.7 0.3,0.6 0.5,0.5 0.4,0.5 0.8,1.4 0.2,0.5 0.4,0.3 1,1.2 0.4,0.4 0.4,0.2 0.9,0.7 0.6,0.3 0.3,0.5 0.6,0.3 0.8,0.4 0.1,0.2 0,0.3 0.1,0.3 0.5,0.4 0.6,0.3 0.1,0.2 0.1,0.2 0.3,-0.1 0.3,0.1 0.9,0.7 0.4,-0.1 0.3,0 0.5,-0.2 0.3,-0.4 -0.1,-1.1 -0.5,-0.5 -0.7,-0.4 -0.4,-0.5 -0.4,-0.5 -0.8,-1 -1.1,-1 -0.5,-0.2 -0.3,-0.4 -0.3,-0.1 -0.2,-0.3 -0.5,-0.3 -0.3,-0.6 -0.6,-0.6 -0.1,-0.3 0.1,-0.3 -0.1,-0.3 -0.4,-0.3 -0.2,-0.5 -0.2,-0.3 -0.4,-0.2 -0.7,-0.4 -1.6,-1.9 -0.7,-0.6 -0.7,0.2 -0.6,-0.4 z m -22,-6 0.2,-0.4 0.1,-0.8 -0.2,0.4 -0.2,1 0.1,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="NR" title="0" data-name="Nauru"
              data-id="NR" d="m 1915,575.5 0,-0.2 -0.1,0 -0.1,0 -0.1,0.2 0.1,0.1 0.1,0.1 0.1,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PN" title="0" data-name="Pitcairn Is."
              data-id="PN" d="m 274.2,727.4 0,-0.2 -0.1,-0.2 -0.2,-0.1 -0.1,0.1 0.1,0.2 0.2,0.2 0.1,0.1 0,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PR" title="0" data-name="Puerto Rico"
              data-id="PR"
              d="m 600.8,457.3 0,-0.1 0,0 0.1,0 0,-0.1 0.1,-0.1 0,0 0,-0.1 -0.1,0 0,0 -0.3,0 -0.1,0 0,0.1 0,0.1 0.2,0.1 0,0 0,0.1 0.1,0 0,0 z m 13.6,-0.3 0.7,-0.2 0,-0.1 -0.4,-0.1 -0.6,0 -0.5,0.2 0.1,0.2 0.2,0 0.5,0 z m -3.7,-2.2 -0.1,-0.2 -0.2,0 -3.5,-0.1 -1.3,-0.2 -0.3,0.1 -0.3,0.1 -0.1,0.4 -0.2,0.2 -0.3,0.2 0.1,0.3 0.1,0.2 0.2,0.4 -0.1,0.5 -0.2,1 0.3,0.2 0.7,-0.1 0.3,0.1 0.3,0.1 0.4,-0.1 0.4,-0.2 0.9,0.1 0.5,-0.1 0.6,0.3 0.4,-0.1 0.2,0.1 0.3,0 0.6,0 0.9,-0.2 0.8,-0.5 0.3,-0.5 0.4,-0.3 0.6,-0.4 0,-0.9 -0.7,-0.1 -0.6,-0.3 -1.1,-0.1 -0.1,0 0.1,0.2 -0.1,0 -0.2,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="PF" title="0" data-name="Fr. Polynesia"
              data-id="PF"
              d="m 213.2,704.9 -0.1,-0.3 -0.2,-0.3 -0.1,0.1 0.1,0.1 0.2,0.3 0,0.2 0.1,-0.1 z m 9.3,-14.7 -0.2,-0.2 -0.4,-0.2 -0.2,-0.1 -0.2,-0.1 -0.1,0.1 0.1,0.1 0.1,0 0.3,0.2 0.3,0.1 0.2,0.1 0,0.1 0.1,-0.1 z m -24.5,-1.1 -0.6,-0.3 0.1,0.2 0.4,0.2 0.2,0.1 -0.1,-0.2 z m 20.5,-0.2 -0.4,-0.5 -0.3,0 0.7,0.6 0,-0.1 z m -21.6,-1 -0.4,-0.4 -0.2,-0.3 -0.3,-0.1 0.1,0.1 0.4,0.4 0.3,0.4 0.2,0.1 -0.1,-0.2 z m -0.3,-2.1 -0.1,-0.1 0,0 0,-0.3 0.2,-0.3 0.6,-0.4 0,-0.1 0,0 -0.2,0.1 -0.4,0.2 -0.2,0.2 -0.1,0.2 -0.1,0.3 0.1,0.2 0.1,0.1 0.2,0 -0.1,-0.1 z m -47.4,-1.1 -0.2,-0.6 -0.3,-0.5 -0.8,-0.1 -0.5,0.2 -0.1,0.2 0.1,0.4 0.5,0.7 0.5,0.1 0.8,-0.1 0.4,0.6 0.2,0.1 0.4,0.1 0.1,-0.3 -0.2,-0.5 -0.9,-0.3 z m -2.9,-0.9 0.1,-0.4 -0.2,-0.1 -0.5,0 0,0.2 0.1,0.2 0.1,0.1 0.3,0.2 0.1,-0.2 z m -9.7,-4.3 0.2,0 -0.4,-0.6 -0.3,-0.2 0,0.1 0,0.7 0.3,0.1 0.2,-0.1 z m 43.9,-1.6 -0.2,0 -0.3,0 -0.1,0 0.5,0.1 0.4,0.2 -0.3,-0.3 z m -0.7,0.1 -0.3,-0.1 -0.3,-0.2 -0.3,0 0.7,0.3 0.2,0 z m -43.8,0.1 0.1,-0.2 -0.1,-0.1 -0.4,-0.2 0.1,0.3 0,0.2 0.2,0.1 0.1,-0.1 z m 32.8,-2 -0.3,-0.4 -0.2,-0.3 -0.2,-0.4 -0.4,-0.5 0.1,0.3 0.1,0.2 0.2,0.2 0.2,0.4 0.1,0.2 0.3,0.4 0.1,0 0,-0.1 z m 16.2,-1.5 0.1,-0.5 -0.2,0 0,0.5 0.1,0 z m -14.4,-1.6 -0.6,-0.6 -0.1,0 0.1,0.2 0.5,0.5 0.1,0.2 0,-0.3 z m 30.8,-33.9 0.1,-0.2 0,-0.2 -0.1,-0.1 -0.3,-0.1 0.1,0.7 0.2,-0.1 z m -2.7,-3.7 -0.1,-0.2 -0.2,0 -0.1,0.1 0,0.5 0.4,-0.4 z m 0.1,-1.6 -0.8,0.5 0.2,0.4 0.4,0.1 0.2,-0.2 0.8,-0.1 0.3,-0.4 -0.3,0.1 -0.8,-0.4 z m -6.1,-1.7 0.2,-0.5 -0.2,-0.1 -0.4,0.2 0,0.2 0.3,0.4 0.1,-0.2 z m 2.6,-3.1 0.3,-0.1 0,-0.1 -0.2,-0.2 -0.3,-0.1 -0.1,0.1 -0.1,0.2 0.1,0.3 0.3,-0.1 z m -2.9,-0.1 0.1,-0.3 0,-0.2 -0.1,-0.2 -0.9,-0.2 -0.1,0.1 0,0.4 0.2,0.5 0.3,0 0.5,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SG" title="0" data-name="Singapore"
              data-id="SG" d="m 1561,563.7 0.1,-0.2 -0.2,-0.2 -0.3,-0.1 -0.5,-0.2 -0.6,0.1 -0.3,0.6 0.9,0.4 0.9,-0.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SB" title="0" data-name="Solomon Is."
              data-id="SB"
              d="m 1909.1,646.4 -0.2,-0.2 -0.1,-0.4 -0.3,0 -0.3,0.1 0.2,0.6 0.2,0 0.5,-0.1 z m -35.6,0.8 -0.1,-0.2 -0.5,-0.4 -1.9,-1.3 -0.4,-0.1 -0.1,0.1 -0.1,0.3 0.1,0.2 0.5,0.1 0,0.1 0.3,0.2 0.7,0.2 0.4,0.3 0.1,0.5 0.3,0.1 0.3,0.1 0.4,-0.2 z m 32,-6.6 0,-0.1 0.2,-0.3 -0.2,-0.1 -0.5,-0.1 -0.7,0.1 -0.3,0.2 -0.2,0.3 -0.2,0 0,0.2 0.1,0.4 0.2,-0.1 0.2,0.1 0.5,-0.5 0.3,0 0.1,0 0.5,-0.1 z m -24.4,-2.3 -0.1,-0.2 -0.2,-0.1 -0.9,-0.7 -0.5,-0.2 -0.5,0 -0.1,0.5 0,0.3 0.6,0 0.4,0.2 0,0.6 0.2,0.2 0,0.5 1.2,0.9 0.7,0.4 0.7,0.1 0.4,0.2 0.5,-0.1 0.5,0.2 0.4,-0.1 -0.4,-0.3 0,-0.4 -0.5,-1.3 -0.3,-0.3 -0.5,0.1 -0.5,-0.2 -0.4,0 -0.7,-0.3 z m -0.4,-4.9 -0.6,-1.6 -0.2,-0.1 0.1,0.6 0.1,0.4 -0.1,0.5 -0.1,0.6 0.2,0.2 0.2,-0.2 0.4,0.5 0,-0.2 0,-0.7 z m -9.8,-2.2 -0.3,-0.1 -0.4,0.3 -0.1,0.3 -0.1,0.7 0,0.4 0.3,0.7 0.3,0.5 0.3,0.3 0.2,0.2 0.9,0.1 1.7,0.1 0.9,0.4 0.9,0.2 0.4,-0.1 0.5,-0.2 0.1,-0.1 -0.1,-0.6 -0.2,-0.3 -0.4,-0.2 -0.2,-0.6 -0.5,-0.4 -0.9,-0.7 -1.6,0 -0.6,0.1 -1.1,-1 z m 2.6,-1.8 -0.5,0.2 0,0.3 0.4,0.1 0.4,0.2 0.1,0.3 0,0 0.2,-0.1 0.4,0.2 0.2,-0.3 -0.4,-0.5 -0.4,-0.3 -0.1,0 -0.3,-0.1 z m -5.6,0.8 0.3,-0.2 0,-0.4 -0.3,0 -0.1,-0.2 -0.2,0 -0.3,0.2 -0.2,0.3 0.1,0.2 0.4,0 0.2,0.1 0.1,0 z m -8.4,-2.3 -0.1,-0.2 -0.3,-0.2 -0.2,0 -0.5,0.1 0.1,0.1 0.6,0.3 0.3,0.1 0.1,-0.2 z m 3.1,0.4 0.3,-0.2 -0.1,-0.2 -0.1,-0.5 -0.4,0.7 0.1,0.2 0.2,0 z m -0.5,-0.9 0,-0.2 0,-0.2 -0.2,-0.1 0.4,-0.3 -0.1,-0.1 -0.6,-0.2 -0.2,0.2 -0.2,0.1 -0.1,0.1 -0.1,0.1 -0.1,0.5 0.2,0.4 0.4,0.2 0.6,-0.5 z m -4,0.2 -0.3,-0.4 0.1,-0.5 0.2,-0.1 0.2,-0.5 -0.1,-0.4 -0.2,0.1 -0.7,0.6 -0.1,0.3 0.6,0.8 0.3,0.2 0,-0.1 z m 13,-1.3 -0.2,-0.4 0,-0.2 -0.3,-0.2 -0.2,0.1 -0.1,0.3 0.1,0.2 0.4,0.3 0.3,-0.1 z m 6,-1.2 -0.2,0 -0.1,0.1 -0.2,0 -0.3,0 -0.1,0.2 0.6,1.1 -0.3,0.5 0.4,2.2 0.4,1.2 0.8,0.8 0,0.2 0.8,0.5 0.6,1.3 0.2,0.1 0.1,-0.2 0,-0.6 -0.5,-1.1 0.1,-0.8 -0.2,-0.3 0,-0.3 -0.2,-0.8 -0.6,-0.7 -0.3,-0.1 -0.2,-0.3 0.2,-0.6 0.2,-0.2 0.1,-0.3 -1.3,-1.9 z m -16.6,-0.5 -0.6,-0.2 -0.2,-0.3 0,-1 -0.6,-0.3 -0.3,0.2 -0.6,0.7 -0.2,0.4 -0.5,0.3 -0.1,0.3 0,0.4 0.4,0.1 0.3,-0.4 0.9,-0.1 0.3,0.1 0,0.4 0.1,0.7 0.3,0.3 0.5,0.2 0.4,0.6 0.1,-0.3 0.2,0 0.2,-0.4 -0.3,-1.2 -0.3,-0.5 z m -6.5,-0.4 0.1,-0.5 -0.1,-0.9 -0.2,0.1 0,0.2 -0.1,0.4 0.2,0.8 0.1,-0.1 z m 3.2,-0.4 0.2,-0.2 0,-0.4 0,-0.5 -0.2,-0.4 -0.2,-0.2 -0.5,0.1 -0.4,0.5 0,0.5 0.4,0.6 0.6,0 0.1,0 z m -2.6,-1.2 0.2,-0.3 0.5,-0.7 0.1,-0.3 -0.5,-0.2 -0.4,-0.5 -0.4,-0.2 -0.3,0.4 0,0.4 0.5,0.6 -0.1,0.4 0.2,0.1 0.1,0.4 0.1,-0.1 z m 17.5,3.9 -0.1,-0.5 -0.3,-0.4 0.4,-0.5 -2.2,-1.9 -0.3,-0.2 -0.4,-0.1 -0.5,-0.4 -0.5,-0.1 -0.5,-0.4 -0.2,-0.3 -0.6,-0.4 -0.6,-0.8 -1.5,-0.3 0.1,0.2 0.4,0.4 0.1,0.7 0.5,0.4 0.5,0.6 0.2,0.1 0.2,0.2 0.4,0.5 0.8,0.4 0.8,0.6 0.3,0.1 0.3,0.3 1.5,0.7 0.5,0.7 0.7,0.5 0,-0.1 z m -21.8,-9.2 0.2,-0.3 -0.7,-0.5 -0.2,0.3 -0.2,0.5 0.4,0.2 0.5,-0.2 z m 9.1,1.5 -0.1,-0.1 -0.3,0 -0.4,-0.2 -0.7,-0.8 -0.2,-0.3 -0.2,-1 -0.4,-0.4 -1.4,-0.8 -0.8,-0.8 -0.7,-0.2 -0.2,0.2 0,0.5 0.2,0.3 1,0.9 1.1,1.7 1,1 0.8,0.1 0.4,0 0,0.1 0.1,0.2 0.5,0.2 0.5,-0.4 -0.2,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="ST" title="0"
              data-name="S??o Tom?? and Principe" data-id="ST"
              d="m 1014.1,571.4 0.5,-0.8 0,-0.5 -0.3,-0.5 -0.4,0 -0.5,0.4 -0.3,0.4 0,0.3 0.1,0.7 0.1,0.3 0.3,0.2 0.5,-0.5 z m 4.3,-9.2 0.2,-0.4 0,-0.2 -0.1,-0.1 -0.1,-0.1 -0.2,0.1 -0.3,0.5 0.1,0.2 0.2,0.2 0.2,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SX" title="0" data-name="Sint Maarten"
              data-id="SX" d="m 627.1,457.2 0,0 0.2,0.2 0.3,0.1 0.1,-0.1 0,-0.2 -0.6,0 z" style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="SC" title="0" data-name="Seychelles"
              data-id="SC" d="m 1288.5,602 -0.5,-0.8 -0.4,0.3 0.2,0.3 0.3,0.2 0.1,0.4 0.3,0.2 0,-0.6 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TC" title="0"
              data-name="Turks and Caicos Is." data-id="TC"
              d="m 578.7,433.1 -0.1,0.4 0,0.2 0.2,0.1 0.6,-0.1 0.1,-0.1 0.2,-0.1 0,-0.1 -0.4,0.1 -0.6,-0.4 z m 3.6,0.6 0.2,-0.2 -0.2,-0.2 -0.7,-0.2 -0.2,0.1 0,0.3 0.6,0 0.3,0.3 0,-0.1 z m -1.1,-0.5 -0.1,-0.1 -0.1,-0.6 -0.5,0 0,0.2 0.1,0.2 0.1,0 0.1,0.2 0.3,0.2 0.1,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TO" title="0" data-name="Tonga"
              data-id="TO"
              d="m 13.3,707.7 0,0 -0.2,0.3 0,0.2 0.4,0.4 -0.2,-0.9 z m -1.6,-0.9 -0.2,0 0.2,-0.1 -0.4,-0.2 -0.4,0 -0.2,-0.1 0,-0.2 -0.2,0.3 0.2,0.3 0.9,0.4 0.3,0.2 0.2,-0.6 0,-0.2 -0.3,0.1 0,0.1 -0.1,0 z m 2.5,-16 0.1,-0.2 0,-0.2 -0.3,-0.1 -0.1,0 -0.3,0.5 0.1,0.1 0.3,0.2 0.1,0 0.1,-0.3 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="TT" title="0"
              data-name="Trinidad and Tobago" data-id="TT"
              d="m 635.4,507.7 0.1,-0.2 0,-0.6 0.2,-0.4 -0.2,-0.4 -0.1,-0.6 0.1,-0.5 0,-0.7 0.2,-0.3 0.5,-0.8 -0.9,0 -0.6,0.2 -1.1,0.1 -0.5,0.2 -0.7,0.1 -0.4,0.2 0.1,0.1 0.5,0.2 0.2,0.2 0.1,0.2 0.1,0.4 -0.3,1.7 -0.1,0.1 -0.6,0.1 -0.2,0.3 -1.4,0.8 0.8,-0.1 0.9,0.1 2.4,-0.1 0.9,-0.3 z m 1.8,-6.7 1.2,-0.5 0.1,-0.4 -0.2,0 -0.8,0.3 -0.6,0.5 0,0.2 0.3,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="VC" title="0"
              data-name="St. Vin. and Gren." data-id="VC"
              d="m 634.5,491.4 0,0 0,-0.1 0.1,0 0,-0.1 0,0 0,-0.1 -0.1,0 0,0.1 0,0 0,0.1 -0.1,0 0,0.1 0,0 0,0 0.1,0 z m 0.7,-1.9 0.1,-0.2 0.1,-0.1 0,0 0,0 -0.1,-0.1 0,0 0,0.1 -0.2,0.1 0,0 0,0.1 0,0 0,0.1 -0.1,0 -0.1,0 0,0 0.1,0 0,0 0.1,0.1 0,0 0,0 0,0 0.1,-0.1 z m 0.3,-1.1 0.3,-0.2 0.1,-0.6 -0.1,-0.4 -0.2,0 -0.3,0.1 -0.2,0.3 -0.1,0.5 0.4,0.4 0.1,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="VG" title="0"
              data-name="British Virgin Is." data-id="VG"
              d="m 619.2,455.1 0.3,-0.2 -0.2,-0.1 -0.4,0 -0.3,0.2 0.1,0.1 0.5,0 z m 1.1,-0.4 0.4,-0.4 -0.5,0.1 -0.2,0.2 0.1,0.1 0.1,0 0.1,0 z m 0.8,-1.8 -0.2,0 -0.5,0 0,0 0.1,0.1 0.3,0 0.3,0.1 0,0 0,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="VI" title="0" data-name="U.S. Virgin Is."
              data-id="VI"
              d="m 617.9,458.9 -0.7,0.2 -0.1,0.4 1.1,0 0.7,-0.3 -0.6,0 -0.4,-0.3 z m 0.9,-3.5 -0.5,-0.1 -0.2,0.2 0,0 0.3,0.1 0.4,-0.2 z m -1.1,0.1 -0.2,-0.2 -0.3,-0.1 -0.4,0.1 0.5,0.3 0.4,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CY" title="0" data-name="Cyprus"
              data-id="CY"
              d="m 1149.9,348.4 -0.3,-0.1 -0.5,0.2 -0.4,0.4 -0.4,0.3 -0.5,-0.3 0.2,0.9 0.6,1.1 0.2,0.3 0.3,0.2 1.1,0.3 0.3,0 0.6,0 0.2,0.1 0.2,0.4 0.4,0 0,-0.1 0,-0.3 0.2,-0.2 0.3,-0.2 0.3,0 0.6,-0.1 0.6,-0.2 0.5,-0.4 0.9,-1 0.3,0 0.3,0 0.6,0 0.6,-0.1 -0.2,-0.4 -0.1,-0.1 -0.4,-0.5 -0.2,-0.4 0.1,-0.6 2.5,-1.9 0.5,-0.5 -0.8,0.2 -0.6,0.4 -0.4,0.2 -0.7,0.4 -2.3,0.8 -0.8,0.1 -0.8,0 -1,-0.1 -0.9,-0.2 0,0.7 -0.2,0.6 -0.6,0.2 -0.3,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="RE" title="0" data-name="Reunion"
              data-id="RE"
              d="m 1284,707.9 0.2,-0.4 0.1,-0.8 -0.4,-0.8 -0.4,-0.7 -0.4,-0.2 -0.8,-0.1 -0.7,0.3 -0.4,0.6 -0.2,0.3 0.4,1.1 0.2,0.3 1.1,0.6 0.5,0 0.8,-0.2 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="YT" title="0" data-name="Mayotte"
              data-id="YT"
              d="m 1228.7,654.7 0,-0.3 0.2,-0.5 0,-0.1 0.1,-0.5 -0.3,-0.3 -0.2,0 -0.2,-0.3 -0.3,0.3 0.3,0.5 -0.1,0.3 -0.1,0.4 0.1,0.4 0.2,0.2 0.3,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="MQ" title="0" data-name="Martinique"
              data-id="MQ"
              d="m 638,479.9 -0.2,-0.7 -0.1,-0.2 -0.2,-0.3 0.1,-0.3 0,-0.1 -0.2,0 -0.3,-0.5 -0.6,-0.3 -0.3,0 -0.2,0.2 0,0.3 0.3,0.9 0.2,0.2 0.5,0.2 -0.4,0.4 0,0.1 0.1,0.3 0.9,0 0.2,0.3 0.1,-0.1 0.1,-0.4 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="GP" title="0" data-name="Guadeloupe"
              data-id="GP"
              d="m 636.4,471.1 0.2,-0.2 0,-0.3 -0.2,-0.3 -0.2,0.1 -0.2,0.3 0,0.3 0.1,0.1 0.3,0 z m -1.9,-0.8 0.2,-0.2 0,-1.2 0.1,-0.3 -0.2,-0.1 -0.2,-0.2 -0.6,-0.2 -0.1,0.1 -0.2,0.3 0.1,1.5 0.2,0.5 0.2,0.1 0.5,-0.3 z m 1.6,-1.4 0.8,-0.2 -0.9,-0.6 -0.2,-0.4 0,-0.3 -0.4,-0.3 -0.2,0.2 -0.1,0.3 0.1,0.5 -0.3,0.4 0.1,0.4 0.4,0.1 0.7,-0.1 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="CW" title="0" data-name="Curaco"
              data-id="CW" d="m 595.9,494.9 0,-0.6 -0.9,-0.4 0,0.3 0.1,0.2 0.3,0.1 0.1,0.2 -0.1,0.6 0.2,0.3 0.3,-0.7 z"
              style=" fill-rule:evenodd" />
          </a>
          <a onclick="myFunction()">
            <path class="pathclass" onclick="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmousemove="showTooltip(evt, $(this).attr('title'),$(this).attr('data-name'));"
              onmouseout="hideTooltip();" inkscape:connector-curvature="0" id="IC" title="0" data-name="Canary Islands"
              data-id="IC"
              d="m 879.6,395.2 -0.2,-0.2 -0.7,0.5 -0.6,0 0.1,0.2 0.1,0.2 0.7,0.4 0.6,-1.1 z m 13.5,-2.1 0,-0.1 -0.1,0 -0.1,0.1 -1.3,-0.1 -0.2,0.6 -0.5,0.4 0,0.7 0.5,0.7 0.3,0.1 0.5,0.1 0.7,-0.4 0.2,-0.4 0.1,-0.8 -0.1,-0.4 0,-0.5 z m -9.7,0.8 0.5,-0.4 0,-0.2 -0.1,-0.3 -0.5,-0.3 -0.2,0 -0.2,0.2 -0.2,0.4 0.3,0.5 0.2,0.1 0.2,0 z m 4.7,-2.3 1.2,-1 0,-0.3 -1,0.1 -1.1,1 -0.3,0.1 -1,0.1 -0.5,0 -0.4,0.2 0.2,0.3 0.4,1 0.7,0.9 0.6,-0.2 0.3,-0.2 0.4,-0.6 0.5,-1.4 z m 11.6,1.3 1.5,-0.5 0.3,-1 0.3,-1.1 0,-0.7 -0.2,-0.3 -0.1,0 -0.4,0 -0.3,0.2 -0.1,0.6 -0.7,1.3 -0.5,1.2 -0.7,0.6 -0.7,0.2 0.1,0.1 0.7,0.1 0.8,-0.7 z m -19.7,-2 0.5,-0.5 0.1,-0.3 -0.1,-0.5 0.2,-0.2 -0.1,-0.4 -0.3,-0.4 -0.7,0 -0.4,0.6 0.6,1.2 0.1,0.5 0.1,0 z m 22.4,-2.7 0.9,-0.3 0.5,-0.3 0.1,-0.9 0.2,-0.3 -0.2,-0.3 -0.2,0.2 -0.2,0.4 -0.6,0.2 -0.8,0.4 -0.2,0.3 -0.2,0.9 0.4,0.1 0.3,-0.4 z"
              style=" fill-rule:evenodd" />
          </a>
        </svg>

      </div>

    </div>

    <!-- Modal for full size images1 on click-->
    <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
      <span class="w3-button w3-black w3-xlarge w3-display-topright">??</span>
      <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
        <img id="img01" class="w3-image">
        <p id="caption"></p>
      </div>
    </div><br>

    
   
    <!--MAIN HEADER AREA END -->
<!--MAIN BANNER AREA START -->
<div class="page-banner-area page-contact" id="page-banner">
    <div class="overlay dark-overlay"></div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 m-auto text-center col-sm-12 col-md-12">
                <div class="banner-content content-padding">
                    <h1 class="text-white">About us</h1>
                    <p>We care for the Refugees, We care for the Humanity.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--MAIN HEADER AREA END -->


<!--  ABout2  AREA START  -->
    <section class="section-padding" id="section-strategy1">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-sm-12 col-md-8 mb-4">
                    <h3 class="mb-3"> Why ? <br> </h3>
                    <p class="mb-4"> With increasing political disputes, innocent people across the globe are becoming Refugees and migrating to
                        different countries leaving behind all the memories and their home.
                        Being a refugee is not a choice, its the helplessness and yet a hope for living a better life.
                        Refugees are guests and its our responsibility to make a new home for them. And so, we developed this platform
                        to bridge the gap between Helpers and Seekers.</p>

                    <span class="h5 mb-4">What we do ?</span>
                    <ul class="about-list2 my-4">
                        <li class="mb-2">
                            <i class="icofont icofont-check-circled"></i>Authentication and Verification of Refugees seeking for Help.
                        </li>

                        <li class="mb-2">
                            <i class="icofont icofont-check-circled"></i>Registering, storing and Monitoring Refugee Details.
                        </li>

                        <li class="mb-2">
                            <i class="icofont icofont-check-circled"></i>Access of basic details and requirements of Refugees.
                        </li>

                        <li class="mb-2">
                            <i class="icofont icofont-check-circled"> </i>Enabling Helpers to help the Refugees.
                        </li>
                    </ul>

                    <!-- <a href="#" class="mt-3 d-inline-block">Learn more about us <i class="fa fa-angle-right"></i></a> -->
                </div>
                <div class="col-lg-6 col-md-4">
                    <img src="images1/verified.jpeg" alt="" class="img-fluid w-100">
                </div>
            </div>
        </div>
    </section>
    <!--  ABOUT AREA END  -->
<!--  HISTORY AREA  -->
<!-- <section class="section-padding pt-0" >
    <div class="container">
        <div class="row">
            <div class="col-lg-6 ">
                <div class="media img-block mb-3 mb-lg-0">
                    <img src="images1/about/h-1.jpg" alt="" class="img-fluid rounded mr-3">
                    <div class="media-body ">
                        <h4 class="mb-3">Provide services with maintain quality from 24 years!</h4>
                        <p>We provide marketing services to startups.Let's start your site in grow high.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="media img-block">
                    <img src="images1/about/h-2.jpg" alt="" class="img-fluid rounded mr-3">
                
                    <div class="media-body">
                        <h4 class="mb-3">Our mission is to provide our client what they need!</h4>
                        <p>We provide small businesses looking for a partner for their digital media</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!--  HISTORY AREA END  -->
<!--  COUNTER AREA  -->
<p></p>
<section class="section-padding pt-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="text-center border p-4 rounded mb-4">
                    <span class="counter  text-dark font-weight-normal">460</span>
                    <h5 class="text-uppercase mt-2">Refugees got Help</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="text-center border p-4 rounded mb-4">
                    <span class="counter text-dark font-weight-normal">60</span>
                    <h5 class="text-uppercase mt-2">Refugees Rescued</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="text-center border p-4 rounded mb-4">
                    <span class="counter text-dark font-weight-normal">30</span>
                    <h5 class="text-uppercase mt-2">NGOs Associated</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="text-center border p-4 rounded ">
                    <span class="counter text-dark font-weight-normal">25</span>
                    <h5 class="text-uppercase mt-2">Volunteers</h5>
                </div>
            </div>
        </div>
    </div>
</section>
<!--  COUNTER AREA END -->
<!--  SECTION Service-2START  -->
<section class="section-padding" id="section-strategy">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="mb-5">
                            <span class="icon-3x text-default"><i class="icofont-verification-check"></i></span>
                            <h4 class="heading1">Verified Refugees</h4>
                            <p>Authentication and Verification of each Refugee is done by Legally Authorised Admin</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="mb-5">
                            <span class="icon-3x text-default"><i class="icofont-database-locked"></i></i></span>
                            <h4 class="heading1">Database</h4>
                            <p>Details of all refugees is stored in Secure Database for Tracking and Monitoring.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div>
                            <span class="icon-3x text-default"><i class="icofont-unity-hand"></i></span>
                            <h4 class="heading1">Helping Hand</h4>
                            <p>Helpers can help the Seekers and fulfill their requirements.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div>
                            <span class="icon-3x text-default"><i class="icofont-ui-social-link"></i></span>
                            <h4 class="heading1">Wide Network of Helpers</h4>
                            <p>Hundreds of NGOs and Volunteers are associated with us to ensure every Refugee is getting Help.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--  SECTION Service-2 END  -->
<!--  SECTION TEAM  -->
<div class="card">
  <img src="images1/dr_rajshree_khande.jpeg" alt="Avatar" width="20%" style="margin-left:100px">
  <div class="container">
    <h4><b>Our Guiding Light</b></h4>
    <h3>Dr. Rajshree Khande&ensp;<a href="https://www.linkedin.com/in/dr-rajeshree-khande-56739379?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BneGwTQvRS9KERF2d7L4JwQ%3D%3D" class="fa fa-linkedin" target="_blank"></a></h3>
    <p>Associate Head, School of Computer Science,<br> Faculty of Science, MIT-World Peace University.</p>
  </div>
</div>

<section class="section-padding bg-gray" >
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="mb-5">
                    <h3 class="mb-2">Developers Corner</h3>
                    <p>Students of MIT WPU College Pune, Maharashtra.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <img src="images1/chaitali_gadekar.jpeg" alt="Paris" style="width:150px">

                <ul class="list-unstyled list-inline team-social mt-4">
                    <li class="list-inline-item"><a href="https://www.linkedin.com/in/chaitali-gadekar-b74614210/" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                </ul>
                <h4 class="mt-3">Chaitali Gadekar</h4>
                <p>F.Y. M.SC. CS</p>                
            </div>
            
            <div class="col-lg-3 col-md-6">
                <img src="images1/harshi.jpeg" alt="" style="width:150px">

                <ul class="list-unstyled list-inline team-social mt-4">
                    <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                </ul>
                <h4 class="mt-3">Harshi Balsara</h4>
                <p>F.Y. M.SC. CS</p>                
            </div>
            <div class="col-lg-3 col-md-6">
                <img src="images1/sakshi_devra.jpeg" alt="" style="width:150px">

                <ul class="list-unstyled list-inline team-social mt-4">
                    <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                </ul>
                <h4 class="mt-3">Sakshi Devra</h4>
                <p>F.Y. M.SC. CS</p>                
            </div>
            <div class="col-lg-3 col-md-6">
                <img src="images1/atharva_mitbhawkar.jpeg" alt="" style="width:150px">

                <ul class="list-unstyled list-inline team-social mt-4">
                    <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                </ul>
                <h4 class="mt-3">Atharva Mitbhawkar</h4>
                <p>F.Y. M.SC. CS</p>                
            </div>
        </div>
    </div>
</section>
<!--  SECTION TEAM END  --> 
 <!--  PARTNER START  -->
<!-- <section class="section-padding ">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 text-center text-lg-left">
                <div class="mb-5">
                    <h3 class="mb-2">Trusted by hundred over years</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis, dignissimos?</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-md-3 text-center">
                <img src="images1/clients/client01.png" alt="partner" class="img-fluid">
            </div>
            <div class="col-lg-3 col-sm-6 col-md-3 text-center">
                <img src="images1/clients/client06.png" alt="partner" class="img-fluid">
            </div>
            <div class="col-lg-3 col-sm-6 col-md-3 text-center">
                <img src="images1/clients/client04.png" alt="partner" class="img-fluid">
            </div>
            <div class="col-lg-3 col-sm-6 col-md-3 text-center">
                <img src="images1/clients/client05.png" alt="partner" class="img-fluid">
            </div>
        </div>
    </div>
</section> -->
<!--  PARTNER END  -->

<!--  FOOTER AREA START  -->
<section id="footer" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-8 col-md-8">
                <div class="footer-widget footer-link">
                    <h4>We care for the rights<br>of the innocent Refugees.</h4>
                    <p>???Refugees didn???t just escape a place. They had to escape a thousand memories until they???d put enough time and distance between them and their misery to wake to a better day.???
                        <br>
                        ??? Nadia Hashimi
                        </p>
                </div>
            </div>
            <div class="col-lg-2 col-sm-4 col-md-4">
                <div class="footer-widget footer-link">
                    <h4>About</h4>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Service</a></li>
                        <li><a href="#">Pricing</a></li>
                        <li><a href="#">Team</a></li>
                        <li><a href="#">Testimonials</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-2 col-sm-6 col-md-6">
                <div class="footer-widget footer-link">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#">How it Works</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Report Bug</a></li>
                        <li><a href="#">License</a></li>
                        <li><a href="#">Terms & Condition</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="footer-widget footer-text">
                    <h4>Our location</h4>
                    <p class="mail"><span>Mail:</span> refugee-asylum@gmail.com</p>
                    <p><span>Phone :</span>+202-277-3894</p>
                    <p><span>Location:</span> MIT WPU Kothrud Pune</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="footer-copy">
                    ?? 2021 Refugee Asylum inc. All Rights Reserved.
                </div>
            </div>
        </div>
    </div>
</section>
<!--  FOOTER AREA END  -->
   

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4.3.1 -->
    <script src="plugins/bootstrap/js/popper.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- Woow animtaion -->
    <script src="plugins/counterup/wow.min.js"></script>
    <script src="plugins/counterup/jquery.easing.1.3.js"></script>
     <!-- Counterup -->
    <script src="plugins/counterup/jquery.waypoints.js"></script>
    <script src="plugins/counterup/jquery.counterup.min.js"></script>

    <!-- Google Map -->
    <script src="plugins/google-map/gmap3.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>   
    <!-- Contact Form -->
    <script src="plugins/jquery/contact.js"></script>
    <script src="js/custom.js"></script>

  </body>
  </html>