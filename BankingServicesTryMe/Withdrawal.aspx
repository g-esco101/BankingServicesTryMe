<%@ Page Title="Withdrawal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Withdrawal.aspx.cs" Inherits="BankingServicesTryMe.Withdrawal" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Withdrawal</h3>
    <h4>Withdrawal money from an account.</h4>
    <br />
    <br />
    Test account nicknames: BigSunDevilSleepsQuietly, ResilientAlienJumpsSmoothly, or BigBruinPlaysLoudly
    <br />
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Nickname" CssClass="col-md-6 control-label">Nickname</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="Nickname" CssClass="form-control" />
                        <asp:RegularExpressionValidator runat="server"
                            ControlToValidate="Nickname" ValidationExpression="^[A-Za-z]*$"
                            ErrorMessage="Please enter letters only." Display="Dynamic" SetFocusOnError="True" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Nickname"
                            CssClass="text-danger" ErrorMessage="The Nickname field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Amount" CssClass="col-md-6 control-label">Amount</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="Amount" CssClass="form-control" placeholder="e.g., 1000 or 1000.50" />
                        <asp:RegularExpressionValidator runat="server"
                            ControlToValidate="Amount" ValidationExpression="^\d+(\.\d\d)?$"
                            ErrorMessage="Please enter numbers only (e.g., 1000 or 1000.50)." Display="Dynamic" SetFocusOnError="True" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Amount"
                            CssClass="text-danger" ErrorMessage="The amount field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Button runat="server" Text="Submit" OnClick="withdrawal" CssClass="btn btn-default" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="OldBalance" CssClass="col-md-6 control-label">Old balance</asp:Label>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="OldBalance" CssClass="control-label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Balance" CssClass="col-md-6 control-label">Balance</asp:Label>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="Balance" CssClass="control-label"></asp:Label>
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
            <td>Withdrawal</td>
            <td>string (nickname), string (amount)</td>
            <td>string (new balance)</td>
            <td>Given the account nickname & the amount, it subtracts the amount from the balance & returns the new balance.</td>
            <td>Uses LINQ to XML. Invokes BankingRestServices Subtraction restful service written by Govinda Escobar at http://localhost:54118/Service.svc </td>
        </tr>
    </table>
</asp:Content>
