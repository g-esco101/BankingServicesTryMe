<%@ Page Title="UpdatePassword" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdatePassword.aspx.cs" Inherits="BankingServicesTryMe.UpdatePassword" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>UpdatePassword</h3>
    <h4>Updates the password of an account in Account.xml.</h4>
    <br />
    <br />
    Test account owners: Schrodinger, Gauss, & Delta
    Current password: 123
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
                    <asp:Label runat="server" AssociatedControlID="password" CssClass="col-md-6 control-label">Current password</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="password" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="password1" CssClass="col-md-6 control-label">New password</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="password1" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="password1"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="password2" CssClass="col-md-6 control-label">New password</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="password2" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="password2"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Button runat="server" Text="Update" OnClick="update" CssClass="btn btn-default" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-6">
                        <asp:Label runat="server" AssociatedControlID="Status"></asp:Label>
                        <asp:Label runat="server" ID="Status"></asp:Label>
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
            <td>UpdatePassword</td>
            <td>string (account owner), string (current password), string (new password), string (new password)</td>
            <td>boolean</td>
            <td>Returns true if the password is updated successfully in the Accounts.xml in the BankingServices project.</td>
            <td>Uses LINQ to XML. Consumes the RESTful HashService written by Govinda Escobar at http://localhost:54118/Service.svc. It uses SHA512CryptoServiceProvider & generates a password by using the user name as salt & hashing it with the password (the salt will be updated to be a 128 bit random number).</td>
        </tr>
    </table>
</asp:Content>
