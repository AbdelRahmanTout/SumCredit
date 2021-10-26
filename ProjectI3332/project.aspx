<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="project.aspx.cs" Inherits="ProjectI3332.project" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            margin-top: 37px;
            margin-bottom: 22px;
        }
        .style2
        {
            width: 80px;
        }
        .style3
        {
            width: 156px;
        }
        .style5
        {
            width: 80px;
            height: 23px;
        }
        .style6
        {
            width: 156px;
            height: 23px;
        }
        .style8
        {
            height: 23px;
        }
        .style9
        {
            width: 164px;
        }
        .style10
        {
            width: 164px;
            height: 23px;
        }
        .style11
        {
            width: 80px;
            height: 30px;
        }
        .style12
        {
            width: 156px;
            height: 30px;
        }
        .style13
        {
            width: 164px;
            height: 30px;
        }
        .style14
        {
            height: 30px;
        }
        .style15
        {
            width: 100%;
        }
        .style16
        {
            width: 71px;
        }
        .style17
        {
            width: 118px;
        }
        .style18
        {
            width: 303px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Liste des cours en 3em annee informatique</h1></div>
    <table class="style1">
        <tr>
            <td class="style2">
                Module</td>
            <td class="style3">
                <asp:ListBox ID="ListBox1" runat="server" 
                    onselectedindexchanged="ListBox1_SelectedIndexChanged">
                    <asp:ListItem>-- Code --</asp:ListItem>
                    <asp:ListItem>I3301</asp:ListItem>
                    <asp:ListItem>I3302</asp:ListItem>
                    <asp:ListItem>I3303</asp:ListItem>
                    <asp:ListItem>I3304</asp:ListItem>
                    <asp:ListItem>I3305</asp:ListItem>
                    <asp:ListItem>I3306</asp:ListItem>
                    <asp:ListItem>L3300</asp:ListItem>
                    <asp:ListItem>I3307</asp:ListItem>
                    <asp:ListItem>I3308</asp:ListItem>
                    <asp:ListItem>I3330</asp:ListItem>
                    <asp:ListItem>I3332</asp:ListItem>
                    <asp:ListItem>I3333</asp:ListItem>
                    <asp:ListItem>I3334</asp:ListItem>
                    <asp:ListItem>I3346</asp:ListItem>
                </asp:ListBox>
            </td>
            <td class="style9">
                <center>Nb credits</center></td>
            <td>
                <asp:TextBox ID="textboxbtn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style6">
            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="textboxbtn" Display="Dynamic" 
                    ErrorMessage="Le nb de credits doit etre entre 3 et 5" ForeColor="#FF0066" 
                    MaximumValue="5" MinimumValue="3" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style12">
                <asp:Button ID="ajouterbtn" runat="server" Text="Ajouter" 
                    onclick="ajouterbtn_Click" />
            </td>
            <td class="style13">
                <center>Nb de credits total</center></td>
            <td class="style14">
                <asp:Label ID="labelbtn" runat="server" ForeColor="#00CCFF" Text="0"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        <h1>Resume</h1>
    <table class="style15">
        <tr>
            <td class="style16">
                Cours</td>
            <td class="style17">
                
                <asp:ListBox ID="ListBox2" runat="server" 
                    onselectedindexchanged="ListBox2_SelectedIndexChanged">
                    <asp:ListItem>-- Code --</asp:ListItem>
                </asp:ListBox>
                
            </td>
            <td class="style18">
                <center><asp:Button ID="deletebtn" runat="server" Text="Delete" 
                        onclick="deletebtn_Click" /></center>
            </td>
            <td>
                <asp:Button ID="deleteallbtn" runat="server" onclick="deleteallbtn_Click" 
                    Text="Delete All" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <asp:Button ID="upbtn" runat="server" BackColor="Lime" onclick="upbtn_Click" 
        style="font-size: large" Text="up" />
    <asp:Button ID="downbtn" runat="server" BackColor="Aqua" 
        style="font-size: large; margin-left: 399px" Text="down" 
        onclick="downbtn_Click" />
    </form>
    </body>
</html>
