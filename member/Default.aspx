<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" MasterPageFile="~/UserPanel/Member/MasterPage.master"
    Inherits="UserPanel_Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <script language="javascript" type="text/javascript">


         jQuery.fn.dataTableExt.oSort['string-case-asc'] = function (x, y) {
             return ((x < y) ? -1 : ((x > y) ? 1 : 0));
         };

         jQuery.fn.dataTableExt.oSort['string-case-desc'] = function (x, y) {
             return ((x < y) ? 1 : ((x > y) ? -1 : 0));
         };

         $(document).ready(function () {
             hscroll = "useMinHeight";
             $('#tblDataTables').dataTable({
                 "bJQueryUI": true,
                 "bProcessing": false,
                 "sPaginationType": "full_numbers",
                 "aaSorting": [[0, 'asc']],
                 "aoColumnDefs": [
                         { "sType": 'string-case', "aTargets": [4] }
                 ],
                 "aoColumns": [

                                 null, null,
                                  null, null,
                                  null


                 ]
             });
         });


    </script>
    <script type="text/javascript">
        function ValidateForm() {
            var amount = $('#ctl00_ContentPlaceHolder1_txtamount').val();
            var lblmsg = $('#ctl00_ContentPlaceHolder1_lblMsg');
            if (amount == "") {
                lblmsg.text("Please Enter Amount.");
                return false;
            }
            var strconfirm = confirm("Are you sure you want to request fund  ?");
            if (strconfirm == true) {
                return true;
            }
            else
                return false;
        }
        function copyToClipboard(element) {
            //  alert('hi');
            var $temp = $("<input>");
            $("body").append($temp);
            $temp.val($(element).text()).select();
            document.execCommand("copy");
            $temp.remove();
        }
    </script>
  
    <style type="text/css">
        .grv {
            width: 19pc;
    height: 38px;
    text-align: center;
        }
        .link1
        {
            font-size: x-large;
            color: Blue;
            padding-left: 2%;
            padding-top: 10px;
        }

        .bg-light .dk
        {
            background-color: #19a9d5;
        }

        .overview ul.overview-inner li h4
        {
            float: left;
            width: 70%;
            color: #323a45;
            font-size: 13px;
            margin: 0;
        }

        .padder-v
        {
            padding-top: 0px;
            padding-bottom: 0px;
        }

        .list-group-lg .list-group-item
        {
            padding-top: 6px;
        }

        .region-statitics-right
        {
            min-height: 310px;
        }

        .overview ul.overview-inner li
        {
            list-style: none;
            padding: 7px 10px;
            border-bottom: 1px solid #EEE;
        }


        a
        {
            color: inherit;
            text-decoration: none;
            cursor: pointer;
        }

        .overview ul.overview-inner li .overview-btn
        {
            float: left;
            width: 30%;
            text-align: right;
        }

        .bg1
        {
            background: linear-gradient(to right, #40a5e5, #196391);
            padding: 10px;
            color: #fff;
            margin-bottom: 20px;
			border-radius:20px;
        }
		.bgy
		{
			background:linear-gradient(to right, #f2e010, #d2a802) ! important;
		}
		.bgo
		{
			background:linear-gradient(to right, #f77d00, #bc2b09) ! important;
		}
		.bgg
		{
			background:linear-gradient(to right, #11d202, #0c8603) ! important;
		}

            .bg1 p
            {
                font-size: 30px;
            }
			#clockdiv1 {
    font-family: sans-serif;
    color: #fff;
    display: inline-block;
    font-weight: 100;
    text-align: center;
    font-size: 20px;
}
#clockdiv > div {
    padding: 5px;
    border-radius: 3px;
    background: #1D6999;
    display: inline-block;
}
#clockdiv div > span {
    padding: 0px 10px;
    border-radius: 3px;
    background: #3DA0DE;
    display: inline-block;
	color:#fff;
}
.smalltext {
    padding-top: 5px;
    font-size: 16px;
	color:#fff;
	text-align:center;
}
#ac-wrapper {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;                
                z-index: 1001;
			
            }
            #popup{
                width: 50%;
                height: 375px;
                position: relative;
                top: 90px; 
                left: 30%;
				cursor:pointer;
            }

    </style>
	
    <div id="content" class="app-content" role="main">
        <div class="app-content-body ">
            <div class="hbox hbox-auto-xs hbox-auto-sm" ng-init="
    app.settings.asideFolded = false; 
    app.settings.asideDock = false;">
                <div class="col">
                    <!-- main header -->
                    <div class="bg-light lter b-b wrapper-md">
                        <div class="row">
                            <div class="col-sm-6 col-xs-12">
                                <h1 class="m-n font-thin h3 text-black">Initial Coin Offering</h1>

                            </div>
							<div class="col-sm-6 col-xs-12">
							<div class="col-sm-6 text-right">
                                <h1 class="m-n font-thin h3 text-black">Sale Opens</h1>
							</div>
							<div class="col-sm-6">
								<div id="clockdiv">
                                <div>
								<div class="smalltext">D</div>
                                   <span id="days"></span>
                                    
                                </div>
                                <div>
								<div class="smalltext">H</div>
                                    <span id="hours"></span>
                                    
                                </div>
                                <div>
								    <div class="smalltext">M</div>
                                    <span id="minutes"></span>
                               
                                </div>
                                <div>
								<div class="smalltext">S</div>
                                    <span id="seconds"></span>
                                   
                                </div>
                            </div>
								<div class="text-center">
									(UTC- 4:00) ATLANTIC TIME (CANADA)


								</div>
							<script>
							    // var nowdate = "2017/11/27 17:00:00";
							    var nowdate = "Dec 5, 2017 00:37:25";

							    var countDownDate = new Date(nowdate).getTime();
							    //var countDownDate = new Date("Jan 5, 2018 15:37:25").getTime();

							    // Update the count down every 1 second
							    var x = setInterval(function () {

							        // Get todays date and time
							        var now = new Date().getTime();

							        // Find the distance between now an the count down date
							        var distance = countDownDate - now;

							        // Time calculations for days, hours, minutes and seconds
							        var day = Math.floor(distance / (1000 * 60 * 60 * 24));
							        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
							        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
							        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
							        document.getElementById("days").innerHTML = day;
							        document.getElementById("hours").innerHTML = hours;
							        document.getElementById("minutes").innerHTML = minutes;
							        document.getElementById("seconds").innerHTML = seconds;
							        // Output the result in an element with id="demo"
							        //document.getElementById("demo").innerHTML = days + "d " + hours + "h "
							        //+ minutes + "m " + seconds + "s ";

							        //If the count down is over, write some text 
							        if (distance < 0) {
							            clearInterval(x);
							            // document.getElementById("demo").innerHTML = "00:00:00:00";
							            document.getElementById("days").innerHTML = "0:0";
							            document.getElementById("hours").innerHTML = "0:0";
							            document.getElementById("minutes").innerHTML = "0:0";
							            document.getElementById("seconds").innerHTML = "0:0";
							        }
							    }, 1000);
                           </script>
							
							
							</div>
                            </div>
                        </div>
                    </div>
                    <!-- / main header -->
                    <div class="wrapper-md" ng-controller="FlotChartDemoCtrl">
                        <!-- stats -->

                        <div class="row">

                            <div class="col-md-6">

                                <ul class="list-group m-b-none" style="height: 24%; list-style: none;">
                                    <li class="link1">
                                        <asp:HyperLink ID="hypernk233" runat="server" Style="color: #fff; font-size: 14px; background-color: #2a2a2a; padding: 7px;">    </asp:HyperLink>
                                        <input id="btncopyLink" type="button" name="copylink" onclick="copyToClipboard('#ctl00_ContentPlaceHolder1_hypernk233')" value="Copy Link" class="btn bg-primary" style="margin-left: 0%; margin-bottom: 0%;" />
                                        <asp:HyperLink ID="hypWhatsappLink" runat="server" CssClass="btn bg-primary" Style="margin-left: 0%; margin-bottom: 0%; display: none;">Share Whatsapp </asp:HyperLink>
                                        <%--<input type="button" name="copylink" value="Share Whatsapp" class="btn bg-primary" style="margin-left:1%;margin-bottom:1%;" /> --%>
                                        <br />
                                    </li>
                                    <li>
                                        <asp:Label ID="lblmsgdirect" runat="server" ForeColor="Red" Style="display: none"></asp:Label></li>
									

								
                                </ul>

                            </div>
							<div class="col-md-4" id="CurrenModeOff" runat="server" style="cursor:not-allowed">
							
							<div style="" style="cursor:not-allowed"><a href="" class="btn bg-primary" style="padding: 10px;font-size: 16px;color: #fff;background-color:#EB6D01;border-radius:10px;margin-right:10px;cursor:not-allowed">Current Sale Status: </a><span style="background-color:#262626;color:#fff;padding: 10px;font-size: 16px;border-radius:0px;cursor:not-allowed;" class="btn bg-primary"><asp:Label ID="lblcurrentsaleOFF" style="cursor:not-allowed" runat="server" ToolTip="m"></asp:Label></span><span style="background-color:#7b7777;color:#d0d0d0;padding: 10px;font-size: 16px;border-radius:0px;cursor:not-allowed;" class="btn bg-primary"><asp:Label ID="lblon" style="cursor:not-allowed" runat="server" Text="ON"></asp:Label></span></div>
							
							</div>
                            <div class="col-md-4" id="CurrenModeOn" runat="server" style="cursor:not-allowed">
							
							<div style="" style="cursor:not-allowed"><a href="" class="btn bg-primary" style="padding: 10px;font-size: 16px;color: #fff;background-color:#EB6D01;border-radius:10px;margin-right:10px;cursor:not-allowed">Current Sale Status: </a><span style="background-color:#7b7777;color:#d0d0d0;padding: 10px;font-size: 16px;border-radius:0px;cursor:not-allowed;" class="btn bg-primary"><asp:Label ID="lblbuyCoinON" style="cursor:not-allowed" runat="server"></asp:Label></span><span style="background-color:#262626;color:#fff;padding: 10px;font-size: 16px;border-radius:0px;cursor:not-allowed;" class="btn bg-primary"><asp:Label ID="lblOFF" style="cursor:not-allowed" runat="server" Text="OFF"></asp:Label></span></div>
							
							</div>
							<div class="col-md-2 text-right" id="btnsalecoinStart" runat="server">
							
								<a href="#" class="btn no-shadow navbar-btn" ui-toggle-class="show" target="#aside-user">
                                <span class="hidden-folded m-l-xs" style="color: white; font-size: 16px;"><a id="A2" class="btn bg-primary" style=" color: #fff;background-color:#10B603;padding:10px 20px;border-radius:10px;font-size:16px;" href="BuyCoin.aspx">Buy Coin </a></span>
                                  </a>
							</div>
                           <div class="col-md-2 text-right" id="btnsalecoinStop" runat="server">
							
								<a href="#" class="btn no-shadow navbar-btn" ui-toggle-class="show" target="#aside-user">
                                <span class="hidden-folded m-l-xs" style="color: white; font-size: 16px;"><a id="A1" class="btn bg-primary" style=" color: #fff;background-color:#10B603;padding:10px 20px;border-radius:10px;font-size:16px;" href="#">Buy Coin </a></span>
                                  </a>
							</div>
                           

                        </div>

                        <div class="row" style="padding: 15px 35px;">

                            

                        </div>


                        <div class="row">

                            <div class="col-lg-6">

                                <div class="bg1">
                                    <h4>Olencoin Balance</h4>
                                    <p class="text-center">
                                        <asp:Label ID="lblwalletcoin" runat="server">0</asp:Label>
                                    </p>
                                </div>

                            </div>
                            <div class="col-lg-6">

                                <div class="bg1 bgy">
                                    <h4>Total Available Coin</h4>
                                    <%--<p class="text-center">1,50,000 BBC</p>--%>
                                    <p class="text-center">
                                        <asp:Label ID="lblcoinavailable" runat="server"></asp:Label>
                                        &nbsp;
                                    </p>
                                </div>

                            </div>

                        </div>

                        <div class="row">

                            
							
							<div class="col-lg-6">

                                <div class="bg1 bgo">
                                    <h4>BTC Balance</h4>
                                    <p class="text-center">
                                        <asp:Label ID="lbltopupwallet" runat="server"></asp:Label>
                                    </p>
                                </div>

                            </div>
							
                            <div class="col-lg-6">

                                <div class="bg1 bgg">
                                    <h4>Sold Coin</h4>
                                    <%--<p class="text-center">7,50,000 BBC</p>--%>
                                    <p class="text-center">
                                        <asp:Label ID="lblcoinsold" runat="server"></asp:Label>
                                        &nbsp;
                                    </p>
                                </div>

                            </div>

                        </div>

                        <div class="row hidden">

                            <div class="col-lg-6">

                                <div class="bg1">



                                    <p class="text-center"><span id="Span1"></span>Days <span id="Span2"></span>Hours <span id="Span3"></span>Minutes <span id="Span4"></span>Seconds</p>

                                </div>
                                
                            </div>

                        </div>


                    </div>



                    <div class="row">

                        <div class="col-md-11" style="margin-left:25px">

                            <h1 style="margin-top:-20px;font-size:30px;padding:10px;" class="bg-primary">Recent Coin Purchased</h1>
                           <asp:Repeater ID="StateGrid" runat="server">
                        <HeaderTemplate>
                            <table id="tblDataTables" cellpadding="0" cellspacing="0" style="width: 100%;" class="display format">
                                <thead>
                                    <tr>
                                        <th style="text-align: center;">
                                            <center>Sr. no</center>
                                        </th>
                                        <th style="text-align: center;">
                                            <center>LoginID</center>
                                        </th>
                                        <th style="text-align: center;">
                                            <center>Transaction Type</center>
                                        </th>
                                        <th style="text-align: center;">
                                            <center>Date</center>
                                        </th>
                                           <th style="text-align: center;">
                                            <center>Coin Purchased</center>
                                        </th>
                                                                          
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="input_noborder">
                                <th>
                                    <center><%# Container.ItemIndex+1 %></center>
                                </th>
                                <td>
                                    <center><%# Eval("loginid")%></center>
                                    </th>
                                <th>
                                    <center><%# Eval("transtype")%></center>
                                </th>
                                     <th>
                                    <center><%# Eval("transdate","{0:dd/MM/yyyy}")%></center>
                                </th>
                                     <th>
                                    <center><%# Eval("credit")%></center>
                                </th>
                                                        
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                        </div>
                    </div>

<div id="HIDEshowpopup" runat="server">
            <div id="ac-wrapper">
            <div id="popup">
                <center>
                   
                   <img src="images/popup.jpg" class="img-responsive" onClick="PopUp()" />



                </center>
            </div>
        </div>
       </div>
        <script type="text/javascript">
            function PopUp() {
                document.getElementById('ac-wrapper').style.display = "none";
            }
        </script>
                  

                    <!-- / tasks -->
                    <!-- / tasks -->
                </div>
            </div>
        </div>
    </div>

    <!------------------->

</asp:Content>
