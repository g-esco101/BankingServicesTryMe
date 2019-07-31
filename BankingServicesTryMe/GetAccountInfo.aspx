<%@ Page Title="GetAccountInfo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetAccountInfo.aspx.cs" Inherits="BankingServicesTryMe.GetAccountInfo" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>GetAccountInfo</h3>
    <h4>Gets the account number, nickname, & balance.</h4>
    <br />
    <br />
    Test account owners: Albert, Higgs, & Hawking
    <br />
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Owner" CssClass="col-md-6 control-label">Owner</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="Owner" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Owner"
                            CssClass="text-danger" ErrorMessage="The Owner field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Button runat="server" Text="Submit" OnClick="getInfo" CssClass="btn btn-default" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="result" CssClass="col-md-6 control-label">Result</asp:Label>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="result" CssClass="control-label"></asp:Label>
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
            <td>GetAccountInfo</td>
            <td>string (owner)</td>
            <td>string (account number, nickname, & balance)</td>
            <td>Given the account owner, it returns a string containing the account number, nickname, & balance seperated by spaces. </td>
            <td>Uses LINQ to XML to search Accounts.xml.</td>
        </tr>
    </table>
</asp:Content>
