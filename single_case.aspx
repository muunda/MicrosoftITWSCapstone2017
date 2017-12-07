<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeFile="single_case.aspx.cs" Inherits="single_case" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calls</title>
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
					
					<a href="single_call.aspx?file=10">
                    <div class="col-xs-12 content-block">
                        <!--content block, contains call or case information and iconography, and sentiment indicator-->
                        <div class="content-block-wrapper-inner">
                            <div class="col-xs-11 content-info">
                                <div class="col-xs-12 content-block-titles">
                                    <div class="col-xs-6 case-title">
                                        <img src="images/phone-512.png">
                                        <h2>Call 1</h2>
                                        <h3 class="duration">00:00:49</h3>
                                    </div>
                                    <div class="col-xs-6 organization-title">
                                        <h3>
                                            <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource4">
                                                <EditItemTemplate>
                                                    SentimentScore:
                                                    <asp:TextBox ID="SentimentScoreTextBox" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    SentimentScore:
                                                    <asp:TextBox ID="SentimentScoreTextBox" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    SentimentScore:
                                                    <asp:Label ID="SentimentScoreLabel" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />

                                                </ItemTemplate>
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT [SentimentScore] FROM [CaseConversation] WHERE ([id] = @id)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="8" Name="id" Type="Int64" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </h3>
                                    </div>
                                </div>
                                <div class="col-xs-12 content-block-call">
                                    <p>
                                        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                                            <EditItemTemplate>
                                                ConversationTranscript:
                                                <asp:TextBox ID="ConversationTranscriptTextBox" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                ConversationTranscript:
                                                <asp:TextBox ID="ConversationTranscriptTextBox" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                &nbsp;<asp:Label ID="ConversationTranscriptLabel" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT [ConversationTranscript] FROM [CaseConversation] WHERE ([id] = @id)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="8" Name="id" Type="Int64" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </p>
                                </div>
                            </div>
                            <div class="col-xs-1 sentiment-indicator good">
                                <h1></h1>
                            </div>
                        </div>
                    </div>
                    </a>

                    <a href="single_call.aspx?file=10">
                    <div class="col-xs-12 content-block">
                        <!--content block, contains call or case information and iconography, and sentiment indicator-->
                        <div class="content-block-wrapper-inner">
                            <div class="col-xs-11 content-info">
                                <div class="col-xs-12 content-block-titles">
                                    <div class="col-xs-6 case-title">
                                        <img src="images/phone-512.png">
                                        <h2>Case 2</h2>
                                        <h3 class="duration">00:00:16</h3>
                                    </div>
                                    <div class="col-xs-6 organization-title">
                                        <h3>
                                            <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource5">
                                                <EditItemTemplate>
                                                    SentimentScore:
                                                    <asp:TextBox ID="SentimentScoreTextBox" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    SentimentScore:
                                                    <asp:TextBox ID="SentimentScoreTextBox" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    SentimentScore:
                                                    <asp:Label ID="SentimentScoreLabel" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />

                                                </ItemTemplate>
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT [SentimentScore] FROM [CaseConversation] WHERE ([id] = @id)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="9" Name="id" Type="Int64" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </h3>
                                    </div>
                                </div>
                                <div class="col-xs-12 content-block-call">
                                    <p>
                                        <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
                                            <EditItemTemplate>
                                                ConversationTranscript:
                                                <asp:TextBox ID="ConversationTranscriptTextBox" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                ConversationTranscript:
                                                <asp:TextBox ID="ConversationTranscriptTextBox" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                &nbsp;<asp:Label ID="ConversationTranscriptLabel" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT [ConversationTranscript] FROM [CaseConversation] WHERE ([id] = @id)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="9" Name="id" Type="Int64" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </p>
                                </div>
                            </div>
                            <div class="col-xs-1 sentiment-indicator good">
                                <h1></h1>
                            </div>
                        </div>
                    </div>
                    </a>

                    <a href="single_call.aspx?file=10">
                    <div class="col-xs-12 content-block">
                        <!--content block, contains call or case information and iconography, and sentiment indicator-->
                        <div class="content-block-wrapper-inner">
                            <div class="col-xs-11 content-info">
                                <div class="col-xs-12 content-block-titles">
                                    <div class="col-xs-6 case-title">
                                        <img src="images/phone-512.png">
                                        <h2>Call 3</h2>
                                        <h3 class="duration">00:00:16</h3>
                                    </div>
                                    <div class="col-xs-6 organization-title">
                                        <h3>
                                            <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource6">
                                                <EditItemTemplate>
                                                    SentimentScore:
                                                    <asp:TextBox ID="SentimentScoreTextBox" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    SentimentScore:
                                                    <asp:TextBox ID="SentimentScoreTextBox" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    SentimentScore:
                                                    <asp:Label ID="SentimentScoreLabel" runat="server" Text='<%# Bind("SentimentScore") %>' />
                                                    <br />

                                                </ItemTemplate>
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT [SentimentScore] FROM [CaseConversation] WHERE ([id] = @id)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="10" Name="id" Type="Int64" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </h3>
                                    </div>
                                </div>
                                <div class="col-xs-12 content-block-call">
                                    <p>
                                        <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource3">
                                            <EditItemTemplate>
                                                ConversationTranscript:
                                                <asp:TextBox ID="ConversationTranscriptTextBox" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                ConversationTranscript:
                                                <asp:TextBox ID="ConversationTranscriptTextBox" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                ConversationTranscript:
                                                <asp:Label ID="ConversationTranscriptLabel" runat="server" Text='<%# Bind("ConversationTranscript") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SD_TestConnectionString2 %>" SelectCommand="SELECT [ConversationTranscript] FROM [CaseConversation] WHERE ([id] = @id)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="10" Name="id" Type="Int64" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </p>
                                </div>
                            </div>
                            <div class="col-xs-1 sentiment-indicator good">
                                <h1></h1>
                            </div>
                        </div>
                    </div>
                    </a>
                
                </div>
				<div class="col-xs-3" id="profile-right">
					<img id="profile-image" src="images/profile-icon.png">
					<h3 id="upload-call"><a href="upload.aspx">Upload Call</a></h3>
                    <h3 id="back-link"><a href="cases.aspx?file=10">Back to Cases</a></h3>
                    <h3 id="sign-out"><a href="signin.aspx">Sign Out</a></h3>
                    <image id="sentiment-scale" src="images/SentimentScale.png"></image>
				</div>
				
			</div>
		</div>
	    </form>
	</body>
</html>
