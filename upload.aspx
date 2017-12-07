<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled is-u2f-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta content="origin-when-cross-origin" name="referrer" />
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/frameworks.css" rel="stylesheet" type="text/css" />
    <link href="css/github1.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/upload-ui.css"/>
    <script src="js/github1.js" type="text/javascript" ></script>    
    <script src="js/gframeworks.js" type="text/javascript" ></script>
    <script language="javascript" type="text/javascript">
        function showloading() {
            document.getElementsByClassName("loading").style.display = "block";
            document.getElementById("submitfile").style.display = "none";
        }
    </script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    <title>Leave a message</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
  </head>


  <body class="logged-in  env-production windows  page-profile mine">
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>
    <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">



<div class="header-search   js-site-search" role="search">
  <!-- </textarea> --><!-- '"` --></div>
<ul class="header-nav user-nav float-right" id="user-links">
  <li class="header-nav-item">
    

  </li>

  <li class="header-nav-item dropdown js-menu-container">

  </li>

  <li class="header-nav-item dropdown js-menu-container">
  </li>
</ul>
  </div>
</div>
    <div id="start-of-content" class="accessibility-aid"></div>
      <div id="js-flash-container">
</div>
    <div role="main">
      <div id="js-pjax-container" data-pjax-container>
  <div class="page-content container">
    <div class="columns profilecols">
<%--      <div class="column one-fourth" itemscope itemtype="http://schema.org/Person">
          <a href="index.aspx" aria-label="Frank is a cool guy" class="vcard-avatar d-block tooltipped tooltipped-s"><img alt="" class="avatar rounded-2" height="307" src="images/FrankLiuatMasterCup.JPG" width="230" /></a>
<h1 class="vcard-names my-3">
  <div class="vcard-fullname" itemprop="name"></div>
  <div class="vcard-username" itemprop="additionalName">Frank Liu's Home Page</div>
</h1>
  <p>
    <a href="newmessage.aspx">Leave a message</a>
  </p>
<ul class="vcard-details border-top border-gray-light py-3">
  <li aria-label="Member since" class="vcard-detail py-1 css-truncate css-truncate-target"><svg aria-hidden="true" class="octicon octicon-clock" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M8 8h3v2H7c-.55 0-1-.45-1-1V4h2v4zM7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7z"></path></svg><span class="join-label">Picture taken on </span><local-time class="join-date" datetime="2007-10-02T02:07:18Z" day="numeric" month="short" year="numeric">Oct 2, 2007</local-time></li>
</ul>


        <div class="vcard-stats border-top border-bottom border-gray-light mb-3 py-3">
          <a class="vcard-stat" href="messages.aspx">
            <strong class="vcard-stat-count d-block"><%=TtlMsg %></strong>
            <span class="text-gray">Messages</span>
          </a>
        </div>

      </div>--%>

              <div class="column three-fourths" style="box-sizing: border-box;">
        <div class="boxed-group">
        <h3>Upload the audio file for your case</h3>
        <div class="form-wrapper boxed-group-inner clearfix">
            <form id="updateForm" accept-charset="UTF-8" runat="server" method="post" class="columns js-uploadable-container js-upload-avatar-image is-default" novalidate="novalidate" enctype="multipart/form-data">
            <div class="column three-fourths">
            <dl class="form-group">
              <dt><label for="user_profile_name">Case Number</label></dt>
              <dd><input class="form-control" id="case_Number" name="case_Number"  size="30" type="text" runat="server" /></dd>
            </dl>
            <dl class="form-group">
            <dt><label for="s_jianjie">Audio File</label></dt>
            <dd><div class="avatar-upload">
      <label class="position-relative btn button-change-avatar mt-3 width-full text-center">
        Upload new audio file
        <input id="upfile" type="file" name="upfile" class="manual-file-chooser width-full height-full ml-0 js-manual-file-chooser js-avatar-field" runat="server" />

      </label>
		<input style="margin: 15px 0;" id="submitfile" type="submit" onclick="showloading(); return; " value="Submit your file"  class="btn btn-primary" name="submit" />
      <div class="upload-state loading">
        <button type="button" class="btn mt-3 width-full text-center" disabled="">
          <img alt="" class="v-align-text-bottom" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16"> Uploading...
        </button>
      </div>

      <div class="upload-state text-red file-empty">
        This file is empty.
      </div>

      <div class="upload-state text-red too-big">
        Please upload a picture smaller than 1 MB.
      </div>

      <div class="upload-state text-red bad-dimensions">
        Please upload a picture smaller than 10,000x10,000.
      </div>

      <div class="upload-state text-red bad-file">
        We only support PNG, GIF, or JPG pictures.
      </div>

      <div class="upload-state text-red failed-request">
        Something went really wrong and we can’t process that picture.
      </div>

      <div class="upload-state text-red bad-format">
        File contents don't match the file extension.
      </div>
    </div>
            </dd>
            </dl>
            </div>
            </form>
        </div>
        </div>
        </div>

    </div>
  </div>

      </div>
      <div class="modal-backdrop js-touch-events"></div>
    </div>

        <div class="container site-footer-container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links float-right">
    </ul>

    <ul class="site-footer-links">
      <li>&copy; 2017 <span >Built for RPI Capstone</span>, ITWS</li>
    </ul>
  </div>
</div>
    <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path></svg>
    </button>
  </div>
</div>

  </body>
</html>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>


<!DOCTYPE html>--%>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload your audio file...</title>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/upload-ui.css"/>
		
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:600" rel="stylesheet"/>
</head>
<body>
		<div class="form-wrapper">
			<form id="updateForm" runat="server" method="post" enctype="multipart/form-data">
				<input id="upfile" type="file" name="upfile" runat="server"/>
				<input id="submitfile" type="submit" value="Submit" name="submit" />
			</form>
		</div>
</body>
</html>--%>
