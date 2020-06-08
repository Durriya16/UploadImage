<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload Images.aspx.cs" Inherits="TestUploadImages.Upload_Images" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .textboxcurve {
            font-size: 11pt;
            margin-left: auto;
            margin-right: auto;
            margin-top: 1px;
            margin-bottom: 1px;
            padding: 3px;
            border-top: 1px solid;
            border-right: 1px solid;
            border-left: 1px solid;
            border-bottom: 1px solid;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
        }

    </style>



</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:floralwhite">
            <table style="align-self">
                <tr>
                    <td>
                        <br />
                        <br />
                        
                        <asp:Label ID="lbl1" Font-Size="Large" runat="server" Text="First Name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Txt1" Font-Size="Large" CssClass="textboxcurve" runat="server"></asp:TextBox>
                    <br />
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl2" Font-Size="Large" runat="server" Text="Last Name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Txt2" Font-Size="Large" CssClass="textboxcurve" runat="server"></asp:TextBox>
                   <br />
                        <br />

                    </td>
                </tr>
                
            </table>
           
            <asp:Label ID="lblImageFile" runat="server" AssociatedControlID="upImage" Text="Image File:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="upImage" Font-Size="Large" CssClass="textboxcurve" runat="server" />
            &nbsp;&nbsp;

            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnadd" Font-Size="Large" CssClass="textboxcurve" runat="server" Text="Add Image" OnClick="btnadd_Click" />

            <hr />

            <asp:DataList ID="DlistImage" RepeatColumns="4" runat="server">

                <ItemTemplate>
                    <asp:Image ID="ImageUrl" ImageUrl=' <%#Eval("Name", "~/UpImage/{0}") %>' Width="300px" Height="400px" runat="server" />

                    <br />


                </ItemTemplate>
            </asp:DataList>

            

        </div>
    </form>
</body>
</html>

