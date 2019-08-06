<%@ Page Title="CreateAccount" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="BankingServicesTryMe.CreateAccount" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>CreateAccount</h3>
    <h4>Creates the account in BankingService's Accounts.xml file.</h4>

    <br />
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="AccountNumber" CssClass="col-md-6 control-label">Account number</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="AccountNumber" CssClass="form-control" placeholder="best to use 4 digit numbers" />
                        <asp:RegularExpressionValidator runat="server"
                            ControlToValidate="AccountNumber" ValidationExpression="^\d+$"
                            ErrorMessage="Please enter numbers only (e.g., 4444)." Display="Dynamic" SetFocusOnError="True" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AccountNumber"
                            CssClass="text-danger" ErrorMessage="The account number field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="AccountOwner" CssClass="col-md-6 control-label">Account owner</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="AccountOwner" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AccountOwner"
                            CssClass="text-danger" ErrorMessage="The account owner field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="AccountBalance" CssClass="col-md-6 control-label">Account balance</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="AccountBalance" CssClass="form-control" placeholder="e.g., 1000 or 1000.50" />
                        <asp:RegularExpressionValidator runat="server"
                            ControlToValidate="AccountBalance" ValidationExpression="^\d+(\.\d\d)?$"
                            ErrorMessage="Please enter numbers only (e.g., 1000 or 1000.50)." Display="Dynamic" SetFocusOnError="True" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="AccountBalance"
                            CssClass="text-danger" ErrorMessage="The account balance field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Label runat="server" AssociatedControlID="Nickname">Account nickname</asp:Label>
                        <asp:Label runat="server" ID="Nickname"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Button runat="server" Text="Create" OnClick="createAccount" CssClass="btn btn-default" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(odd) {
            background-color: #dddddd;
        }
    </style>
    <table>
        <tr>
            <th>Name</th>
            <th>Input types</th>
            <th>Output type</th>
            <th>Service description</th>
            <th>Comments</th>
        </tr>
        <tr>
            <td>CreateAccount</td>
            <td>string (account number), string (account owner), string (account balance)</td>
            <td>string (account nickname)</td>
            <td>It uses the account number to generate an account nickname. It generates a temporary password by using "123" (uses owner as salt). It stores the account number, nickname, owner, password, & balance in Accounts.xml.</td>
            <td>Uses LINQ to XML. Invokes HashService Hasher restful service written by Govinda Escobar at http://localhost:54118/Service.svc  It uses SHA512CryptoServiceProvider & generates a password by using the user name as salt & hashing it with the password. Uses a balance of zero if input balance is invalid.</td>
        </tr>
    </table>
</asp:Content>
