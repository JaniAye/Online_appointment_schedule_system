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


        .notification-icon, .user-Register Consultant-icon {
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


        .dashboard-ui, .Register Consultant-ui, .settings-ui {
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
        .crtAppointment-ui {
            height: 80vh;
            display: none;
            background-color: #F0F0F0;
            padding: 20px;
        }
        .appointment-ui {
            height: 80vh;
            display: none;
            background-color: #F0F0F0;
            padding: 20px;
        }
        .Register Consultant-ui {
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
        .crtAppointmentInnerDiv {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .crtInnerdiv1, .crtInnerdiv2 {
            width: 50%;
            height: 95%;
            padding: 10px;

            box-sizing: border-box;
            text-align: left;
        }

        #btnAppoimentContainer{
            display: flex;
            justify-content: end;

            width: 700px;
        }
        #btnAppoiment{
            font-size: 18px;
            text-decoration: none;
            margin-right: 30px;
            padding: 10px 20px;
            background-color: #000080;
            color: white;
            border-radius: 6px;
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
    <div class="user-Register Consultant-icon"></div>
</div>

<!-- Horizontal Navigation Panel -->
<div class="horizontal-panel">
    <ul>
        <li><a href="#" id="dashboard-button" class="active">Dashboard</a></li>
        <li><a href="#" id="crtAppointments-button" onclick="">Create Appointments</a></li>
        <li><a href="#" id="appointments-button" onclick="apmntTbl()">Appointments</a></li>
        <li><a href="#" id="reg-consultant">Register Consultant</a></li>
        <li><a href="#" id="settings-button">Settings</a></li>
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
                <input type="date"   class="styled-dropdown" style="width: 230px" >

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

            <div style="text-align: center;  ">
                <div id=tblApprov></div>
            </div>

        </div>

    </div>

    <div class="appointment-ui">
        <div class="dashContainer"  style=" margin-top: 2%">
            <div class="label-and-dropdown">
                <label  class="label" style="width: 100px;" >Consultant:  </label>
                <select  class="styled-dropdown" style="width: 200px">
                    <option value="all"  selected>--- Select ---</option>
                    <option value="all" >Test 1</option>
                    <option value="all" >Test 2</option>
                    <option value="all" >Test 3</option>
                    <option value="all" >Test 4</option>
                </select>

                <label  class="label" style="width: 130px; margin-left: 30px">Schedule Date :</label>
                <i class="far fa-calendar-alt"></i>
                <input type="date"  class="styled-dropdown" style="width: 200px" >

                <label  class="label" style="width: 100px; margin-left: 30px" >Time slot :  </label>
                <select  class="styled-dropdown" style="width: 200px">
                    <option value="all"  selected>--- Select ---</option>
                    <option value="all" >8.00 a.m. - 10.00 a.m</option>
                    <option value="all" >10.00 a.m. - 12.00 p.m</option>
                    <option value="all" >1.00 p.m. - 3.00 p.m</option>
                    <option value="all" >3.00 p.m. - 5.00 p.m</option>
                </select>

                <label  class="label" style="width: 80px; margin-left: 30px" >Status:  </label>
                <select  class="styled-dropdown" style="width: 200px">
                    <option value="all"  selected>--- Select ---</option>
                    <option value="all" >Approved</option>
                    <option value="all" >Completed</option>
                    <option value="all" >Canceled</option>
                    <option value="all" >Rejected</option>
                </select>


            </div>
            <div style="margin-top: 10px">
                <label  class="label" style="width: 100px;" >User ID :  </label>
                <input type="text"   class="inputFields" style="width: 200px" >
            </div>



        </div>
        <div class="innerTblDiv" >
            <div style="text-align: center;  ">
                <div id=tblappoiments></div>
            </div>

        </div>

    </div>
    <!-- Register Consultant UI -->

    <div class="crtAppointment-ui">
        <div class="crtAppointmentInnerDiv">
            <div class="crtInnerdiv1" style="height: 420px">

                <div class="appointmentHeadTxt" >
                    <h2 style="color: #000080; margin-top: 15px; margin-bottom: 40px">User Details </h2>
                </div>
                <div>
                    <div class="label-and-dropdown"  style=" margin-top: 2%">
                        <label class="label" style="width: 160px">Email or Phone  :  </label>
                        <input type="text"   class="inputFields" style="width: 230px" >
                    </div>
                </div>
                <div>
                    <div class="label-and-dropdown"  style=" margin-top: 2px">
                        <label class="label" style="width: 160px">User Name  :  </label>
                        <input type="text"   class="inputFields" style="width: 230px" >
                    </div>
                </div>
                <div>
                    <div class="label-and-dropdown"  style=" margin-top: 2px">
                        <label class="label" style="width: 160px">NIC  :  </label>
                        <input type="text"   class="inputFields" style="width: 230px" >
                    </div>
                </div>

                <div>
                    <div class="label-and-dropdown">
                        <label class="label" style="width: 160px">Date Of Birth :</label>
                        <i class="far fa-calendar-alt"></i>
                        <input type="date" id="sec-datepicker-input88"  class="styled-dropdown" style="width: 230px" >
                    </div>
                </div>

                <div>
                    <div class="label-and-dropdown">
                        <label  class="label" style="width: 160px">Consultant Name :</label>
                        <input type="text"   class="inputFields" style="width: 230px" >
                    </div>
                </div>




            </div>
            <div class="crtInnerdiv2">
                <div class="appointmentHeadTxt" >
                    <h2 style="color: #000080; margin-top: 15px; margin-bottom: 40px">Scheduling an appointment </h2>
                </div>
                <div>
                    <div class="label-and-dropdown"  style=" margin-top: 2%">
                        <label class="label" style="width: 160px">User Name  :  </label>
                        <input type="text"   class="inputFields" style="width: 230px" >
                    </div>
                </div>
                <div>
                    <div class="label-and-dropdown">
                        <label class="label" style="width: 160px">Job category :</label>
                        <select id="job-category2" class="styled-dropdown" style="width: 230px">
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
                </div>
                <div>
                    <div class="label-and-dropdown">
                        <label class="label" style="width: 160px">Schedule Date :</label>
                        <i class="far fa-calendar-alt"></i>
                        <input type="date" id="sec-datepicker-input8"  class="styled-dropdown" style="width: 230px" >
                    </div>
                </div>
                <div>
                    <div class="label-and-dropdown">
                        <label class="label" style="width: 160px">Time Slot :</label>
                        <i class="far fa-calendar-alt"></i>
                        <select id="" class="styled-dropdown" style="width: 230px">
                            <option value="all" selected>- Select -</option>
                            <option value="all" >8.00 a.m. - 10.00 a.m</option>
                            <option value="all" >10.00 a.m. - 12.00 p.m</option>
                            <option value="all" >1.00 p.m. - 3.00 p.m</option>
                            <option value="all" >3.00 p.m. - 5.00 p.m</option>
                        </select>
                    </div>
                </div>
                <div>
                    <div class="label-and-dropdown">
                        <label  class="label" style="width: 160px">Consultant Name :</label>
                        <input type="text"   class="inputFields" style="width: 230px" >
                    </div>
                </div>
                <div>
                    <div class="label-and-dropdown">
                        <label class="label" style="width: 160px">Status :</label>
                        <input type="text"   class="inputFields" style="width: 230px" >
                    </div>
                </div>
                <div id="btnAppoimentContainer">
                    <a href="login.jsp" id="btnAppoiment" >Schedule Appointment</a>
                </div>
            </div>
        </div>
    </div>

    <div class="Register Consultant-ui">
        <h2>Settings</h2>
        <p>Here you can customize your settings.</p>

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
    const Register ConsultantButton = document.getElementById('reg-consultant');
    const settingsButton = document.getElementById('settings-button');
    const appointmentsButton = document.getElementById('appointments-button');
    const crtAppointmentsButton = document.getElementById('crtAppointments-button');

    const dashboardUI = document.querySelector('.dashboard-ui');
    const Register ConsultantUI = document.querySelector('.Register Consultant-ui');
    const settingsUI = document.querySelector('.settings-ui');
    const appointmentUI = document.querySelector('.appointment-ui');
    const crtAppointmentUI = document.querySelector('.crtAppointment-ui');


    dashboardButton.addEventListener('click', () => {
        dashboardUI.style.display = 'block';
        appointmentUI.style.display = 'none';
        Register ConsultantUI.style.display = 'none';
        settingsUI.style.display = 'none';
        crtAppointmentUI.style.display = 'none';

        dashboardButton.classList.add('active');
        appointmentsButton.classList.remove('active');
        crtAppointmentsButton.classList.remove('active');
        Register ConsultantButton.classList.remove('active');
        settingsButton.classList.remove('active');
    });
    crtAppointmentsButton.addEventListener('click', () => {
        dashboardUI.style.display = 'none';
        appointmentUI.style.display = 'none';
        crtAppointmentUI.style.display = 'block';
        Register ConsultantUI.style.display = 'none';
        settingsUI.style.display = 'none';

        // Update active button
        dashboardButton.classList.remove('active');
        Register ConsultantButton.classList.remove('active');
        appointmentsButton.classList.remove('active');
        crtAppointmentsButton.classList.add('active');
        settingsButton.classList.remove('active');
    });

    appointmentsButton.addEventListener('click', () => {
        dashboardUI.style.display = 'none';
        appointmentUI.style.display = 'block';
        crtAppointmentUI.style.display = 'none';
        Register ConsultantUI.style.display = 'none';
        settingsUI.style.display = 'none';

        // Update active button
        dashboardButton.classList.remove('active');
        Register ConsultantButton.classList.remove('active');
        crtAppointmentsButton.classList.remove('active');
        appointmentsButton.classList.add('active');
        settingsButton.classList.remove('active');
    });

    Register ConsultantButton.addEventListener('click', () => {
        dashboardUI.style.display = 'none';
        appointmentUI.style.display = 'none';
        crtAppointmentUI.style.display = 'none';
        Register ConsultantUI.style.display = 'block';
        settingsUI.style.display = 'none';

        // Update active button
        dashboardButton.classList.remove('active');
        appointmentsButton.classList.remove('active');
        crtAppointmentsButton.classList.remove('active');
        Register ConsultantButton.classList.add('active');
        settingsButton.classList.remove('active');
    });

    settingsButton.addEventListener('click', () => {
        dashboardUI.style.display = 'none';
        appointmentUI.style.display = 'none';
        crtAppointmentUI.style.display = 'none';
        Register ConsultantUI.style.display = 'none';
        settingsUI.style.display = 'block';

        // Update active button
        dashboardButton.classList.remove('active');
        appointmentsButton.classList.remove('active');
        crtAppointmentsButton.classList.remove('active');
        Register ConsultantButton.classList.remove('active');
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

       var vec_pos=0;
       var m_size=4;
       var m_row=1;
        if (false) {
           // document.Form1.Hid_rows.value=lineno;
            //alert('No Pending Deals for Approval Level ');
        }
        else{

          //  document.Form1.Hid_rows.value=lineno;

            m_writedata ='<BR><TABLE WIDTH="1350"  class="table table-sm table-bordered table-hover  ng-w-j-grid">'+
                '<TR><td colspan="15" ALIGN="Center" class="bg-primary text-white"><B>Pending Appointment </B></td></TR>'+
                '<TR class="bg-primary text-white">'+
                '<TD WIDTH="100" ALIGN="Center">User Name</TD>'+
                '<TD WIDTH="10" ALIGN="Center">Age</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Appoinment Date</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Time slot</TD>'+
                '<TD WIDTH="50" ALIGN="Center">Option</TD>'+
                '<TD WIDTH="50" ALIGN="Center">Option</TD>'+
                '</TR>' +
              //  m_row+
                '</TABLE>';
            tblApprov.innerHTML=m_writedata;
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
                '<TD WIDTH="100" ALIGN="Center">Consultants</TD>'+
                '<TD WIDTH="100" ALIGN="Center">User Name</TD>'+
                '<TD WIDTH="10" ALIGN="Center">Age</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Appoinment Date</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Time slot</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Status</TD>'+
                '<TD WIDTH="100" ALIGN="Center">Discription</TD>'+
               // '<TD WIDTH="50" ALIGN="Center">Option</TD>'+
                '</TR>' +
                //  m_row+
                '</TABLE>';
            tblappoiments.innerHTML=m_writedata;
        }
    }
</script>
</body>
</html>


