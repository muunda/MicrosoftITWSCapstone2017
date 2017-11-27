<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeFile="single_call.aspx.cs" Inherits="single_call" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WAV file is being transcribed, please be patient!</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/main-grid.css" />
		
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:600" rel="stylesheet" />
		
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-9" id="content-left"> <!-- Left 3/4 of screen dedicated to content blocks for calls or cases -->
					
					<div class="col-xs-12 content-block single-call" ><!--content block, contains call or case information and iconography, and sentiment indicator-->
						<div class="content-block-wrapper-inner">
							<div class="col-xs-11 content-info">
								<div class="col-xs-12 content-block-titles">
									<div class="col-xs-6 case-title">
										<img src="images/phone-512.png">
										<h2>Example Call</h2>
										<h3 class="duration">00:10:35</h3>
									</div>
									<div class="col-xs-6 organization-title">
										<h3>A Support Engineer</h3>
									</div>
								</div>
								<div class="col-xs-12 content-block-call">
									<p><%=Msg %></p>
								</div>
							</div>
							<div class="col-xs-1 sentiment-indicator good">
								<h1></h1>
							</div>
						</div>
					</div>
						
				</div>
				<div class="col-xs-3" id="profile-right">
					<img id="profile-image" src="images/profile-icon.png">
					<h3 id="back-link"><a href="upload.aspx">Upload another Case</a></h3>
					<h3 id="sign-out"><a href="index.aspx">Back to index</a></h3>
				</div>
				
			</div>
		</div>
	</body>
</html>
