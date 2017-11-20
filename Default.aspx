<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ContractorId" DataSourceID="EntityDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="NIP" HeaderText="NIP" SortExpression="NIP" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                    <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
                    <asp:BoundField DataField="e_mail" HeaderText="e_mail" SortExpression="e_mail" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=ContractorsDBEntities2" DefaultContainerName="ContractorsDBEntities2" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Contractors" EntityTypeFilter="Contractor">
            </asp:EntityDataSource>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/NewContractor.aspx">Add New</asp:LinkButton>
        </div>
    </form>
</body>
</html>
