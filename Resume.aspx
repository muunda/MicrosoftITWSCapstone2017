﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Resume" %>

<html lang="en" class=" is-copy-enabled is-u2f-enabled">
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta content="origin-when-cross-origin" name="referrer" />

    <link href="css/frameworks.css" rel="stylesheet" type="text/css" />
    <link href="css/github1.css" rel="stylesheet" type="text/css" />
    <script src="js/github1.js" type="text/javascript"></script>
    <script src="js/gframeworks.js" type="text/javascript"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=device-width">

    <title>More about me</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
</head>


<body class="logged-in  env-production windows  page-profile mine">
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>
    <div class="header header-logged-in true" role="banner">
        <div class="container clearfix">

            <a class="header-logo-invertocat" href="index.aspx" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
                <svg height="28" width="28">
                    <g id="UrTavla">
                        <circle cx="14" cy="14" r="14" fill="green" />
                        <text x="50%" y="50%" text-anchor="middle" dy=".3em">F</text>
                    </g>
                </svg>
            </a>


            <div class="header-search   js-site-search" role="search">
                <!-- </textarea> --><!-- '"` -->
            </div>
            <ul class="header-nav user-nav float-right" id="user-links">
                <li class="header-nav-item">


                </li>

                <li class="header-nav-item dropdown js-menu-container">

                </li>

                <li class="header-nav-item dropdown js-menu-container">
                </li>
            </ul>
            <ul class="header-nav float-right" role="navigation">
                <li class="header-nav-item">
                    Welcome to Frank's website
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
                    <div class="column one-fourth" itemscope itemtype="http://schema.org/Person">
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

                    </div>

                    <div class="column three-fourths">
                        <div class="new-user-avatar-cta mb-4 py-2 px-3">
                            <p class="mt-3"><strong>Contact me: </strong> I can be reached at (518) 833 - 4953 via phone or at <a href="mailto:liug4@rpi.edu">liug4@rpi.edu</a> via email.</p>
                        </div>


                        <div class="tabnav">
                            <div class="float-right">
                            </div>

                            <nav class="tabnav-tabs" data-pjax role="navigation">
                                <a href="index.aspx"
                                   class="tabnav-tab "
                                   aria-selected="false"
                                   role="tab">
                                    <svg aria-hidden="true" class="octicon octicon-person" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 14.002a.998.998 0 0 1-.998.998H1.001A1 1 0 0 1 0 13.999V13c0-2.633 4-4 4-4s.229-.409 0-1c-.841-.62-.944-1.59-1-4 .173-2.413 1.867-3 3-3s2.827.586 3 3c-.056 2.41-.159 3.38-1 4-.229.59 0 1 0 1s4 1.367 4 4v1.002z"></path></svg>
                                    Overview
                                </a>
                                <a href="resume.aspx"
                                   class="tabnav-tab selected"
                                   aria-selected="true"
                                   role="tab">
                                    <svg aria-hidden="true" class="octicon octicon-repo" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"></path></svg>
                                    More about me
                                </a>
                                <a href="hobbies.aspx"
                                   class="tabnav-tab "
                                   aria-selected="false"
                                   role="tab">
                                    <svg aria-hidden="true" class="octicon octicon-rss" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path d="M2 13H0v-2c1.11 0 2 .89 2 2zM0 3v1a9 9 0 0 1 9 9h1C10 7.48 5.52 3 0 3zm0 4v1c2.75 0 5 2.25 5 5h1c0-3.31-2.69-6-6-6z"></path></svg>
                                    My hobbies
                                </a>
                            </nav>
                        </div>

                        <div class="js-repo-filter position-relative">
                            <div class="overview-tab">
                                <div class="columns popular-repos">
                                    <div class="single-column">
                                        <div class="boxed-group flush js-pinned-repos-reorder-container">
                                            <h3>My family</h3>
                                            <div class="boxed-group-inner clearfix">
                                                <div class="single-column">
                                                    <dl class="form-group edit-profile-avatar">
                                                        <dt><label for="upload-profile-picture">In Troy</label></dt>
                                                        <dd class="avatar-upload-container clearfix">
                                                            <img style="padding:10px;height:240px;width:320px;" alt="@CodingFrank" class="avatar float-left" src="images/img_1114.jpg">
                                                            <img style="padding:10px;" alt="@CodingFrank" class="avatar float-left" height="240" src="images/img_1117.jpg" width="320">
                                                        </dd>
                                                    </dl>
                                                    <dl class="form-group edit-profile-avatar">
                                                        <dt><label for="upload-profile-picture">In Beijing</label></dt>
                                                        <dd class="avatar-upload-container clearfix">
                                                            <img style="padding:10px;" alt="@CodingFrank" class="avatar float-left" height="240" src="images/img_0993.jpg" width="320">
                                                            <img style="padding:10px;" alt="@CodingFrank" class="avatar float-left" height="240" src="images/img_0994.jpg" width="320">
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="boxed-group flush js-pinned-repos-reorder-container">
                                    <h3>
                                        Cities(places) where I had been working/living in
                                    </h3>
                                    <div class="boxed-group-inner clearfix">
                                        <div class="single-column">
                                            <dl class="form-group edit-profile-avatar">
                                                <dt><label for="upload-profile-picture">Beijing, China</label></dt>
                                                <dd class="avatar-upload-container clearfix">
                                                    <div id="map" class="avatar float-left" style="height:440px;width:100%;"></div>
                                                </dd>
                                            </dl>
                                            <dl class="form-group edit-profile-avatar">
                                                <dt><label for="upload-profile-picture">Shanghai, China</label></dt>
                                                <dd class="avatar-upload-container clearfix">
                                                    <div id="m_shanghai" class="avatar float-left" style="height:440px;width:100%;"></div>
                                                </dd>
                                            </dl>
                                            <dl class="form-group edit-profile-avatar">
                                                <dt><label for="upload-profile-picture">Taipei</label></dt>
                                                <dd class="avatar-upload-container clearfix">
                                                    <div id="m_taipei" class="avatar float-left" style="height:440px;width:100%;"></div>
                                                </dd>
                                            </dl>
                                            <dl class="form-group edit-profile-avatar">
                                                <dt><label for="upload-profile-picture">Hong Kong</label></dt>
                                                <dd class="avatar-upload-container clearfix">
                                                    <div id="m_hongkong" class="avatar float-left" style="height:440px;width:100%;"></div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>

                            </div><!-- /.overview-tab -->

                            <div id="pinned-repos-modal-wrapper"></div>

                        </div>
                    </div>

                </div>
            </div>

        </div>
        <div class="modal-backdrop js-touch-events"></div>
    </div>

    <div class="container site-footer-container">
        <div class="site-footer" role="contentinfo">
            <ul class="site-footer-links float-right"></ul>

            <a href="index.aspx" aria-label="Homepage" class="site-footer-mark" title="Homepage">
                <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24">
                    <g id="UrTavla1">
                        <circle cx="8" cy="8" r="8" fill="green" />
                        <text x="50%" y="50%" text-anchor="middle" dy=".3em">F</text>
                    </g>
                </svg>
            </a>
            <ul class="site-footer-links">
                <li>&copy; 2016 <span>Built for Software Development</span>, ITWS-6700</li>
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
    <script>
function initPano() {
  // Note: constructed panorama objects have visible: true
  // set by default.
  var panorama = new google.maps.StreetViewPanorama(
      document.getElementById('map'), {
          position: { lat: 39.906816, lng: 116.3977507 },
        addressControlOptions: {
          position: google.maps.ControlPosition.BOTTOM_CENTER
        },
        linksControl: false,
        panControl: false,
        enableCloseButton: false
      });

  var shanghai = new google.maps.StreetViewPanorama(
  document.getElementById('m_shanghai'), {
      position: { lat: 31.239958, lng: 121.4904384 },
      addressControlOptions: {
          position: google.maps.ControlPosition.BOTTOM_CENTER
      },
      linksControl: false,
      panControl: false,
      enableCloseButton: false
  });

  var taipei = new google.maps.StreetViewPanorama(
document.getElementById('m_taipei'), {
    position: { lat: 25.0404711, lng: 121.5139239 },
    addressControlOptions: {
        position: google.maps.ControlPosition.BOTTOM_CENTER
    },
    linksControl: false,
    panControl: false,
    enableCloseButton: false
});

  var hongkong = new google.maps.StreetViewPanorama(
document.getElementById('m_hongkong'), {
    position: { lat: 22.2931808, lng: 114.1742928 },
    addressControlOptions: {
        position: google.maps.ControlPosition.BOTTOM_CENTER
    },
    linksControl: false,
    panControl: false,
    enableCloseButton: false
});
}

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDSM5lbyNSbWbNd8ctlhbg3l-TRK75Qgy0&signed_in=true&callback=initPano"
            async defer>
    </script></body>

</html>