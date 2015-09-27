<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appraise.aspx.cs" Inherits="JSDemoTest.layer.appraise" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../StyleSheet/AdminTheme.css" rel="stylesheet" type="text/css" />
     <script src="../script/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="layer/layer.min.js" type="text/javascript"></script>
   
</head>
<body style=" width:800px; height:400px;">
    <form id="form1" runat="server">
    <div style=" padding-left:15px; padding-right:15px;">
      <div class="row">
        <div class="col-xs-12">
            <div class="widget-box">
                <div class="widget-header">
                    <h5 class="smaller">
                        <i class=" fa fa-comment fa-fw"></i>查看会员评价</h5>
                    <div class="widget-toolbar">
                        <asp:linkbutton id="lbtnClose" runat="server" text="关闭"></asp:linkbutton>
                    </div>
                </div>
                <div class="widget-body" style="min-height: 400px;">
                    <div class="widget-main padding-6">
                        <div class="">
                            <div class="row">
                                <div class="dialogs">
                                    <div class="itemdiv dialogdiv">
                                        <div class="user">
                                            <img alt="会员" src="../DocsAssets/Image/Logo180_1.png" />
                                        </div>
                                        <div class="body">
                                            <div class="time">
                                                <i class="fa fa-clock-o fa-fw orange"></i><span class="orange">
                                                    <asp:literal runat="server" id="ltAppriseTime"></asp:literal>
                                                </span>
                                            </div>
                                            <div class="name" id="divAppriseTitle" runat="server">
                                            </div>
                                            <div class="space-10">
                                            </div>
                                            <div class="text" id="divAppriseMessage" runat="server">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
