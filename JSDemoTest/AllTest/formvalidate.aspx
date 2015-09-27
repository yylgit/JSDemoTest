<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formvalidate.aspx.cs" Inherits="JSDemoTest.AllTest.formvalidate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .onCorrect
        {
            display: inline-block;
            height: 22px;
            background: url(onCorrect.gif) no-repeat 0px -22px;
            padding-left: 15px;
            margin-left: 10px;
            vertical-align: middle;
            padding-right: 5px;
            margin-top: 5px;
        }
        
        .onError
        {
            display: inline-block;
            height: 22px;
            background: url(onError.gif) no-repeat 0px -22px;
            padding-left: 15px;
            margin-left: 10px;
            vertical-align: middle;
            padding-right: 5px;
            margin-top: 5px;
        }
    </style>
    <script src="../formvalidator4.1/jquery-1.4.4.min.js" type="text/javascript"></script>
    <script type="text/javascript">
      

            function myvalidatecode() {

                $.post("ajaxrequest.aspx", { type: "usercode", usercode: $("#us").val() }, function (data) {

                    if (data.status == "success") {
                            $("#imgcorrent").css("display", "block");
                            $("#imgerror").css("display", "none");
                        } else {
                                            
                            $("#imgerror").css("display", "block");
                            $("#imgcorrent").css("display", "none");
                        }

                },"json");
            }

     
    </script>
</head>
<body>
    <form action="" method="post" name="form1" id="form1">
    <input type="submit" name="button" id="button" value="提交" />
    <br />
    <table border="0px" style="font-size: 12px" width="630px">
        <tr>
            <td align="right">
                用户名:
            </td>
            <td>
                <input type="text" id="us" name="us" onkeyup="myvalidatecode()" onchange="myvalidatecode()" />
            </td>
            <td align="right">
                <img id="imgcorrent" src="onCorrect.gif" style=" display:none;" />
                <img id="imgerror" src="onError.gif" style=" display:none;" />
            </td>
        </tr>
  
        <tr>
           
            <td align="right">
                <input type="button" name="button" id="ceshi" value="ceshi" onclick="myvalidatecode()" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
