<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Calculator</title>
    <link rel="stylesheet" type="text/css" href="./Calculator.css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Salary Calculator</h2><br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Hours Worked"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbHoursWorked" runat="server"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="rfvHoursWorked" runat="server" ControlToValidate="tbHoursWorked" ErrorMessage="Please enter hours worked"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Wage"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbWage" runat="server"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="rfvWage" runat="server" ControlToValidate="tbWage" ErrorMessage="Please enter your wage"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Pre-tax deductions "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPreTax" runat="server"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="rfvPreTax" runat="server" ControlToValidate="tbPreTax" ErrorMessage="Please enter pre-tax deductions"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Post-tax deductions"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="tbPostTax" runat="server"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="rfvPostTax" runat="server" ControlToValidate="tbPostTax" ErrorMessage="Please enter post-tax deductions"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="btCalculate" runat="server" Text="Calculate" />
&nbsp;
        <asp:Button ID="btClear" runat="server" Text="Clear" />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Net Income:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbNetIncome" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
