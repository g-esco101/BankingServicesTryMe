<%@ Page Title="GetFile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetFile.aspx.cs" Inherits="BankingServicesTryMe.GetFile" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>GetFile</h3>
    <h4>Returns the contents of the file as a string if it is found in the Files directory</h4>
    <br />
    <br />
    Test files: Ledger_2019-7-18_19-12-07.xml, Ledger(2).xml, & 322words_2019-7-30_15-03-52.txt
    <br />
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="FileName" CssClass="col-md-6 control-label">Archived file name</asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="FileName" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FileName" CssClass="text-danger" ErrorMessage="The file name field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-10">
                        <asp:Button runat="server" OnClick="getFile" Text="View" CssClass="btn btn-default" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-6 col-md-10">
                        <asp:Label ID="Status" runat="server"></asp:Label>
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
            <td>GetFile</td>
            <td>string (fileName)</td>
            <td>string (file contents)</td>
            <td>Given the file name in the File directory in the BankingServices project, it returns the contents of the file as a string. </td>
            <td></td>
        </tr>
    </table>
</asp:Content>
