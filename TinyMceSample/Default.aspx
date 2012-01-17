<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" ValidateRequest="false"
    CodeBehind="Default.aspx.cs" Inherits="TinyMceSample._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.tinymce.js" type="text/javascript"></script>
    
    <script type="text/javascript">
        $(function () {
            $('#<%= tinymce.ClientID %>').tinymce({
                // Location of TinyMCE script
                script_url: 'Scripts/tiny_mce.js',

                // size
                width: "800",
                height: "900",
                    
                // General options
                theme: "advanced",
                plugins: "pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

                // Theme options
                theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
                theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
                theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
                theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
                theme_advanced_toolbar_location: "top",
                theme_advanced_toolbar_align: "left",
                theme_advanced_statusbar_location: "bottom",
                theme_advanced_resizing: true,

                // Example content CSS (should be your site CSS)
                content_css: "Styles/content.css"
            });
        });
    </script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Tiny MCE Sample
    </h2>
    
    <asp:TextBox ID="tinymce" runat="server" TextMode="MultiLine"></asp:TextBox>

    <br/>

    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />


    <div style="margin-top: 2em;"><strong>What you entered:</strong></div>
    <div style="border: 1px solid black; margin: 1em 0; padding: 1em;">
        <asp:Literal ID="lit_result" runat="server"></asp:Literal>
    </div>

</asp:Content>
