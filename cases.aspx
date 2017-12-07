<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeFile="cases.aspx.cs" Inherits="cases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cases Under Your Name</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/main-grid.css" />
		
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:600" rel="stylesheet" />
		
	</head>
	<body>
		<form id="form1" runat="server">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-9" id="content-left"> <!-- Left 3/4 of screen dedicated to content blocks for calls or cases -->
					
					<div class="col-xs-12 content-block">
                    <div class="content-block-wrapper-inner">
                        <div class="col-xs-11 content-info">
                            <div class="col-xs-12 content-block-titles">
                                <div class="col-xs-6 case-title">
                                    <img src="images/phone-512.png">
                                    <h2><a href="single_case.aspx?file=10">
                                            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                                                <EditItemTemplate>
                                                    CaseNumber:
                                            <asp:TextBox ID="CaseNumberTextBox" runat="server" Text='<%# Bind("CaseNumber") %>' />
                                                    <br />
                                                    id:
                                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    CaseNumber:
                                            <asp:TextBox ID="CaseNumberTextBox" runat="server" Text='<%# Bind("CaseNumber") %>' />
                                                    <br />

                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    Case
                                                    <asp:Label ID="CaseNumberLabel" runat="server" Text='<%# Bind("CaseNumber") %>' />
                                                    <br />

                                                </ItemTemplate>
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT DISTINCT [CaseNumber], [id] FROM [CaseConversation] ORDER BY [id]"></asp:SqlDataSource>  
                                    </a></h2>
                                    <h3 class="duration"></h3>
                                </div>
                                <div class="col-xs-6 organization-title">
                                    <h3></h3>
                                </div>
                            </div>
                            <div class="col-xs-12 content-block-call">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-xs-1 sentiment-indicator neutral">
                            <h1></h1>
                        </div>
                    </div>
                </div>
						
				    <div class="col-xs-12 content-block">
                    <div class="content-block-wrapper-inner">
                        <div class="col-xs-11 content-info">
                            <div class="col-xs-12 content-block-titles">
                                <div class="col-xs-6 case-title">
                                    <img src="images/phone-512.png">
                                    <h2><a href="single_case.aspx?file=10">
                                            <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
                                                <ItemTemplate>
                                                    Case
                                                    <asp:Label ID="CaseNumberLabel" runat="server" Text='<%# Bind("CaseNumber") %>' />
                                                    <br />

                                                </ItemTemplate>
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT [id], [CaseNumber] FROM [CaseConversation] WHERE ([id] = '9') ORDER BY [id]">
                                        </asp:SqlDataSource>  
                                    </a></h2>
                                    <h3 class="duration"></h3>
                                </div>
                                <div class="col-xs-6 organization-title">
                                    <h3></h3>
                                </div>
                            </div>
                            <div class="col-xs-12 content-block-call">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-xs-1 sentiment-indicator neutral">
                            <h1></h1>
                        </div>
                    </div>
                </div>

                    <div class="col-xs-12 content-block">
                    <div class="content-block-wrapper-inner">
                        <div class="col-xs-11 content-info">
                            <div class="col-xs-12 content-block-titles">
                                <div class="col-xs-6 case-title">
                                    <img src="images/phone-512.png">
                                    <h2><a href="single_case?file=10.aspx">
                                            <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource3">
                                                <ItemTemplate>
                                                    Case
                                                    <asp:Label ID="CaseNumberLabel" runat="server" Text='<%# Bind("CaseNumber") %>' />
                                                    <br />

                                                </ItemTemplate>
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT DISTINCT [CaseNumber], [id] FROM [CaseConversation] WHERE [id] = '10' ORDER BY [id]"></asp:SqlDataSource>  
                                    </a></h2>
                                    <h3 class="duration"></h3>
                                </div>
                                <div class="col-xs-6 organization-title">
                                    <h3></h3>
                                </div>
                            </div>
                            <div class="col-xs-12 content-block-call">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-xs-1 sentiment-indicator neutral">
                            <h1></h1>
                        </div>
                    </div>
                </div>
                
                </div>
				<div class="col-xs-3" id="profile-right">
					<img id="profile-image" src="images/profile-icon.png">
					<h3 id="back-link"><a href="upload.aspx">Upload another case</a></h3>
                    <h3 id="sign-out"><a href="signin.aspx">Sign out</a></h3>
				</div>
				
			</div>
		</div>
	    </form>
	</body>
</html>
