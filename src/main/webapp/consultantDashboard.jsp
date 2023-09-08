<%--
  Created by IntelliJ IDEA.
  User: janid
  Date: 02/09/2023
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
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
            display: flex;
            justify-content: center;
            align-items: center;
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
        #tblApprov{
            text-align: center;
            width: 900px;
        }
        .innerTblDiv{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .dashContainer {
            margin-left: 3%;
            display: inline-block;
            margin-bottom: 10px;
        }
        .inputFields {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
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
        .label {
            font-weight: bold;
        }
        #tblappoiments{
            text-align: center;
            width: 70vw;
        }

    </style>

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
        <li><a href="#" id="appointments-button" onclick="apmntTbl()">Appointments</a></li>
        <li><a href="#" id="profile-button">Profile</a></li>
        <li><a href="#" id="settings-button">Sign Out</a></li>
    </ul>
</div>

<!-- Content Area -->
<div class="content">
    <!-- Dashboard UI -->
    <div class="dashboard-ui" style="display: block;" >
        <div class="dashContainer"  style=" margin-top: 2%">
            <div class="label-and-dropdown">
                <label  class="label" style="width: 160px">Schedule Date :</label>
                <i class="far fa-calendar-alt"></i>
                <input type="date" id="sec-datepicker-input8"  class="styled-dropdown" style="width: 230px" >

                <label  class="label" style="width: 110px; margin-left: 100px" >Time slot :  </label>
                <select id="job-category3" class="styled-dropdown" style="width: 230px">
                    <option value="all"  selected>--- Select ---</option>
                    <option value="all" >8.00 a.m. - 10.00 a.m</option>
                    <option value="all" >10.00 a.m. - 12.00 p.m</option>
                    <option value="all" >1.00 p.m. - 3.00 p.m</option>
                    <option value="all" >3.00 p.m. - 5.00 p.m</option>
                </select>
            </div>


        </div>
        <div class="innerTblDiv" >

            <div style="text-align: center;">
                <div id=tblApprov></div>
            </div>

        </div>

    </div>

    <div class="appointment-ui">
        <div class="dashContainer"  style=" margin-top: 2%">
            <div class="label-and-dropdown">
                <label  class="label" style="width: 160px">Schedule Date :</label>
                <i class="far fa-calendar-alt"></i>
                <input type="date"  class="styled-dropdown" style="width: 230px" >

                <label  class="label" style="width: 110px; margin-left: 100px" >Time slot :  </label>
                <select  class="styled-dropdown" style="width: 230px">
                    <option value="all"  selected>--- Select ---</option>
                    <option value="all" >8.00 a.m. - 10.00 a.m</option>
                    <option value="all" >10.00 a.m. - 12.00 p.m</option>
                    <option value="all" >1.00 p.m. - 3.00 p.m</option>
                    <option value="all" >3.00 p.m. - 5.00 p.m</option>
                </select>

                <label  class="label" style="width: 110px; margin-left: 100px" >Status:  </label>
                <select  class="styled-dropdown" style="width: 230px">
                    <option value="all"  selected>--- Select ---</option>
                    <option value="all" >Approved</option>
                    <option value="all" >Completed</option>
                    <option value="all" >Canceled</option>
                    <option value="all" >Rejected</option>
                </select>
            </div>


        </div>
        <div class="innerTblDiv" >
            <div style="text-align: center;  ">
                <div id=tblappoiments></div>
            </div>

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

<!-- JavaScript for navigation -->
<!-- JavaScript for navigation -->
<script>
    const dashboardButton = document.getElementById('dashboard-button');
    const profileButton = document.getElementById('profile-button');
    const settingsButton = document.getElementById('settings-button');
    const appointmentsButton = document.getElementById('appointments-button');

    const dashboardUI = document.querySelector('.dashboard-ui');
    const profileUI = document.querySelector('.profile-ui');
    const settingsUI = document.querySelector('.settings-ui');
    const appointmentUI = document.querySelector('.appointment-ui');


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
        window.location.href = "login.jsp";
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
        add_data();
    }

    function add_data() {
        m_row="";
        lineno=1;
        $.ajax({
            url: "Appointment",
            type: "GET",
            data: {
                getType :  "GetAppointments"
            },
            success: function(response) {

                if (response.result === "empty"){
                    alert("Please provide all details...");
                }
                if (response.result === "fail"){
                    alert("Request unSuccessful...");
                }
                if (response.result === "success"){
                    var ageUser="";

                    for (var i = 0; i < response.appointmentList.length; i++) {
                        var appointment = response.appointmentList[i];

                        $.ajax({
                            url: "User",
                            type: "GET",
                            data: {
                                userName:  appointment.user_name,
                                getType :  "getFromUn"
                            },
                            success: function(response) {

                                if (response.result === "empty"){

                                }
                                if (response.result === "fail"){

                                }
                                if (response.result === "success"){
                                    ageUser=response.Age;
                                }
                            },
                            error: function() {
                                //showAlert("An error occurred while processing the request.");
                            }
                        });


                        m_row=m_row+'<TR>';
                        m_row=m_row+'<TD ALIGN="Center">'+appointment.user_name+'</TD>';
                        m_row=m_row+'<TD ALIGN="Center" STYLE="{color: black;  }">'+ageUser+'<INPUT TYPE="Hidden" NAME="DEALER'+lineno+'" VALUE="'+appointment.appid+'"></TD>';
                        m_row=m_row+'<TD ALIGN="Center" STYLE="{color: black;  }">'+appointment.schedule_date+'<INPUT TYPE="Hidden" NAME="DEALNO'+lineno+'" VALUE="'+appointment.schedule_date+'"></TD>';
                        m_row=m_row+'<TD ALIGN="Center" STYLE="{color: black;  }">'+ appointment.time +'<INPUT TYPE="Hidden" NAME="DEALNO'+ appointment.schedule_date+'" VALUE="'+ appointment.time+'"></TD>';
                        m_row=m_row+'<TD ALIGN="Center" STYLE="{color: black;  }">'+ appointment.time +'<INPUT TYPE="Hidden" NAME="DEALNO'+ appointment.time +'" VALUE="'+ appointment.time+'"></TD>';
                        m_row=m_row+'<TD ALIGN="Center" STYLE="{color: black;  }">'+ appointment.time +'<INPUT TYPE="Hidden" NAME="DEALNO'+ appointment.time+'" VALUE="'+ appointment.time+'"></TD>';

                        lineno++;

                    }

                    m_writedata ='<BR><TABLE WIDTH="1550"  class="table table-sm table-bordered table-hover  ng-w-j-grid">'+
                        '<TR><td colspan="15" ALIGN="Center" class="bg-primary text-white"><B>Pending Appointment </B></td></TR>'+
                        '<TR class="bg-primary text-white">'+
                        '<TD WIDTH="200" ALIGN="Center">User Name</TD>'+
                        '<TD WIDTH="80" ALIGN="Center">Age</TD>'+
                        '<TD WIDTH="200" ALIGN="Center">Appoinment Date</TD>'+
                        '<TD WIDTH="200" ALIGN="Center">Time slot</TD>'+
                        '<TD WIDTH="80" ALIGN="Center">Option</TD>'+
                        '<TD WIDTH="80" ALIGN="Center">Option</TD>'+
                        '</TR>' +
                        m_row+
                    '</TABLE>';
                    tblApprov.innerHTML=m_writedata;

                 //   alert("There are no available consultants at this moment..." +  response.appointmentList);

                }
            },
            error: function() {
                //showAlert("An error occurred while processing the request.");
            }
        });
       var vec_pos=0;
       var m_size=4;
       var m_row=1;
        if (false) {
           // document.Form1.Hid_rows.value=lineno;
            //alert('No Pending Deals for Approval Level ');
        }
        else{

          //  document.Form1.Hid_rows.value=lineno;


        }
    }

    function apmntTbl() {
        var vec_pos=0;
        var m_size=4;
        var m_row=1;
        if (false) {
            // document.Form1.Hid_rows.value=lineno;
            //alert('No Pending Deals for Approval Level ');
        }
        else{

            //  document.Form1.Hid_rows.value=lineno;

            m_writedata ='<BR><TABLE WIDTH="1350" class="table table-sm table-bordered table-hover  ng-w-j-grid">'+
                '<TR><td colspan="15" ALIGN="Center" class="bg-primary text-white"><B>All Appointment </B></td></TR>'+
                '<TR class="bg-primary text-white">'+
                '<TD WIDTH="100" ALIGN="Center">User Name</TD>'+
                '<TD WIDTH="10" ALIGN="Center">Age</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Appoinment Date</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Time slot</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Status</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Discription</TD>'+
                '<TD WIDTH="50" ALIGN="Center">Option</TD>'+
                '</TR>' +
                //  m_row+
                '</TABLE>';
            tblappoiments.innerHTML=m_writedata;
        }
    }
</script>
</body>
</html>


