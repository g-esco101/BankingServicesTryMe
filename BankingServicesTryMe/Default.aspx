<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BankingServicesTryMe._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2>Banking Services</h2>
            <p>
                The Banking Services API is comprised of SOAP services, some of which consume the RESTFul services in the BankingRestServices repository.
                These Banking Services are consumed by the project in the SOCBankingWebApp repository.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Service Testing</h2>
            <p>
                It supports only one account per owner. Each service has its own web page where it can be tried. The service name, input & output types, description, & comments are provided on each page.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                The Banking Services are self-hosted, so it is necessary to run visual studio as an administrator to be able to receive requests. 
            </p>
        </div>
    </div>
    <h2>Contact</h2>
    <h3>Govinda Escobar</h3>
    <address>
        <a href="mailto:govinda.escobar@gmail.com">govinda.escobar@gmail.com</a><br />
    </address>
</asp:Content>
