﻿<%@ Page Title="Transfer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transfer.aspx.cs" Inherits="BankingServicesTryMe.Transfer" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Transfer</h3>
    <h4>Transfer funds between two accounts.</h4>
    <br />
    <br />
    Test account nicknames: BigSunDevilSleepsQuietly, ResilientAlienJumpsSmoothly, or BigBruinPlaysLoudly
    <br />
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Nickname" CssClass="col-md-6 control-label">Source account nickname</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="Nickname" CssClass="form-control" />
                        <asp:RegularExpressionValidator runat="server"
                            ControlToValidate="Nickname" ValidationExpression="^[A-Za-z]*$"
                            ErrorMessage="Please enter letters only." Display="Dynamic" SetFocusOnError="True" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Nickname"
                            CssClass="text-danger" ErrorMessage="The source account field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="dNickname" CssClass="col-md-6 control-label">Destination account nickname</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="dNickname" CssClass="form-control" />
                        <asp:RegularExpressionValidator runat="server"
                            ControlToValidate="dNickname" ValidationExpression="^[A-Za-z]*$"
                            ErrorMessage="Please enter letters only." Display="Dynamic" SetFocusOnError="True" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="dNickname"
                            CssClass="text-danger" ErrorMessage="The destination account field is required." />
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
                        <asp:Button runat="server" Text="Transfer" OnClick="transfer" CssClass="btn btn-default" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="OldBalance" CssClass="col-md-6 control-label">Source old balance</asp:Label>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="OldBalance" CssClass="control-label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Balance" CssClass="col-md-6 control-label">Source balance</asp:Label>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="Balance" CssClass="control-label"></asp:Label>
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
            <td>Transfer</td>
            <td>string (source account nickname), string (destination account nickname), string (amount)</td>
            <td>string (source account new balance)</td>
            <td>Given the account nicknames & the amount, it transfers the amount from the source account to the destination account, updates the balances in the Accounts.xml file in the BankingServices project,  & returns the source account's new balance.</td>
            <td>Uses LINQ to XML. Consumes BankingRestServices Addition & Subtraction RESTful service written by Govinda Escobar at http://localhost:54118/Service.svc </td>
        </tr>
    </table>
</asp:Content>
