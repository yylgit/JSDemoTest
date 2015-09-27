<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testformvalidate.aspx.cs"
    Inherits="JSDemoTest.testformvalidate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="formvalidator4.1/jquery-1.4.4.min.js" type="text/javascript"></script>
    <script src="formvalidator4.1/formValidator-4.1.1.js" type="text/javascript"></script>
    <script src="formvalidator4.1/formValidatorRegex.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.formValidator.initConfig({
                formID: "form1",
                theme: 'ArrowSolidBox',
                mode: 'AutoTip',
                onError: function (msg) {
                    alert(msg)
                },
                inIframe: true
            });

            $("#txtUserName").formValidator({
                onShow: "请输入密码",
                onFocus: "请输入密码",
                onCorrect: "密码合法"
            }).inputValidator({
                min: 1,
                empty: {
                    leftEmpty: false,
                    rightEmpty: false,
                    emptyError: "密码两边不能有空符号"
                },
                onError: "密码不能为空,请确认"
            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
          <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="会员名"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password"
            placeholder="密码"></asp:TextBox>
        <br />
        <input type="submit" value="提交" />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <div>
      
    </div>
    </form>
</body>
</html>
