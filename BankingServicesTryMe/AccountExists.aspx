<%@ Page Title="AccountExists" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccountExists.aspx.cs" Inherits="BankingServicesTryMe.AccountExists" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>AccountExists</h3>
    <h4>Checks if an account exists in Account.xml.</h4>    
    <br />
    <br />
    Test account owners: Albert, Higgs, & Hawking
    <br />
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="AccountOwner" CssClass="col-md-6 control-label">Account owner</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="AccountOwner" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AccountOwner"
                            CssClass="text-danger" ErrorMessage="The account owner field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Label runat="server" AssociatedControlID="Status"></asp:Label>
                        <asp:Label runat="server" ID="Status"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Button runat="server" Text="submit" OnClick="accountExists" CssClass="btn btn-default" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <table class="table1">
        <tr>
            <th>Service name</th>
            <th>Input types</th>
            <th>Output type</th>
            <th>Service description</th>
            <th>Comments</th>
        </tr>
        <tr>
            <td>AccountExists</td>
            <td>string (account owner)</td>
            <td>boolean</td>
            <td>Returns true if the owner has an account in Accounts.xml.</td>
            <td>Uses LINQ to XML. </td>
        </tr>
    </table>
</asp:Content>