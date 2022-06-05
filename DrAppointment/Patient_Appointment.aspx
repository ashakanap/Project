<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_Appointment.aspx.cs" Inherits="Patient_Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> 
        input[type=text] {
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;

}

input[type=text]:focus {
  border: 3px solid #555;
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            height: 31px;
            width: 426px;
        }
        .auto-style5 {
            height: 90px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <div style="box-shadow:2px 2px 2px 2px gray;height:25%;width:70%;margin-left:20%;margin-top:-1%;margin-bottom:10%;background-color:lightgray">
        

    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="heading" runat="server" Text="DOCTOR APPOINTMENT FORM" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    </td>
                <td class="auto-style2" colspan="2">
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Name" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="mobile" runat="server" Text="Mobile Number" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="301px"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Age" runat="server" Text="Age" Font-Bold="True"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="Email" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="310px"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="DOB" runat="server" Text="DOB" Font-Bold="True"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="date" runat="server" Text="Date of Appointment " Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="310px" Type="Date"></asp:TextBox>
                </td>
                <td class="auto-style2" colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server" Height="40px" Width="310px" Type="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="blood" runat="server" Text="Blood Group" Font-Bold="True"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="Report" runat="server" Text="Upload Patient Reports " Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="310px"></asp:TextBox>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" Width="310px" />
                    <br />
                    <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 0px" Text="Upload" Font-Bold="True" ForeColor="Red" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Address" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                </td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="310px"></asp:TextBox>
                </td>
                <td colspan="2" class="auto-style5">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" BackColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="45px" Width="141px" BorderStyle="None" style="box-shadow:3px 3px 3px 3px gray" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
        

    </div>
    
    </form>
</body>
</html>
