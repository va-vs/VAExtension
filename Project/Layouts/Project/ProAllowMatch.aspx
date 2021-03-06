﻿<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProAllowMatch.aspx.cs" Inherits="Project.Layouts.Project.ProAllowMatch" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">

    <link rel="stylesheet" type="text/css" href="./css/base.css" />
    <link rel="stylesheet" type="text/css" href="./css/page.css" />

     <style type="text/css">

    .GridViewStyle
{    
    border-right: 2px solid #A7A6AA;
    border-bottom: 2px solid #A7A6AA;
    border-left: 2px solid white;
    border-top: 2px solid white;
    padding: 4px;
}
  .GridViewStyle a
{
    color: #FFFFFF;
}
  .GridViewHeaderStyle th
{
    border-left: 1px solid #EBE9ED;
    border-right: 1px solid #EBE9ED;
}
  .GridViewHeaderStyle
{
    background-color: #5D7B9D;
    font-weight: bold;
    color: White;
}
  .GridViewFooterStyle
{
    background-color: #5D7B9D;
    font-weight: bold;
    color: White;
}
  .GridViewRowStyle
{
    background-color: #F7F6F3;
    color: #333333;
}
  .GridViewAlternatingRowStyle 
{
    background-color: #FFFFFF;
    color: #284775;
}
  .GridViewRowStyle td, .GridViewAlternatingRowStyle td
{
    border: 1px solid #EBE9ED;
}
  .GridViewSelectedRowStyle
{
    background-color: #E2DED6;
    font-weight: bold;
    color: #333333;
}
  .GridViewPagerStyle
{
    background-color: #a9a9a9;
    color: #FFFFFF;
}
  .GridViewPagerStyle table /* to center the paging links*/
{
    margin: 0 auto 0 auto;
}

</style>
</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div class="comments-SubmitProfile"id="divMatch">
        <div class="comments-SubmitProfile-Titlebg">
            <div class="comments-SubmitProfile-Title">
                    <h2 style="color:yellow">已申请信息</h2>
                </div>
        </div>
        <div class="comments-SubmitProfile-content" style="border: solid 1px #8b4513">
            <asp:GridView ID="gvMatchInfo" runat="server" AllowPaging="true" PageSize="5" AutoGenerateColumns="False"
            CellPadding="0" GridLines="None" Height="30px" Width="100%" PagerSettings-Mode="NumericFirstLast"
            PagerSettings-FirstPageText="首页" PagerSettings-NextPageText="下一页" PagerSettings-PreviousPageText="上一页"
            PagerSettings-LastPageText="尾页" OnRowDataBound="gvMatchInfo_RowDataBound">
            <FooterStyle CssClass="GridViewFooterStyle" />
            <RowStyle CssClass="GridViewRowStyle" />
            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
            <PagerStyle CssClass="GridViewPagerStyle" HorizontalAlign="Center" />
            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
            <HeaderStyle CssClass="GridViewHeaderStyle" HorizontalAlign="Center" />

            <EmptyDataTemplate>
                <span style="font-family: 微软雅黑; font-size: 14px; color: red;">当前没有申请任何项目
                </span>
            </EmptyDataTemplate>

                <Columns>
                     <asp:BoundField DataField="PName" HeaderText="项目名称" ItemStyle-HorizontalAlign="Center" />                    
                     <asp:BoundField DataField="Name" HeaderText="项目负责人" ItemStyle-HorizontalAlign="Center" />
                     <asp:BoundField DataField="StateName" HeaderText="项目状态" ItemStyle-HorizontalAlign="Center"/>
                     <asp:BoundField DataField="Telephone" HeaderText="联系电话" ItemStyle-HorizontalAlign="Center" />
                     <asp:BoundField DataField="Email" HeaderText="电子邮件" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="AcceptedTime" HeaderText="回复时间" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="IsAccepted" HeaderText="申请状态" ItemStyle-HorizontalAlign="Center" />  
                </Columns>
         </asp:GridView>
    </div>
    </div>



    <div class="comments-SubmitProfile"id="AllowMatchDiv"> <%--可对接的项目列表--%>
        <div class="comments-SubmitProfile-Titlebg">
            <div class="comments-SubmitProfile-Title">
                    <h2 style="color:yellow">可对接的项目</h2>
                </div>
        </div>
        <div class="comments-SubmitProfile-content" style="border: solid 1px #8b4513">
            <asp:GridView ID="gvAllowMatch" runat="server" AllowPaging="true" PageSize="15" AutoGenerateColumns="False"
            CellPadding="0" GridLines="None" Height="30px" Width="100%" PagerSettings-Mode="NumericFirstLast"
            PagerSettings-FirstPageText="首页" PagerSettings-NextPageText="下一页" PagerSettings-PreviousPageText="上一页"
            PagerSettings-LastPageText="尾页" OnPageIndexChanging="gvAllowMatch_PageIndexChanging" OnRowDataBound="gvAllowMatch_RowDataBound" >
            <FooterStyle CssClass="GridViewFooterStyle" />
            <RowStyle CssClass="GridViewRowStyle" />
            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
            <PagerStyle CssClass="GridViewPagerStyle" HorizontalAlign="Center" />
            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
            <HeaderStyle CssClass="GridViewHeaderStyle" HorizontalAlign="Center" />

            <EmptyDataTemplate>
                <span style="font-family: 微软雅黑; font-size: 14px; color: red;">当前没有任何可对接的项目
                </span>
            </EmptyDataTemplate>

                <Columns>
                    <asp:BoundField DataField="ProjectID" HeaderText="项目ID" ItemStyle-HorizontalAlign="Center" Visible="False" />              
                <%--    <asp:HyperLinkField DataTextField="PName" HeaderText="项目名称" DataNavigateUrlFields="ProjectID"
                    DataNavigateUrlFormatString="PDetails.aspx?ProjectID={0}&pageTypeId=4" ItemStyle-HorizontalAlign="Left" Target="_blank" ItemStyle-Height="30px"/>--%>
                        <asp:TemplateField HeaderText="项目名称">
                        <ItemTemplate >
                            <asp:HyperLink ID="PNameLink" runat="server" Text='<%#Eval("PName")%>' NavigateUrl='<%# "PDetails.aspx?ProjectID="+DataBinder.Eval(Container.DataItem,"ProjectID").ToString()+"&pageTypeId=4"%>'>                                
                            </asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:BoundField DataField="SubjectName" HeaderText="所属学科" ItemStyle-HorizontalAlign="Center" />
                     <asp:BoundField DataField="CreatedDate" HeaderText="发布时间" ItemStyle-HorizontalAlign="Center"/>
                     <asp:BoundField DataField="StateName" HeaderText="项目状态" ItemStyle-HorizontalAlign="Center"/>
                     <asp:BoundField DataField="Name" HeaderText="项目负责人" ItemStyle-HorizontalAlign="Center" />
                    <asp:HyperLinkField  DataNavigateUrlFields="ProjectID" HeaderText="项目详情" Text="申请对接" ControlStyle-ForeColor="#ff6600"
                 DataNavigateUrlFormatString="PDetails.aspx?ProjectID={0}&pageTypeId=4" ItemStyle-HorizontalAlign="Center" />
                </Columns>
         </asp:GridView>
    </div>
    </div>
</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
可对接项目信息列表
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server" >
</asp:Content>
