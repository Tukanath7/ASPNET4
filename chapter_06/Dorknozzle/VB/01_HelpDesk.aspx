﻿<%@ Page Language="VB" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="false" CodeFile="HelpDesk.aspx.vb" Inherits="HelpDesk" title="Dorknozzle Help Desk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Employee Help Desk Request</h1>
  <p>
    Station Number:<br />
    <asp:TextBox id="stationTextBox" runat="server"
        CssClass="textbox" />
    <asp:RequiredFieldValidator id="stationNumReq" runat="server"
        ControlToValidate="stationTextBox"
        ErrorMessage="<br />You must enter a station number!"
        Display="Dynamic" />
    <asp:CompareValidator id="stationNumCheck" runat="server"
        ControlToValidate="stationTextBox"
        Operator="DataTypeCheck" Type="Integer"
        ErrorMessage="<br />The value must be a number!"
        Display="Dynamic" />
    <asp:RangeValidator id="stationNumRangeCheck" runat="server"
        ControlToValidate="stationTextBox"
        MinimumValue="1" MaximumValue="50" Type="Integer" 
        ErrorMessage="<br />Number must be between 1 and 50."
        Display="Dynamic" />
  </p>
  <p>
    Problem Category:<br />
    <asp:DropDownList id="categoryList" runat="server"
        CssClass="dropdownmenu" />
  </p>
  <p>
    Problem Subject:<br />
    <asp:DropDownList id="subjectList" runat="server"
        CssClass="dropdownmenu" />
  </p>
  <p>
    Problem Description:<br />
    <asp:TextBox id="descriptionTextBox" runat="server"
        CssClass="textbox" Columns="40" Rows="4"
        TextMode="MultiLine" />
    <asp:RequiredFieldValidator id="descriptionReq" runat="server"
       ControlToValidate="descriptionTextBox"
       ErrorMessage="<br />You must enter a description!"
       Display="Dynamic" />
  </p>
  <p>
    <asp:Button id="submitButton" runat="server"
        CssClass="button" Text="Submit Request" /></p>
</asp:Content>

