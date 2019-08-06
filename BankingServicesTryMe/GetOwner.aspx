<%@ Page Title="GetOwner" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetOwner.aspx.cs" Inherits="BankingServicesTryMe.GetOwner" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>GetOwner</h3>
    <h4>Gets the account owner.</h4>
    <br />
    <br />
    Test account nicknames: BigSunDevilSleepsQuietly, ResilientAlienJumpsSmoothly, & BigBruinPlaysLoudly
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
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Button runat="server" Text="Submit" OnClick="getOwner" CssClass="btn btn-default" />
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
    <table class="table1">
        <tr>
            <th>Service name</th>
            <th>Input types</th>
            <th>Output type</th>
            <th>Service description</th>
            <th>Comments</th>
        </tr>
        <tr>
            <td>GetOwner</td>
            <td>string (nickname)</td>
            <td>string (owner)</td>
            <td>Given the account nickname, it returns the owner as a string.</td>
            <td>Uses LINQ to XML to search Accounts.xml</td>
        </tr>
    </table>
</asp:Content>
