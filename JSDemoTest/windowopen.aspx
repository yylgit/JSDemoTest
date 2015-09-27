<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="windowopen.aspx.cs" Inherits="JSDemoTest.windowopen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
//        function openwin(url) {
//            var a = document.createElement("a");
//            a.setAttribute("href", url);
//            a.setAttribute("target", "_blank");
//            a.setAttribute("id", "openwin");
//            document.body.appendChild(a);
//            a.click();
//        }
    </script>
    <script src="script/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="自己动手写Jquery插件/yylUtility.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="tanchu1" 
            onclick="Button1_Click" />
         <asp:Button ID="Button2" runat="server" Text="tanchu2" 
            onclick="Button2_Click" />
    </div>
    </form>
</body>
</html>
