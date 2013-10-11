'Programmer: Yuxuan Zhang
'Student ID: 00732173

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btCalculate_Click(sender As Object, e As EventArgs) Handles btCalculate.Click

        'define variables
        Dim numHours As Double
        Dim wage As Double
        Dim preTax As Double
        Dim postTax As Double
        Dim taxRate As Double
        Dim preTaxIncome As Double
        Dim postTaxIncome As Double

        'convert strings to double
        numHours = CDbl(tbHoursWorked.Text)
        wage = CDbl(tbWage.Text)
        preTax = CDbl(tbPreTax.Text)
        postTax = CDbl(tbPostTax.Text)

        'calculate net income
        preTaxIncome = numHours * wage - preTax

        If preTaxIncome < 500 Then
            taxRate = 0.18
        Else
            taxRate = 0.22
        End If

        postTaxIncome = preTaxIncome * (1 - taxRate) - postTax
        lbNetIncome.Text = FormatCurrency(postTaxIncome)

    End Sub

    Protected Sub btClear_Click(sender As Object, e As EventArgs) Handles btClear.Click

        'clear inputs
        tbHoursWorked.Text = String.Empty
        tbWage.Text = String.Empty
        tbPreTax.Text = String.Empty
        tbPostTax.Text = String.Empty
        lbNetIncome.Text = String.Empty
        tbHoursWorked.Focus()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        tbHoursWorked.Focus()

    End Sub
End Class
