<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ckeditortest.aspx.cs" Inherits="JSDemoTest.ckeditortest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="script/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="ckfinder/ckfinder.js" type="text/javascript"></script>
    <script type="text/javascript">
        //1需要引用ckfinder.dll
        //2在用updatepanel时，后台获取不到ckeditor的值
        function edit() {
            //ajax获取
            var content = $("#Labelshow").html();
            //$("#txtContent").html(content);
            editor.document.getBody().setHtml(content);
            $("#divedit").css("display", "block");
            $("#divshow").css("display", "none");
        }

        function save() {
            console.info(editor.document.getBody().getHtml());
            //ajax保存
            var content = editor.document.getBody().getHtml();
            $("#Labelshow").html(content);
            $("#divshow").css("display", "block");
            $("#divedit").css("display", "none");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="Scriptmanager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" Text="修改" OnClientClick="edit()" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="保存" OnClientClick="save()" OnClick="Button2_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <div id="divedit">
            <asp:TextBox ID="txtContent" runat="server" Rows="10" TextMode="MultiLine"></asp:TextBox>
            <script type="text/javascript">                var editor = CKEDITOR.replace('txtContent');    </script>
        </div>
        <div id="divshow">
            <asp:Label ID="Labelshow" runat="server" Text="Label"></asp:Label>
        </div>
        <table><tr><td>物流公司</td><td> 收保险费重量 </td><td> 保险费率</td></tr><table>
    </div>
    </form>
</body>
</html>
