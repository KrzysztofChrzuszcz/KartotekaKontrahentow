<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewContractor.aspx.cs" Inherits="NewContractor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 207px;
        }
        .auto-style3 {
            width: 207px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            margin-left: 213px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="New Contractor Form"></asp:Label>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Insert your name" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="name is incorret" ValidationExpression="^[a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Surname</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Insert your surname" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="surname can contain only letters" ValidationExpression="^[a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">NIP</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="NIP is obligatory" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="NIP has to have 9 numbers" ValidationExpression="^[0-9]{9}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">City</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Insert city name" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="City name is incorrect" ValidationExpression="^[a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Street</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Insert street name" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">number</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Insert streat number" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="here can by only 4 digits" ValidationExpression="^[0-9]{1,4}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">

                        e-mail</td>
                    <td>

                        <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="email adress is not correct" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="ButtonSend" runat="server" Height="21px" Text="Send" Width="80px" OnClick="ButtonSend_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractorsDBConnectionString %>" DeleteCommand="DELETE FROM [Contractor] WHERE [ContractorId] = @ContractorId" InsertCommand="AddNewContractor" SelectCommand="SELECT * FROM [Contractor]" UpdateCommand="UPDATE [Contractor] SET [Name] = @Name, [Surname] = @Surname, [NIP] = @NIP, [City] = @City, [Street] = @Street, [number] = @number, [e-mail] = @column1 WHERE [ContractorId] = @ContractorId" InsertCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="ContractorId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="param1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="param2" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="param3" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox4" Name="param4" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="param5" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox6" Name="param6" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox7" Name="param7" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="NIP" Type="Int32" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Street" Type="String" />
                <asp:Parameter Name="number" Type="Int32" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="ContractorId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style5" />
    </form>
</body>
</html>
