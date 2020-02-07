<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RegistrationFormDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <p>
            
            FIRST NAME<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 128px" Width="343px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            LAST NAME<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 138px" Width="330px"></asp:TextBox>
        </p>
        EMAIL<asp:TextBox ID="TextBox3" runat="server" style="margin-left: 187px" Width="331px"></asp:TextBox>
        <p>
            CONTACT NUMBER<asp:TextBox ID="TextBox4" runat="server" Height="18px" style="margin-left: 86px" Width="210px"></asp:TextBox>
        </p>
        <p>
            GENDER<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="46px" style="margin-left: 160px" Width="381px">
                <asp:ListItem Selected="True">MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
&nbsp; STREAM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" style="margin-left: 166px" Width="476px">
                <asp:ListItem Selected="True">.NET</asp:ListItem>
                <asp:ListItem>JAVA</asp:ListItem>
                <asp:ListItem>SALES FORCE</asp:ListItem>
                <asp:ListItem>SDET</asp:ListItem>
                <asp:ListItem>DEP</asp:ListItem>
                <asp:ListItem>DEVOPS</asp:ListItem>
                <asp:ListItem>BIG DATA</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            &nbsp;</p>
&nbsp;COUNTRY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="Country" DataTextField="countryName" DataValueField="countryId" Height="56px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Country" runat="server" ConnectionString="<%$ ConnectionStrings:FormConnectionString %>" SelectCommand="SELECT [countryId], [countryName] FROM [country]"></asp:SqlDataSource>
        <br />
        <br />
        <div style="margin-left: 160px">
        </div>
        <br />
        STATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="State" DataTextField="stateName" DataValueField="stateId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="State" runat="server" ConnectionString="<%$ ConnectionStrings:FormConnectionString %>" SelectCommand="SELECT [stateId], [stateName] FROM [state] WHERE ([cId] = @cId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="cId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        CITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="City" DataTextField="cityName" DataValueField="cityId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="City" runat="server" ConnectionString="<%$ ConnectionStrings:FormConnectionString %>" SelectCommand="SELECT [cityId], [cityName] FROM [city] WHERE ([sId] = @sId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList5" Name="sId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        DATE OF BIRTH<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <br />
    </form>
    </body>
</html>
