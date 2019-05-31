<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="FilmGrid.aspx.cs" Inherits="MyFilmGrid.FilmGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 48%;
            height: 148px;
            background-color: #0066FF;
        }
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            width: 148px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="#0066FF" BorderColor="#33CCFF" BorderStyle="Solid" ForeColor="White" Text=" My Films Grid connected to Database " Width="266px"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated">
                <Columns>
                    <asp:BoundField DataField="movieid" HeaderText="MovieID" />
                    <asp:BoundField DataField="movietitle" HeaderText="MovieTitle" />
                    <asp:BoundField DataField="movierating" HeaderText="MovieRating" />
                    <asp:BoundField DataField="releaseyear" HeaderText="ReleaseYear" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" BackColor="#0066FF" BorderColor="#33CCFF" BorderStyle="Solid" ForeColor="White" Text="Data From Selected Row Shown Here:" Width="267px"></asp:Label>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Film ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Film Title</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Film Rating</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Year Released</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
