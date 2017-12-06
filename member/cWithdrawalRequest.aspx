<%@ Page Language="C#" MasterPageFile="~/UserPanel/Member/MasterPage.master" AutoEventWireup="true"
    CodeFile="cWithdrawalRequest.aspx.cs" Inherits="EMI_MemberPanel_cWithdrawalRequest"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Page content -->
      <div class="col-sm-5" id="show" runat="server">
                
                <div class="panel panel-default">
                    <div class="panel-heading font-bold" style="background-color:#242a30; color:white;">WITHDRAW YOUR WALLET</div>
                    <div class="panel-body">
                        
                        
                             <div class="col-sm-10" id="link" runat="server">
							 
							 

                         <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                         <div class="form-group">
						 
                              <asp:LinkButton ID="lnk1" runat="server" Text="Click here to update Bitcoin Wallet Address"
                               OnClick="lnk1_Click" ForeColor="Red"></asp:LinkButton>
                          </div>
                            </div>
							<div>
							 <a href="Edit_Profile.aspx" style="font-size:20px;color:#3A3F51;font-weight:bold;" target="_blank">Make sure your wallet address is updated
							 <br>Update Now</a>
							 </div>
                            <table>
            <tr>
                <td>
                    <h4 class="header">Your E-Wallet Balance:
                        <asp:Label ID="lblEwalletBalance" runat="server"></asp:Label></h4>
                </td>
            </tr>
            <tr>
                <td>
                    <h4 class="header">Minimum Withdrawal Amount:
                        <asp:Label ID="lblMin" runat="server"></asp:Label></h4>
                </td>
            </tr>
            <tr>
                <td>
                    <h4 class="header">Amount to withdraw</h4>
                    <input type="hidden" name="dbchk" id="dbchk" value='0'>
                    <asp:TextBox ID="txtAmount" runat="server" ValidationGroup="g1" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAmount"
                        Display="Dynamic" ErrorMessage="Please Enter Amount" SetFocusOnError="True" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr style="display: none">
                <td>Select Mode<asp:DropDownList ID="ddlReType" runat="server" ValidationGroup="g1" class="form-control" Style="width: 300px;">
                    <asp:ListItem Value="0">-- Select Mode of Transfer --</asp:ListItem>
                    <asp:ListItem Value="1" Selected="True">Bit Coin</asp:ListItem>
                    <%-- <asp:ListItem Value="2">Cheque</asp:ListItem>
                                                    <asp:ListItem Value="3">Draft</asp:ListItem>
                                                    <asp:ListItem Value="4" Selected="True">Online</asp:ListItem>--%>
                </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="ddlReType"
                        ErrorMessage="Please Select Mode of Transfer" Operator="NotEqual" Type="Integer"
                        ValidationGroup="g1" ValueToCompare="0">*</asp:CompareValidator>
                </td>

            </tr>

        </table>
                        <br/>
                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="Button1_Click"
            Text="Submit" ValidationGroup="g1" />
        <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Cancel" OnClick="Button2_Click" />
        <br>
        <asp:Label ID="Label2" runat="server"></asp:Label><br>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="true" ForeColor="Red" EnableViewState="false"></asp:Label>
         <br />
        <asp:GridView ID="grdwidreq" runat="server" EmptyDataText="FundWithdrawal History Not Found !!"
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" Font-Size="12pt" Font-Bold="True" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
                    </div>
            </div>  
              </div>
    <!-- /.box-body -->
    <!-- /.box-footer-->

    <!-- /.content -->

    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
        ShowSummary="False" ValidationGroup="g1" />

    <hr />


</asp:Content>






















