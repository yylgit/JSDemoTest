<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageBox.aspx.cs" Inherits="JSDemoTest.layTest.MessageBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../script/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="../layer-v1.8.5/layer/layer.min.js" type="text/javascript"></script>
    <link href="../style/bootstrap.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        //页面层之自定义风格
        function tanchu() {
            var pagei = $.layer({
                type: 1,   //0-4的选择,
                title: false,
                border: [0],
                closeBtn: [0],
                shadeClose: false,
                area: ['400px', '200px'],
                page: {
                    dom: '#tanchudiv'
                }
            });

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="弹出" OnClick="Button1_Click" />
    </div>
    <div id="tanchudiv" style="width: 400px; height: 200px; background-color: White; font-family: 微软雅黑;padding:50px; font-weight:bold;">
        <div style=" text-align:center; font-size: 20px; ">
            支付完成，请刷新支付结果!
        </div>
        <div style=" text-align:center; margin-top:50px;">
            <input type="button" value="刷新支付结果" onclick="window.location.reload()" />
        </div>
    </div>
    </form>
</body>
</html>
