<%@ Page Title="" Language="C#" MasterPageFile="~/General Module/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="GeneralHome.aspx.cs" Inherits="General_Module_GeneralHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        // Add smooth scrolling to all links
        $("a").on('click', function (event) {

            // Make sure this.hash has a value before overriding default behavior
            if (this.hash !== "") {
                // Prevent default anchor click behavior
                event.preventDefault();

                // Store hash
                var hash = this.hash;

                // Using jQuery's animate() method to add smooth page scroll
                // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                $('html, body').animate({
                    scrollTop: $(hash).offset().top
                }, 800, function () {

                    // Add hash (#) to URL when done scrolling (default click behavior)
                    window.location.hash = hash;
                });
            } // End if
        });
    });
</script>

        <style  type="text/css">
            .top_img {
             animation-duration:1s;

                   transition:all ease .3s;
             animation-delay: .5ms;
	  animation-iteration-count: 1;
      position:relative;
      opacity:.7;
                   }
                .top_img:hover {
             opacity:1;
                    animation-name:anm_1;
                           transform: scale(1.1);
                }
            @keyframes anm_1 {
                10% {
                    top: -5px;
                }
                50% {
                    top: 9px;
                }
                90% {
                    top: -3px;
                }
                100% {
                    top: 0px;
                }
            }

                                  
        </style> 


    </head>
    <body id="top">

        <div class="wrapper col2">
            <div id="gallery">
                <%--<ul>
                    <li class="placeholder" style="background-image: url(../images/doctors1.jpg);">Holder</li>
                    <li><a class="swap" style="background-image: url(../images/department1_209105.jpg); width: 290px; height: 105px;" href="#gallery"><strong>Services</strong><span><img src="../images/department1.jpg" alt="" style="width: 640px; height: 349px;" /></span></a></li>
                    <li><a class="swap" style="background-image: url(../images/1_209105.jpg);" href="#gallery"><strong>Products</strong><span><img src="../images/1.jpg" alt="" style="width: 640px; height: 349px;" /></span></a></li>
                    <li class="last"><a class="swap" style="background-image: url(../images/lab2_209105.jpg);" href="#gallery"><strong>Company</strong><span><img src="../images/lab2.jpg" alt="" style="width: 640px; height: 349px;" /></span></a></li>
                </ul>--%>
                <div id="slider">
      <div class="slides">
        <div class="slider">
          <div class="legend"></div>
          <div class="content">
            <div class="content-txt">
              <span class="sp_sp1"><p>Free To Book an Appointment</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="patient_verification_booking.aspx"><input type="button" value="Book Now" class="sp_bt_1"/></a></span>
              <h2>To provide affodable Healthcare to patients by incorporating improvement in its day-to-day schedule.</h2>
            </div>
          </div>
          <div class="image">
            <img src="../images/hospital (1).jpg">
          </div>
        </div>
        <div class="slider">
          <div class="legend"></div>
          <div class="content">
            <div class="content-txt">
              <h1>Feel Free To Book an Appointment</h1>
              <h2>To provide affodable Healthcare to patients by incorporating improvement in its day-to-day schedule.</h2>
            </div>
          </div>
          <div class="image">
            <img src="../images/Website pics6.jpg">
          </div>
        </div>
        <div class="slider">
          <div class="legend"></div>
          <div class="content">
            <div class="content-txt">
              <h1>Feel Free To Book an Appointment</h1>
              <h2>To provide affodable Healthcare to patients by incorporating improvement in its day-to-day schedule.</h2>
            </div>
          </div>
          <div class="image">
            <img src="../images/medical_review_monitoring.jpg">
          </div>
        </div>
        <div class="slider">
          <div class="legend"></div>
          <div class="content">
            <div class="content-txt">
              <h1>Feel Free To Book an Appointment</h1>
              <h2>To provide affodable Healthcare to patients by incorporating improvement in its day-to-day schedule.</h2>
            </div>
          </div>
          <div class="image">
            <a href="#"><img src="../images/1.jpg" /></a>
          </div>
        </div>
      </div>
      <div class="switch">
        <ul>
          <li>
            <div class="on"></div>
          </li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
    </div>

                <div class="clear"></div>
            </div>
              
                
    

  
            <%-- ************************ --%>
        </div>

        <%--                    <div class="dashboard"><p class="dashborad_heading">Total no of Appointments:</p><br /><p class="dashborad_no">256305</p></div>--%>
        <div class="wrapper col4" style="display: inline-block;">
            <div id="container">
                <div id="dashboard_content">
                    <div class="headingdashboard" id="headingdashboard">DASHBOARD <span style="float:right;margin-right:20px;position:relative;left:80px;"><a href="#top" style="background-color:transparent;"><img src="../images/up-arrow-6.png " class="top_img"  style="width:40px;height:40px; opacity:.8;" /></a></span></div>
                    <div class=" dc dc_at_1">
                        <div class="d1">
                            <img src="../images/health.jpg" />
                            <p class="dashborad_heading">Total Online Appointments:</p>
                            <br />
                            <div class="dbc">
                                <asp:Label ID="lbl_total_no_of_appointments" runat="server" Text="total_online_appo" CssClass="dashboard_no"></asp:Label>
                            </div>
                        </div>

                        <div class="d1">
                            <img src="../images/clinic.jpg" />
                            <p class="dashborad_heading">Today's Appointments</p>
                            <br />
                            <div class="dbc">
                                <asp:Label ID="lbl_todays_appointment" runat="server" Text="total_online_appo" CssClass="dashboard_no"></asp:Label>
                            </div>
                        </div>

                    </div>

                    <div class="dc dc_at_2">
                         <div class="d2">
                             <img src="../images/doctor1.jpg" />
                              <p class="dashborad_heading">No Of Hospitals</p>
                            <br />
                            <div class="dbc">
                             <asp:Label ID="lbl_total_no_of_hospital" runat="server" Text="total_hospitals" CssClass="dashboard_no"></asp:Label>
                            </div>
                          </div>
                        <div class="d2">
                            <img src="../images/hospital-departments.jpg" />
                            <p class="dashborad_heading">No Of Departments</p>
                            <br />
                            <div class="dbc">
                            <asp:Label ID="lbl_total_no_of_departments" runat="server" Text="total_depart" CssClass="dashboard_no"></asp:Label>
                            </div>
                        </div>

                        <div class="d2">
                            <img src="../images/medical_review_monitoring.jpg" />
                            <p class="dashborad_heading">No Of Doctors</p>
                            <br />
                            <div class="dbc">
                            <asp:Label ID="lbl_total_no_of_doctors" runat="server" Text="total_doctors" CssClass="dashboard_no"></asp:Label>
                            </div>
                        </div>
                    
                         <br />
                    
                    </div>
                    <div class="graph">
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="957px" BackColor="WhiteSmoke" BorderlineColor="">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="months" YValueMembers="appointments" ChartType="FastLine" YValuesPerPoint="6"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PABSConnectionString %>" SelectCommand="SELECT * FROM [total_appointments]"></asp:SqlDataSource>
                    </div>
                </div>

            </div>
        </div>
    
    </body>
    </html>


</asp:Content>

