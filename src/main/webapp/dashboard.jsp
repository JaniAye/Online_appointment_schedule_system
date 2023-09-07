<%--
  Created by IntelliJ IDEA.
  User: janid
  Date: 02/09/2023
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%
    String userName = (String) session.getAttribute("userName");

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        body {
            font-family: Arial, sans-serif;
        }


        .top-panel {
            display: flex;
            justify-content: flex-end;
            padding: 10px;
            background-color: #000080;
        }


        .notification-icon, .user-profile-icon {
            width: 30px;
            height: 30px;
            margin-right: 10px;
            background-color: white;
            border-radius: 50%;
        }


        .horizontal-panel {
            background-color: #333;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
        }


        .horizontal-panel ul {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .horizontal-panel ul li a {
            text-decoration: none;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }


        .content {
            padding: 20px;
        }


        .horizontal-panel ul li a.active {
            background-color: #000080;
        }


        .dashboard-ui, .profile-ui, .settings-ui {
            display: none;
        }


        .dashboard-ui {
            height: 80vh;
            background-color: #F0F0F0;
            padding: 20px;
        }

        .appointment-ui {
            height: 80vh;
            display: none;
            background-color: #F0F0F0;
            padding: 20px;
        }
        .profile-ui {
            background-color: #E0E0E0;
            padding: 20px;
        }

        .settings-ui {
            background-color: #D0D0D0;
            padding: 20px;
        }
        .styled-dropdown {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            cursor: pointer;
        }
        .styled-dropdown option:checked {
            background-color: #007bff;
            color: #fff;
        }

        .label-and-dropdown {
            margin-left: 7%;
            display: inline-block;
            margin-bottom: 10px;
        }
        .btn_schedule  {
            margin-left: 7%;
            display: inline-block;
            margin-bottom: 10px;
        }

        #btnAppoiment{
            font-size: 18px;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #000080;
            color: white;
            border-radius: 6px;
        }
        #btnAppoimentContainer{

            display: flex;
            justify-content: space-evenly;
            margin-left: 30px ;
            width: 700px;
        }
        .label {
            font-weight: bold;
        }

        .inputFields {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
        }
        .button-container {
            margin-top: auto;
        }

        .appointmentHeadTxt{
            margin-left: 7%;
        }

    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</head>
<body onload="onlod()">
<!-- Top Vertical Panel -->
<div class="top-panel">
    <div class="notification-icon"></div>
    <div class="user-profile-icon"></div>
</div>

<!-- Horizontal Navigation Panel -->
<div class="horizontal-panel">
    <ul>
        <li><a href="#" id="dashboard-button" class="active">Dashboard</a></li>
        <li><a href="#" id="appointments-button">Appointments</a></li>
        <li><a href="#" id="profile-button">Profile</a></li>
        <li><a href="#" id="settings-button">Sign Out</a></li>
    </ul>
</div>

<!-- Content Area -->
<div class="content">
    <!-- Dashboard UI -->
    <div class="dashboard-ui" style="display: block;" >

        <div class="label-and-dropdown">
            <label for="job-category" class="label">Select Job Category:</label>
            <select id="job-category" class="styled-dropdown">
                <option value="all" selected>ALL</option>
                <option value="it">Information Technology</option>
                <option value="healthcare">Healthcare</option>
                <option value="engineering">Engineering</option>
                <option value="finance">Finance and Accounting</option>
                <option value="sales">Sales and Marketing</option>
                <option value="edu">Education</option>
                <option value="cuss_serv">Customer Service</option>
                <option value="hr">Human Resources</option>
                <option value="manufAndprod">Manufacturing and Production</option>
                <option value="retail">Retail</option>
                <option value="hospitality">Hospitality and Tourism</option>
                <option value="art">Art and Design</option>
                <option value="legal">Legal</option>
                <option value="science">Science</option>
                <option value="gvt">Government and Public Service</option>
                <option value="cons">Construction and Trades</option>
                <option value="media">Media and Entertainment</option>
            </select>
        </div>
        <div class="label-and-dropdown">
            <label for="job-category" class="label">Select Date:</label>
                <i class="far fa-calendar-alt"></i>
                <input type="date" id="sec-datepicker-input"  class="styled-dropdown" >
         </div>
        <div class="label-and-dropdown">
            <label for="job-category" class="label">Select time slot</label>
            <select id="job-category3" class="styled-dropdown">
                <option value="all"  selected>--- Select ---</option>
                <option value="all" >8.00 a.m. - 10.00 a.m</option>
                <option value="all" >10.00 a.m. - 12.00 p.m</option>
                <option value="all" >1.00 p.m. - 3.00 p.m</option>
                <option value="all" >3.00 p.m. - 5.00 p.m</option>
            </select>
        </div>
    </div>
    <div class="appointment-ui">
        <div class="appointmentHeadTxt" >
            <h2 style="color: #000080">Scheduling an appointment </h2>
        </div>
        <div>
            <div class="label-and-dropdown"  style=" margin-top: 2%">
                <label for="job-category" class="label" style="width: 160px">User Name  :  </label>
                <input type="text" id="txtUn"   class="inputFields" style="width: 230px" value="<%= userName %>" readonly>
            </div>
        </div>
        <div>
            <div class="label-and-dropdown">
                <label for="job-category" class="label" style="width: 160px">Job category :</label>
                <select id="job-category2" class="styled-dropdown" style="width: 230px">
                    <option value="all" selected>-- Select --</option>
                    <option value="it">Information Technology</option>
                    <option value="healthcare">Healthcare</option>
                    <option value="engineering">Engineering</option>
                    <option value="finance">Finance and Accounting</option>
                    <option value="sales">Sales and Marketing</option>
                    <option value="edu">Education</option>
                    <option value="cuss_serv">Customer Service</option>
                    <option value="hr">Human Resources</option>
                    <option value="manufAndprod">Manufacturing and Production</option>
                    <option value="retail">Retail</option>
                    <option value="hospitality">Hospitality and Tourism</option>
                    <option value="art">Art and Design</option>
                    <option value="legal">Legal</option>
                    <option value="science">Science</option>
                    <option value="gvt">Government and Public Service</option>
                    <option value="cons">Construction and Trades</option>
                    <option value="media">Media and Entertainment</option>
                </select>
            </div>
        </div>
        <div>
            <div class="label-and-dropdown">
                <label for="job-category" class="label" style="width: 160px">Schedule Date :</label>
                <i class="far fa-calendar-alt"></i>
                <input type="date" id="sec-datepicker-input8" id="txtSheduleDt" class="styled-dropdown" style="width: 230px"
                       min="<%= java.time.LocalDate.now().plusDays(3) %>" max="<%= java.time.LocalDate.now().plusDays(365) %>"
                       oninput="validateDateInput(this)">
            </div>
        </div>
        <div>
            <div class="label-and-dropdown">
                <label for="job-category" class="label" style="width: 160px">Time Slot :</label>
                <i class="far fa-calendar-alt"></i>
                <select id="txtSlot" class="styled-dropdown" style="width: 230px" onclick="changeStatus()">
                    <option value="all" selected>- Select -</option>
                    <option value="val1" >8.00 a.m. - 10.00 a.m</option>
                    <option value="val2" >10.00 a.m. - 12.00 p.m</option>
                    <option value="val3" >1.00 p.m. - 3.00 p.m</option>
                    <option value="val4" >3.00 p.m. - 5.00 p.m</option>
                </select>
            </div>
        </div>
        <div>
            <div class="label-and-dropdown">
                <label for="job-category" class="label" style="width: 160px">Consultant Name :</label>
                <input type="text"  id="txtConsultName" class="inputFields" style="width: 230px" readonly>
            </div>
        </div>
        <div>
            <div class="label-and-dropdown">
                <label for="job-category" class="label" style="width: 160px">Status :</label>
                <input type="text" id="txtStatus"  class="inputFields" style="width: 230px" readonly>
            </div>
        </div>
        <div id="btnAppoimentContainer">
            <button  id="btnAppoiment" onclick="createAppointment()" >Schedule Appointment</button>
        </div>

    </div>


    <!-- Profile UI -->
    <div class="profile-ui">
        <h2>Profile</h2>
        <p>This is the Profile section content.</p>
    </div>

    <!-- Settings UI -->
    <div class="settings-ui">
        <h2>Settings</h2>
        <p>Here you can customize your settings.</p>
    </div>
</div>

<script>
    const dashboardButton = document.getElementById('dashboard-button');
    const profileButton = document.getElementById('profile-button');
    const settingsButton = document.getElementById('settings-button');
    const appointmentsButton = document.getElementById('appointments-button');

    const dashboardUI = document.querySelector('.dashboard-ui');
    const profileUI = document.querySelector('.profile-ui');
    const settingsUI = document.querySelector('.settings-ui');
    const appointmentUI = document.querySelector('.appointment-ui');
    window.history.pushState(null, null, "dashboard.jsp");

    function changeStatus(){

        document.getElementById("txtStatus").value="Pending";
        $.ajax({
            url: "User",
            type: "GET",
            data: {
                category:  document.getElementById("job-category2").value,
                date:  document.getElementById("sec-datepicker-input8").value,
                slot :  document.getElementById("txtSlot").value,
                getType :  "Consultant"
            },
            success: function(response) {

                if (response.result === "empty"){
                    alert("Please provide all details...");
                }
                if (response.result === "fail"){
                    alert("Request unSuccessful...");
                }
                if (response.result === "success"){
                    const userName = response.userNameCons;
                    if(userName===''){
                        alert("There are no available consultants at this moment...");
                    }
                    document.getElementById("txtConsultName").value = userName;
                }
            },
            error: function() {
                //showAlert("An error occurred while processing the request.");
            }
        });

    }
    function validateDateInput(input) {
        const selectedDate = new Date(input.value);
        const minDate = new Date(input.min);
        const maxDate = new Date(input.max);

        if (selectedDate < minDate || selectedDate > maxDate) {
            // Reset the input field
            input.value = '';
            alert('Please select a date that is at least 3 days from the current date.');

        }
    }

    function createAppointment(){
        var cons=document.getElementById("txtConsultName").value ;
        if(cons===''){
            alert("There are no available consultants at this moment...");
           document.getElementById("txtUn").value='<%= userName %>';
               document.getElementById("job-category2").value = 'all';
               document.getElementById("sec-datepicker-input8").value='';
            document.getElementById("txtSlot").value='all';
              document.getElementById("txtConsultName").value='';
                document.getElementById("txtStatus").value='';


        }else{
            $.ajax({
                url: "Appointment",
                type: "POST",
                data: {
                    userName:  document.getElementById("txtUn").value,
                    category:  document.getElementById("job-category2").value,
                    date:  document.getElementById("sec-datepicker-input8").value,
                    slot :  document.getElementById("txtSlot").value,
                    consult: document.getElementById("txtConsultName").value,
                    status: document.getElementById("txtStatus").value
                },
                success: function(response) {

                    if (response.result === "empty"){
                        alert("Please provide all details...");
                    }
                    if (response.result === "fail"){
                        alert("Request unSuccessful...");
                    }
                    if (response.result === "success"){
                        alert("Appointment Requested Successfully...");
                        document.getElementById("txtUn").value='<%= userName %>';
                        document.getElementById("job-category2").value = 'all';
                        document.getElementById("sec-datepicker-input8").value='';
                        document.getElementById("txtSlot").value='all';
                        document.getElementById("txtConsultName").value='';
                        document.getElementById("txtStatus").value='';
                    }
                },
                error: function() {
                    //showAlert("An error occurred while processing the request.");
                }
            });

        }



    }

    dashboardButton.addEventListener('click', () => {
        dashboardUI.style.display = 'block';
        appointmentUI.style.display = 'none';
        profileUI.style.display = 'none';
        settingsUI.style.display = 'none';

        // Update active button
        dashboardButton.classList.add('active');
        appointmentsButton.classList.remove('active');
        profileButton.classList.remove('active');
        settingsButton.classList.remove('active');
    });

    appointmentsButton.addEventListener('click', () => {
        dashboardUI.style.display = 'none';
        appointmentUI.style.display = 'block';
        profileUI.style.display = 'none';
        settingsUI.style.display = 'none';

        // Update active button
        dashboardButton.classList.remove('active');
        profileButton.classList.remove('active');
        appointmentsButton.classList.add('active');
        settingsButton.classList.remove('active');
    });

    profileButton.addEventListener('click', () => {
        dashboardUI.style.display = 'none';
        appointmentUI.style.display = 'none';
        profileUI.style.display = 'block';
        settingsUI.style.display = 'none';

        // Update active button
        dashboardButton.classList.remove('active');
        appointmentsButton.classList.remove('active');
        profileButton.classList.add('active');
        settingsButton.classList.remove('active');
    });

    settingsButton.addEventListener('click', () => {
        dashboardUI.style.display = 'none';
        appointmentUI.style.display = 'none';
        profileUI.style.display = 'none';
        settingsUI.style.display = 'block';

        // Update active button
        dashboardButton.classList.remove('active');
        appointmentsButton.classList.remove('active');
        profileButton.classList.remove('active');
        settingsButton.classList.add('active');
    });

    // Set the dashboard button as active by default
    dashboardButton.classList.add('active');

    var $j = jQuery.noConflict(); // Create a new reference to jQuery

    $j(document).ready(function() {
        $j('#datepicker').datepicker({
            format: 'yyyy-mm-dd', // You can change the date format here
            autoclose: true
        });
    });

    function onlod(){
        appointmentsButton.textContent="Create Appointment";
    }
</script>
</body>
</html>


