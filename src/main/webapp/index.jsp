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
        <h2 style="background-color:  #f5f5f5">CONSULTING</h2>
        <div class="icon" style="background-color:  #f5f5f5">
            <img src="assests/icon-consulting-light.png" alt="Description of the icon">
        </div>
        <p style="margin-top: 25px ; background-color:  #f5f5f5">You can simply Schedule Consultation <br> for FREE. Press bellow button<br>for schedule a time.</p>
        <div class="button-container" style="background-color:  #f5f5f5">
            <button>Consult Now</button>
        </div>
    </div>
</div>

<div class="section section4">
    <p class="paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend tortor eget justo lacinia, in euismod purus suscipit. Vivamus at condimentum massa.</p>

</div>

<div class="section section5">
    <p class="paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend tortor eget justo lacinia, in euismod purus suscipit. Vivamus at condimentum massa.</p>

</div>
</body>
</html>
