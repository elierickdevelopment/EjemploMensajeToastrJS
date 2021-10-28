<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EjemploMensajeToastrJS.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Content/toastr.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.6.3.js"></script>
    <script src="Scripts/toastr.js"></script>
    <script src="Scripts/toastr.min.js"></script>
    <script src="Scripts/toastrExecute.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxButton ID="ASPxButton_Success" runat="server" Text="success" OnClick="ASPxButton_Success_Click" ></dx:ASPxButton>
            <dx:ASPxButton ID="ASPxButton_warning" runat="server" Text="warning" OnClick="ASPxButton_warning_Click" ></dx:ASPxButton>
            <dx:ASPxButton ID="ASPxButton_error" runat="server" Text="error" OnClick="ASPxButton_error_Click"></dx:ASPxButton>
            <dx:ASPxButton ID="ASPxButton_info" runat="server" Text="info" OnClick="ASPxButton_info_Click"></dx:ASPxButton>
            <br />
        </div>
    </form>
</body>
</html>
