<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Web Page</title>
    <style>

        * {
            background-color: #F0F0F0;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        .section {
            background-color: #F0F0F0;
            height: auto;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            padding: 20px;
            margin: 0 130px;
        }


        .header {
            background-color: #F0F0F0;
            text-align: left;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
        }


        .section2 {
            height: 450px;
            background-color:  #F0F0F0;
            display: flex;
            flex-direction: row;
            align-items: flex-start;
        }


        .imgTag {
            max-width: 550px;
            max-height: 420px;
            display: block;
            margin-top: 20px;
        }

        .paragraph {

            margin-left: 60px;
            font-size: 20px;
            line-height: 1.5;
            margin-top: 100px;
        }
        #btnContact{
            font-size: 22px;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #000080;
            color: white;
            border-radius: 5px;
        }
        #btnLogin{
            font-size: 22px;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #000080;
            color: white;
            border-radius: 5px;
        }
        #btnContainer{
            margin-top: 100px;
            display: flex;
            justify-content: space-evenly;
            margin-left: 50px ;
            width: 700px;
        }
        .innerSec3 {
            background-color: #F0F0F0;
            text-align: left;
            margin-top: 40px;
            font-size: 24px;
            font-weight: bold;
        }
        .innerParagraph {
            font-size: 20px;
            line-height: 1.5;
            margin-top: 30px;
        }
        .centered-box {
            text-align: center;
            height: 300px;
            background-color:  #f5f5f5;
            padding: 20px;
            border-radius: 10px;
            margin: 0 auto;
            max-width: 400px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        .centered-box h2 {
            font-size: 24px;
            margin-top: 0;
        }

        .centered-box .icon {
            margin-top: 20px;
        }

        .centered-box p {
            font-size: 16px;
        }

        .centered-box button {
            background-color: #000080;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        .button-container {
            margin-top: auto;
        }
         .what-we-do {
             margin-top: 30px;
             text-align: center;
             background-color: #F5F5F5;

         }

        .what-we-do h2 {
            color: #000080;
            background-color: #F5F5F5;
        }

        .innerSection3-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .innerSection3 {
            height: 350px;
            text-align: center;
            margin: 20px;
            padding: 20px;
            background-color: #f5f5f5;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            flex: 0 0 calc(33.33% - 40px);
        }

        .icon-container {
            background-color: #ffffff;
            border-radius: 50%;
            width: 210px;
            height: 210px;
            margin: 0 auto 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .icon-container img {

            width: 310px;
            height: auto;
        }

        .innerH3 {
            margin-top: 15px;
            background-color: #F5F5F5;
            color: #333333;
            font-size: 24px;
        }

        .innerParagraph {
            margin-top: 5px;
            background-color: #F5F5F5;
            font-size: 18px;
            margin-bottom: 25px;
        }
        footer {
            margin-top: 60px;
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        footer h2 {
            background-color: #333;
            font-size: 20px;
            margin-bottom: 10px;
        }

        footer p {
            background-color: #333;
            font-size: 16px;
            margin: 5px 0;
        }

        footer ul {
            background-color: #333;
            list-style: none;
            padding: 0;
        }

        footer ul li {
            background-color: #333;
            margin-bottom: 5px;
        }

        footer a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            margin-right: 10px;
        }


        .social-icons {
            background-color: #333;
            margin-top: 10px;
        }

        .social-icons a {
            font-size: 24px;
        }

        .icon-container-last {
            background-color: #ffffff;
            border-radius: 50%;
            width: 260px;
            height: 260px;
            margin: 0 auto 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .icon-container-last img {

            width: 260px;
            height: auto;
        }


    </style>
</head>
<body>
<div class="section header" style="margin-top: 40px">
    <h1 style="color: #000080">Unlock Your Global Career Potential with<br>Personalized Consultation Services</h1>
</div>

<div class="section section2">
    <div style="display: flex; flex-direction: row; align-items: flex-start; justify-content: space-between;">
        <div style="flex: 1;">
            <img class="imgTag" src="assests/sec_01_img_bw.jpg" alt="Your Image Alt Text">
        </div>

        <div style="flex: 2; ">
            <p class="paragraph">
                Welcome to 'The Jobs' your expert career consultants in Colombo. We specialize in
                various job types and countries, and our services are entirely free. Whether you need
                advice on job opportunities, applications, or career paths, we're here to help you. Contact us
                today to kickstart your brighter future.
            </p>
            <div id="btnContainer">
                <a href="contact-page" id="btnContact" >Contact Us</a>
                <a href="login.jsp" id="btnLogin" >Login/Register</a>
            </div>
        </div>
    </div>
</div>


<div class="section section3">

    <div class="innerSec3" >
        <h1 style="color: #000080">Our services</h1>
    </div>
    <p class="innerParagraph">At The Jobs, we are dedicated to providing top-notch consultation services to job
        seekers in Colombo and beyond. Our team of experienced consultants specializes in various countries
        and job types, offering valuable advice to those planning to work abroad. To ensure convenience,
        we offer flexible appointment scheduling through phone calls, emails, or in-person visits. With our new
        web-based system, we're committed to enhancing our service quality by enabling online appointment booking
        and delivering on-demand reports to facilitate efficient decision-making for both job seekers and management.
    </p>
    <div class="centered-box">
        <h2 style="background-color:  #f5f5f5; ">CONSULTING</h2>
        <div class="icon" style="background-color:  #f5f5f5">
            <img src="assests/icon_consulting.png" alt="Description of the icon">
        </div>
        <p style="margin-top: 25px ; background-color:  #f5f5f5; font-size: 18px">You can simply Schedule Consultation <br> for FREE. Press bellow button<br>for schedule a time.</p>
        <div class="button-container" style="background-color:  #f5f5f5">
            <button>Consult Now</button>
        </div>
    </div>
</div>

<div class="section section4">
    <div class="innerSec3" >
        <h1 style="color: #000080">Our Work Process</h1>
    </div>
    <div class="what-we-do">
        <div class="innerSection3-container">
            <div class="innerSection3">
                <div class="icon-container">
                    <img src="assests/consultant_set.jpg" alt="Icon 1">
                </div>
                <h3  class="innerH3">Expert Consultation</h3>
                <p class="innerParagraph">We offer expert consultation services to job seekers...</p>
            </div>
            <div class="innerSection3">
                <div class="icon-container">
                    <img src="assests/shedule.jpg" alt="Icon 2">
                </div>
                <h3 class="innerH3">Flexible Scheduling</h3>
                <p class="innerParagraph">Our flexible scheduling options make it easy for you to...</p>
            </div>
            <div class="innerSection3">
                <div class="icon-container">
                    <img src="assests/online.jpg" alt="Icon 3">
                </div>
                <h3  class="innerH3">Online Convenience</h3>
                <p class="innerParagraph">Our web-based system enables convenient online...</p>
            </div>
        </div>
    </div>

</div>

<div class="section section5" style="text-align: center; padding: 20px; display: flex; flex-direction: column; align-items: center; justify-content: center; margin-top: 30px">

     <div class="icon-container-last">
        <img src="assests/call.jpg" alt="">
    </div>

    <p style="margin: 20px; font-size: 25px">
        Looking for assistance? Reach out to our 24/7 call center for expert support. Call us at <strong style="color: #FF5733;">+94 011 2587 468</strong> for immediate help. Our physical locations at 3rd floor 400, D.R. Wijewardena Mawatha Colombo 10, Sri Lanka, have specific operating hours. We're here to serve you round the clock through our call center.
    </p>
</div>


<footer>
    <div style="background-color: #333333 ">
        <h1 style="background-color: #333333" >Contact Us</h1>
        <p>Email: contact@yourwebsite.com</p>
        <p>Phone: +123-456-7890</p>
    </div>

    <div class="social-icons">
        <h2>Follow Us</h2>

        <a href="#" title="Facebook"><i class="fab fa-facebook"></i></a>
        <a href="#" title="Twitter"><i class="fab fa-twitter"></i></a>
        <a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
    </div>
</footer>
</body>
</html>
