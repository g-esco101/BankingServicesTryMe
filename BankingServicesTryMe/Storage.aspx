﻿<%@ Page Title="Storage Service" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Storage.aspx.cs" Inherits="BankingServicesTryMe.Storage" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Storage</h3>
    <h4>Stores the uploaded file in the Files directory.</h4>
    <br />
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <asp:Label runat="server" AssociatedControlID="FileUpload1" CssClass="col-md-6 control-label">File path</asp:Label>
                <div class="col-md-6">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="FileUpload1"
                        CssClass="text-danger" ErrorMessage="The file path field is required." />
                </div>
                <div class="col-md-offset-6 col-md-6">
                    <asp:Button runat="server" Text="Archive" OnClick="UploadButton_Click" CssClass="btn btn-default" />
                </div>
            </div>
        </div>
    </div>
    <asp:Label runat="server" AssociatedControlID="fServerPath">Path on service's server</asp:Label>
    <asp:Label runat="server" ID="fServerPath"></asp:Label>
    <div>
        <asp:Xml ID="Xml1" runat="server"></asp:Xml>
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
            <td>Storage</td>
            <td>string (fileName), byte[] (fileContents)</td>
            <td>string (path on server)</td>
            <td>Stores a file in the Files directory. Given the name of the file & its contents, it returns the URL of the file on the server.</td>
            <td></td>
        </tr>
    </table>
</asp:Content>