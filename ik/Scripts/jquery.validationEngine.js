





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">



  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-d876e21057f406b37686f3dc7b9666f5957cda4847a48ec11e040df065624617.css" integrity="sha256-2HbiEFf0BrN2hvPce5Zm9ZV82khHpI7BHgQN8GViRhc=" media="all" rel="stylesheet" />
  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-2d6d87ab5a8d6b952d7f76f7d5bd5a4d3a4f8472711b237ca3f15fa6d8be6ec8.css" integrity="sha256-LW2Hq1qNa5Utf3b31b1aTTpPhHJxGyN8o/Ffpti+bsg=" media="all" rel="stylesheet" />
  
  
  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/site-3666cbeb0f6b95958e476ea741ce10bd21f9f5475a43a25147df090471765ec1.css" integrity="sha256-NmbL6w9rlZWOR26nQc4QvSH59UdaQ6JRR98JBHF2XsE=" media="all" rel="stylesheet" />
  

  <meta name="viewport" content="width=device-width">
  
  <title>jQuery-Validation-Engine/jquery.validationEngine.js at master · posabsolute/jQuery-Validation-Engine · GitHub</title>
  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">


  <link rel="assets" href="https://assets-cdn.github.com/">
  
  <meta name="pjax-timeout" content="1000">
  
  <meta name="request-id" content="FFE6:529F:6533679:9D39321:58AE8EC8" data-pjax-transient>
  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

  <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
<meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="https://collector.githubapp.com/github-external/browser_event" name="octolytics-event-url" /><meta content="FFE6:529F:6533679:9D39321:58AE8EC8" name="octolytics-dimension-request_id" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />



  <meta class="js-ga-set" name="dimension1" content="Logged Out">



      <meta name="hostname" content="github.com">
  <meta name="user-login" content="">

      <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="Y2M5MzBlZWZmYTU2ZGE3NTdlMmIzYWI2MTI2ZWZiNzYxYjc2YzE2ZThkMWZjZGZjYWQ4NmVlNzViOTNhMDFlZnx7InJlbW90ZV9hZGRyZXNzIjoiMjEyLjE1Ni40My4yNTQiLCJyZXF1ZXN0X2lkIjoiRkZFNjo1MjlGOjY1MzM2Nzk6OUQzOTMyMTo1OEFFOEVDOCIsInRpbWVzdGFtcCI6MTQ4NzgzNDgyNCwiaG9zdCI6ImdpdGh1Yi5jb20ifQ==">


  <meta name="html-safe-nonce" content="6281ba581095a0223714bc4b5c6105996f2708ca">

  <meta http-equiv="x-pjax-version" content="59ae2178c7e13e9935114835bc93e3d2">
  

    
  <meta name="description" content="jQuery-Validation-Engine - jQuery form validation plugin">
  <meta name="go-import" content="github.com/posabsolute/jQuery-Validation-Engine git https://github.com/posabsolute/jQuery-Validation-Engine.git">

  <meta content="114950" name="octolytics-dimension-user_id" /><meta content="posabsolute" name="octolytics-dimension-user_login" /><meta content="276963" name="octolytics-dimension-repository_id" /><meta content="posabsolute/jQuery-Validation-Engine" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="276963" name="octolytics-dimension-repository_network_root_id" /><meta content="posabsolute/jQuery-Validation-Engine" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/posabsolute/jQuery-Validation-Engine/commits/master.atom" rel="alternate" title="Recent Commits to jQuery-Validation-Engine:master" type="application/atom+xml">


    <link rel="canonical" href="https://github.com/posabsolute/jQuery-Validation-Engine/blob/master/js/jquery.validationEngine.js" data-pjax-transient>


  <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">

  <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">

  <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#000000">
  <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

<meta name="theme-color" content="#1e2327">


  <meta name="u2f-support" content="true">

  </head>

  <body class="logged-out env-production windows vis-public page-blob">
    

  <div class="position-relative js-header-wrapper ">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>

    
    
    



          <header class="site-header js-details-container Details" role="banner">
  <div class="container-responsive">
    <a class="header-logo-invertocat" href="https://github.com/" aria-label="Homepage" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="32" version="1.1" viewBox="0 0 16 16" width="32"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
    </a>

    <button class="btn-link float-right site-header-toggle js-details-target" type="button" aria-label="Toggle navigation">
      <svg aria-hidden="true" class="octicon octicon-three-bars" height="24" version="1.1" viewBox="0 0 12 16" width="18"><path fill-rule="evenodd" d="M11.41 9H.59C0 9 0 8.59 0 8c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zm0-4H.59C0 5 0 4.59 0 4c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zM.59 11H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1H.59C0 13 0 12.59 0 12c0-.59 0-1 .59-1z"/></svg>
    </button>

    <div class="site-header-menu">
      <nav class="site-header-nav">
        <a href="/personal" class="js-selected-navigation-item nav-item" data-ga-click="Header, click, Nav menu - item:personal" data-selected-links="/personal /personal">
          Personal
</a>        <a href="/open-source" class="js-selected-navigation-item nav-item" data-ga-click="Header, click, Nav menu - item:opensource" data-selected-links="/open-source /open-source/stories /open-source">
          Open source
</a>        <a href="/business" class="js-selected-navigation-item nav-item" data-ga-click="Header, click, Nav menu - item:business" data-selected-links="/business /business/partners /business/features /business/customers /business/why-github-for-work /business/security /business">
          Business
</a>        <a href="/explore" class="js-selected-navigation-item nav-item" data-ga-click="Header, click, Nav menu - item:explore" data-selected-links="/explore /trending /trending/developers /integrations /integrations/feature/code /integrations/feature/collaborate /integrations/feature/ship /showcases /explore">
          Explore
</a>        <a href="/pricing" class="js-selected-navigation-item nav-item" data-ga-click="Header, click, Nav menu - item:pricing" data-selected-links="/pricing /pricing">
          Pricing
</a>      </nav>

      <div class="site-header-actions">
          <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/posabsolute/jQuery-Validation-Engine/search" class="js-site-search-form" data-scoped-search-url="/posabsolute/jQuery-Validation-Engine/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <label class="form-control header-search-wrapper js-chromeless-input-container">
      <div class="header-search-scope">This repository</div>
      <input type="text"
        class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
        data-hotkey="s"
        name="q"
        placeholder="Search"
        aria-label="Search this repository"
        data-unscoped-placeholder="Search GitHub"
        data-scoped-placeholder="Search"
        autocapitalize="off">
    </label>
</form></div>


          <a class="text-bold" href="/login?return_to=%2Fposabsolute%2FjQuery-Validation-Engine%2Fblob%2Fmaster%2Fjs%2Fjquery.validationEngine.js" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
            <span class="text-gray">or</span>
            <a class="text-bold" href="/join?source=header-repo" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      </div>
    </div>
  </div>
</header>


  </div>

  <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>



  <div role="main">
      <div itemscope itemtype="http://schema.org/SoftwareSourceCode">
    <div id="js-repo-pjax-container" data-pjax-container>
      


<div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav">
  <div class="container repohead-details-container">

    

<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2Fposabsolute%2FjQuery-Validation-Engine"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
    Watch
  </a>
  <a class="social-count" href="/posabsolute/jQuery-Validation-Engine/watchers"
     aria-label="211 users are watching this repository">
    211
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fposabsolute%2FjQuery-Validation-Engine"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
    Star
  </a>

    <a class="social-count js-social-count" href="/posabsolute/jQuery-Validation-Engine/stargazers"
      aria-label="2389 users starred this repository">
      2,389
    </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fposabsolute%2FjQuery-Validation-Engine"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
        Fork
      </a>

    <a href="/posabsolute/jQuery-Validation-Engine/network" class="social-count"
       aria-label="1219 users forked this repository">
      1,219
    </a>
  </li>
</ul>

    <h1 class="public ">
  <svg aria-hidden="true" class="octicon octicon-repo" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
  <span class="author" itemprop="author"><a href="/posabsolute" class="url fn" rel="author">posabsolute</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/posabsolute/jQuery-Validation-Engine" data-pjax="#js-repo-pjax-container">jQuery-Validation-Engine</a></strong>

</h1>

  </div>
  <div class="container">
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/posabsolute/jQuery-Validation-Engine" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /posabsolute/jQuery-Validation-Engine" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"/></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a href="/posabsolute/jQuery-Validation-Engine/issues" class="js-selected-navigation-item reponav-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /posabsolute/jQuery-Validation-Engine/issues" itemprop="url">
        <svg aria-hidden="true" class="octicon octicon-issue-opened" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"/></svg>
        <span itemprop="name">Issues</span>
        <span class="counter">210</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/posabsolute/jQuery-Validation-Engine/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /posabsolute/jQuery-Validation-Engine/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
      <span itemprop="name">Pull requests</span>
      <span class="counter">17</span>
      <meta itemprop="position" content="3">
</a>  </span>

  <a href="/posabsolute/jQuery-Validation-Engine/projects" class="js-selected-navigation-item reponav-item" data-selected-links="repo_projects new_repo_project repo_project /posabsolute/jQuery-Validation-Engine/projects">
    <svg aria-hidden="true" class="octicon octicon-project" height="16" version="1.1" viewBox="0 0 15 16" width="15"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
    Projects
    <span class="counter">0</span>
</a>
    <a href="/posabsolute/jQuery-Validation-Engine/wiki" class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /posabsolute/jQuery-Validation-Engine/wiki">
      <svg aria-hidden="true" class="octicon octicon-book" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"/></svg>
      Wiki
</a>

  <a href="/posabsolute/jQuery-Validation-Engine/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="pulse /posabsolute/jQuery-Validation-Engine/pulse">
    <svg aria-hidden="true" class="octicon octicon-pulse" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M11.5 8L8.8 5.4 6.6 8.5 5.5 1.6 2.38 8H0v2h3.6l.9-1.8.9 5.4L9 8.5l1.6 1.5H14V8z"/></svg>
    Pulse
</a>
  <a href="/posabsolute/jQuery-Validation-Engine/graphs" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors /posabsolute/jQuery-Validation-Engine/graphs">
    <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"/></svg>
    Graphs
</a>

</nav>

  </div>
</div>

<div class="container new-discussion-timeline experiment-repo-nav">
  <div class="repository-content">

    

<a href="/posabsolute/jQuery-Validation-Engine/blob/7ef5ea0e99a33c1d91c399ed67f8511f29313843/js/jquery.validationEngine.js" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:7762d0f065cb585e9f237c190f9a7469 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu branch-select-menu js-menu-container js-select-menu float-left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/posabsolute/jQuery-Validation-Engine/blob/gh-pages/js/jquery.validationEngine.js"
               data-name="gh-pages"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                gh-pages
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/posabsolute/jQuery-Validation-Engine/blob/master/js/jquery.validationEngine.js"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/posabsolute/jQuery-Validation-Engine/tree/2.6.4/js/jquery.validationEngine.js"
              data-name="2.6.4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="2.6.4">
                2.6.4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/posabsolute/jQuery-Validation-Engine/tree/2.6.3/js/jquery.validationEngine.js"
              data-name="2.6.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="2.6.3">
                2.6.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/posabsolute/jQuery-Validation-Engine/tree/2.6.2/js/jquery.validationEngine.js"
              data-name="2.6.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="2.6.2">
                2.6.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/posabsolute/jQuery-Validation-Engine/tree/0.1.0/js/jquery.validationEngine.js"
              data-name="0.1.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="0.1.0">
                0.1.0
              </span>
            </a>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="BtnGroup float-right">
    <a href="/posabsolute/jQuery-Validation-Engine/find/master"
          class="js-pjax-capture-input btn btn-sm BtnGroup-item"
          data-pjax
          data-hotkey="t">
      Find file
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm BtnGroup-item tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
  </div>
  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/posabsolute/jQuery-Validation-Engine"><span>jQuery-Validation-Engine</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/posabsolute/jQuery-Validation-Engine/tree/master/js"><span>js</span></a></span><span class="separator">/</span><strong class="final-path">jquery.validationEngine.js</strong>
  </div>
</div>


  <div class="commit-tease">
      <span class="float-right">
        <a class="commit-tease-sha" href="/posabsolute/jQuery-Validation-Engine/commit/6eb039a4474e084934b741550a974a6a57fa88ae" data-pjax>
          6eb039a
        </a>
        <relative-time datetime="2016-12-07T22:53:53Z">Dec 8, 2016</relative-time>
      </span>
      <div>
        <img alt="" class="avatar" data-canonical-src="https://1.gravatar.com/avatar/2215772ae7f26faaf56f1dbc00fa1726?d=https%3A%2F%2Fassets-cdn.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png&amp;r=x&amp;s=140" height="20" src="https://camo.githubusercontent.com/17d0884ec28c2a4623b146a661b10e2bacaa9b46/68747470733a2f2f312e67726176617461722e636f6d2f6176617461722f32323135373732616537663236666161663536663164626330306661313732363f643d68747470732533412532462532466173736574732d63646e2e6769746875622e636f6d253246696d6167657325324667726176617461727325324667726176617461722d757365722d3432302e706e6726723d7826733d313430" width="20" />
        <span class="user-mention">Ryan Ip</span>
          <a href="/posabsolute/jQuery-Validation-Engine/commit/6eb039a4474e084934b741550a974a6a57fa88ae" class="message" data-pjax="true" title="Change .size() to .length since .size() is deprecated after jQuery1.8">Change .size() to .length since .size() is deprecated after jQuery1.8</a>
      </div>

    <div class="commit-tease-contributors">
      <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
        <strong>95</strong>
         contributors
      </button>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="posabsolute" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=posabsolute"><img alt="@posabsolute" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/114950?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="orefalo" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=orefalo"><img alt="@orefalo" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/52085?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="SamJBarney" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=SamJBarney"><img alt="@SamJBarney" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/1827860?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="owenallenaz" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=owenallenaz"><img alt="@owenallenaz" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/1087603?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="musicm122" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=musicm122"><img alt="@musicm122" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/725185?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="krasu" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=krasu"><img alt="@krasu" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/175968?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="rhafner" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=rhafner"><img alt="@rhafner" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/2380594?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="amuniz" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=amuniz"><img alt="@amuniz" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/1017585?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tfevens" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=tfevens"><img alt="@tfevens" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/701763?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="harobed" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=harobed"><img alt="@harobed" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/230143?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="sphenk" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=sphenk"><img alt="@sphenk" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/3337862?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="sharkey3" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=sharkey3"><img alt="@sharkey3" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/622236?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="nerdymike25" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=nerdymike25"><img alt="@nerdymike25" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/1945225?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="lamuzzachiodi" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=lamuzzachiodi"><img alt="@lamuzzachiodi" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/714225?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="krio-rogue" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=krio-rogue"><img alt="@krio-rogue" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/842834?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="jgonera" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=jgonera"><img alt="@jgonera" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/223481?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="ClemRz" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=ClemRz"><img alt="@ClemRz" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/1130946?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="everplays" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=everplays"><img alt="@everplays" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/194719?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="wwadge" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=wwadge"><img alt="@wwadge" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/152416?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="thomaspierson" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=thomaspierson"><img alt="@thomaspierson" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/606745?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="wchristian" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=wchristian"><img alt="@wchristian" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/175467?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tomotomo" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=tomotomo"><img alt="@tomotomo" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/530352?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="unki2aut" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=unki2aut"><img alt="@unki2aut" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/851207?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="turuflowers" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=turuflowers"><img alt="@turuflowers" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/913147?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tomchiverton" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=tomchiverton"><img alt="@tomchiverton" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/684204?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="iskander78" href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js?author=iskander78"><img alt="@iskander78" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/7320899?v=3&amp;s=40" width="20" /> </a>

    <button type="button" data-facebox="#blob_contributors_box" class="btn-link others-text">and others</button>

    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@posabsolute" height="24" src="https://avatars1.githubusercontent.com/u/114950?v=3&amp;s=48" width="24" />
            <a href="/posabsolute">posabsolute</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@orefalo" height="24" src="https://avatars3.githubusercontent.com/u/52085?v=3&amp;s=48" width="24" />
            <a href="/orefalo">orefalo</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@SamJBarney" height="24" src="https://avatars3.githubusercontent.com/u/1827860?v=3&amp;s=48" width="24" />
            <a href="/SamJBarney">SamJBarney</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@owenallenaz" height="24" src="https://avatars1.githubusercontent.com/u/1087603?v=3&amp;s=48" width="24" />
            <a href="/owenallenaz">owenallenaz</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@musicm122" height="24" src="https://avatars0.githubusercontent.com/u/725185?v=3&amp;s=48" width="24" />
            <a href="/musicm122">musicm122</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@krasu" height="24" src="https://avatars3.githubusercontent.com/u/175968?v=3&amp;s=48" width="24" />
            <a href="/krasu">krasu</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@rhafner" height="24" src="https://avatars2.githubusercontent.com/u/2380594?v=3&amp;s=48" width="24" />
            <a href="/rhafner">rhafner</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@amuniz" height="24" src="https://avatars3.githubusercontent.com/u/1017585?v=3&amp;s=48" width="24" />
            <a href="/amuniz">amuniz</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tfevens" height="24" src="https://avatars2.githubusercontent.com/u/701763?v=3&amp;s=48" width="24" />
            <a href="/tfevens">tfevens</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@harobed" height="24" src="https://avatars2.githubusercontent.com/u/230143?v=3&amp;s=48" width="24" />
            <a href="/harobed">harobed</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@sphenk" height="24" src="https://avatars1.githubusercontent.com/u/3337862?v=3&amp;s=48" width="24" />
            <a href="/sphenk">sphenk</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@sharkey3" height="24" src="https://avatars3.githubusercontent.com/u/622236?v=3&amp;s=48" width="24" />
            <a href="/sharkey3">sharkey3</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@nerdymike25" height="24" src="https://avatars1.githubusercontent.com/u/1945225?v=3&amp;s=48" width="24" />
            <a href="/nerdymike25">nerdymike25</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@lamuzzachiodi" height="24" src="https://avatars2.githubusercontent.com/u/714225?v=3&amp;s=48" width="24" />
            <a href="/lamuzzachiodi">lamuzzachiodi</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@krio-rogue" height="24" src="https://avatars0.githubusercontent.com/u/842834?v=3&amp;s=48" width="24" />
            <a href="/krio-rogue">krio-rogue</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@jgonera" height="24" src="https://avatars0.githubusercontent.com/u/223481?v=3&amp;s=48" width="24" />
            <a href="/jgonera">jgonera</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@ClemRz" height="24" src="https://avatars3.githubusercontent.com/u/1130946?v=3&amp;s=48" width="24" />
            <a href="/ClemRz">ClemRz</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@everplays" height="24" src="https://avatars1.githubusercontent.com/u/194719?v=3&amp;s=48" width="24" />
            <a href="/everplays">everplays</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@wwadge" height="24" src="https://avatars0.githubusercontent.com/u/152416?v=3&amp;s=48" width="24" />
            <a href="/wwadge">wwadge</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@thomaspierson" height="24" src="https://avatars0.githubusercontent.com/u/606745?v=3&amp;s=48" width="24" />
            <a href="/thomaspierson">thomaspierson</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@wchristian" height="24" src="https://avatars0.githubusercontent.com/u/175467?v=3&amp;s=48" width="24" />
            <a href="/wchristian">wchristian</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tomotomo" height="24" src="https://avatars1.githubusercontent.com/u/530352?v=3&amp;s=48" width="24" />
            <a href="/tomotomo">tomotomo</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@unki2aut" height="24" src="https://avatars3.githubusercontent.com/u/851207?v=3&amp;s=48" width="24" />
            <a href="/unki2aut">unki2aut</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@turuflowers" height="24" src="https://avatars1.githubusercontent.com/u/913147?v=3&amp;s=48" width="24" />
            <a href="/turuflowers">turuflowers</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tomchiverton" height="24" src="https://avatars1.githubusercontent.com/u/684204?v=3&amp;s=48" width="24" />
            <a href="/tomchiverton">tomchiverton</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@iskander78" height="24" src="https://avatars1.githubusercontent.com/u/7320899?v=3&amp;s=48" width="24" />
            <a href="/iskander78">iskander78</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@ToshikiYamamoto" height="24" src="https://avatars3.githubusercontent.com/u/12194483?v=3&amp;s=48" width="24" />
            <a href="/ToshikiYamamoto">ToshikiYamamoto</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@swashata" height="24" src="https://avatars2.githubusercontent.com/u/1623381?v=3&amp;s=48" width="24" />
            <a href="/swashata">swashata</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@Stephn-R" height="24" src="https://avatars2.githubusercontent.com/u/5117415?v=3&amp;s=48" width="24" />
            <a href="/Stephn-R">Stephn-R</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@stayaliver" height="24" src="https://avatars2.githubusercontent.com/u/486470?v=3&amp;s=48" width="24" />
            <a href="/stayaliver">stayaliver</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@manningd" height="24" src="https://avatars0.githubusercontent.com/u/6551225?v=3&amp;s=48" width="24" />
            <a href="/manningd">manningd</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@m157y" height="24" src="https://avatars0.githubusercontent.com/u/429152?v=3&amp;s=48" width="24" />
            <a href="/m157y">m157y</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@RaginValdr" height="24" src="https://avatars0.githubusercontent.com/u/1789457?v=3&amp;s=48" width="24" />
            <a href="/RaginValdr">RaginValdr</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@petercowan" height="24" src="https://avatars3.githubusercontent.com/u/185713?v=3&amp;s=48" width="24" />
            <a href="/petercowan">petercowan</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@pavlo-sof" height="24" src="https://avatars0.githubusercontent.com/u/1051116?v=3&amp;s=48" width="24" />
            <a href="/pavlo-sof">pavlo-sof</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@pauloortins" height="24" src="https://avatars1.githubusercontent.com/u/1145643?v=3&amp;s=48" width="24" />
            <a href="/pauloortins">pauloortins</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@co-operation" height="24" src="https://avatars3.githubusercontent.com/u/946376?v=3&amp;s=48" width="24" />
            <a href="/co-operation">co-operation</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@mingliangfeng" height="24" src="https://avatars2.githubusercontent.com/u/2775574?v=3&amp;s=48" width="24" />
            <a href="/mingliangfeng">mingliangfeng</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@mikhailov" height="24" src="https://avatars2.githubusercontent.com/u/14601?v=3&amp;s=48" width="24" />
            <a href="/mikhailov">mikhailov</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@mikehoague" height="24" src="https://avatars0.githubusercontent.com/u/1469674?v=3&amp;s=48" width="24" />
            <a href="/mikehoague">mikehoague</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@mecik" height="24" src="https://avatars2.githubusercontent.com/u/94429?v=3&amp;s=48" width="24" />
            <a href="/mecik">mecik</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@donmax" height="24" src="https://avatars0.githubusercontent.com/u/1027177?v=3&amp;s=48" width="24" />
            <a href="/donmax">donmax</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@KevinSjoberg" height="24" src="https://avatars2.githubusercontent.com/u/503025?v=3&amp;s=48" width="24" />
            <a href="/KevinSjoberg">KevinSjoberg</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@karol-gontarski" height="24" src="https://avatars1.githubusercontent.com/u/844448?v=3&amp;s=48" width="24" />
            <a href="/karol-gontarski">karol-gontarski</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@janerikmai" height="24" src="https://avatars3.githubusercontent.com/u/2346648?v=3&amp;s=48" width="24" />
            <a href="/janerikmai">janerikmai</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@iStefo" height="24" src="https://avatars1.githubusercontent.com/u/768764?v=3&amp;s=48" width="24" />
            <a href="/iStefo">iStefo</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@Invis1ble" height="24" src="https://avatars1.githubusercontent.com/u/1710944?v=3&amp;s=48" width="24" />
            <a href="/Invis1ble">Invis1ble</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@iaesaudi" height="24" src="https://avatars3.githubusercontent.com/u/11377260?v=3&amp;s=48" width="24" />
            <a href="/iaesaudi">iaesaudi</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@hermanho" height="24" src="https://avatars1.githubusercontent.com/u/2337380?v=3&amp;s=48" width="24" />
            <a href="/hermanho">hermanho</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@filipac" height="24" src="https://avatars3.githubusercontent.com/u/271155?v=3&amp;s=48" width="24" />
            <a href="/filipac">filipac</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@hackle" height="24" src="https://avatars2.githubusercontent.com/u/3759593?v=3&amp;s=48" width="24" />
            <a href="/hackle">hackle</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@xlouder" height="24" src="https://avatars0.githubusercontent.com/u/521114?v=3&amp;s=48" width="24" />
            <a href="/xlouder">xlouder</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@bygiro" height="24" src="https://avatars2.githubusercontent.com/u/2846390?v=3&amp;s=48" width="24" />
            <a href="/bygiro">bygiro</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@gRoberts84" height="24" src="https://avatars1.githubusercontent.com/u/348184?v=3&amp;s=48" width="24" />
            <a href="/gRoberts84">gRoberts84</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@cfsghost" height="24" src="https://avatars3.githubusercontent.com/u/252072?v=3&amp;s=48" width="24" />
            <a href="/cfsghost">cfsghost</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@frntz" height="24" src="https://avatars3.githubusercontent.com/u/1089245?v=3&amp;s=48" width="24" />
            <a href="/frntz">frntz</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@mafl" height="24" src="https://avatars1.githubusercontent.com/u/1123001?v=3&amp;s=48" width="24" />
            <a href="/mafl">mafl</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@iceddante" height="24" src="https://avatars2.githubusercontent.com/u/6844829?v=3&amp;s=48" width="24" />
            <a href="/iceddante">iceddante</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@deMoneIrk" height="24" src="https://avatars0.githubusercontent.com/u/1300455?v=3&amp;s=48" width="24" />
            <a href="/deMoneIrk">deMoneIrk</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@abfan1127" height="24" src="https://avatars1.githubusercontent.com/u/242785?v=3&amp;s=48" width="24" />
            <a href="/abfan1127">abfan1127</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@elisherer" height="24" src="https://avatars3.githubusercontent.com/u/1045347?v=3&amp;s=48" width="24" />
            <a href="/elisherer">elisherer</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@dstream" height="24" src="https://avatars2.githubusercontent.com/u/4602123?v=3&amp;s=48" width="24" />
            <a href="/dstream">dstream</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@driesvints" height="24" src="https://avatars1.githubusercontent.com/u/594614?v=3&amp;s=48" width="24" />
            <a href="/driesvints">driesvints</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@dtaniwaki" height="24" src="https://avatars3.githubusercontent.com/u/1162120?v=3&amp;s=48" width="24" />
            <a href="/dtaniwaki">dtaniwaki</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@chrismist" height="24" src="https://avatars2.githubusercontent.com/u/1089886?v=3&amp;s=48" width="24" />
            <a href="/chrismist">chrismist</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@chip" height="24" src="https://avatars0.githubusercontent.com/u/31725?v=3&amp;s=48" width="24" />
            <a href="/chip">chip</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@harbulot" height="24" src="https://avatars0.githubusercontent.com/u/80994?v=3&amp;s=48" width="24" />
            <a href="/harbulot">harbulot</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@angelk" height="24" src="https://avatars2.githubusercontent.com/u/1329009?v=3&amp;s=48" width="24" />
            <a href="/angelk">angelk</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@adjohu" height="24" src="https://avatars3.githubusercontent.com/u/655857?v=3&amp;s=48" width="24" />
            <a href="/adjohu">adjohu</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@Arney" height="24" src="https://avatars2.githubusercontent.com/u/3841641?v=3&amp;s=48" width="24" />
            <a href="/Arney">Arney</a>
          </li>
      </ul>
    </div>
  </div>


<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/posabsolute/jQuery-Validation-Engine/raw/master/js/jquery.validationEngine.js" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/posabsolute/jQuery-Validation-Engine/blame/master/js/jquery.validationEngine.js" class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b">Blame</a>
      <a href="/posabsolute/jQuery-Validation-Engine/commits/master/js/jquery.validationEngine.js" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
    </div>

        <a class="btn-octicon tooltipped tooltipped-nw"
           href="https://windows.github.com"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:windows">
            <svg aria-hidden="true" class="octicon octicon-device-desktop" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M15 2H1c-.55 0-1 .45-1 1v9c0 .55.45 1 1 1h5.34c-.25.61-.86 1.39-2.34 2h8c-1.48-.61-2.09-1.39-2.34-2H15c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 9H1V3h14v8z"/></svg>
        </a>

        <button type="button" class="btn-octicon disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
        </button>
        <button type="button" class="btn-octicon btn-octicon-danger disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
        </button>
  </div>

  <div class="file-info">
      2161 lines (1959 sloc)
      <span class="file-info-divider"></span>
    74.2 KB
  </div>
</div>

  

  <div itemprop="text" class="blob-wrapper data type-javascript">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c"><span class="pl-c">/*</span></span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * Inline Form Validation Engine 2.6.2, jQuery plugin</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> *</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * Copyright(c) 2010, Cedric Dugas</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * http://www.position-absolute.com</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> *</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * 2.0 Rewrite by Olivier Refalo</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * http://www.crionics.com</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> *</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * Form validation engine allowing custom regex rules to be added.</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * Licensed under the MIT License</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line"> (<span class="pl-k">function</span>(<span class="pl-smi">$</span>) {</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line">	<span class="pl-s"><span class="pl-pds">&quot;</span>use strict<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line">	<span class="pl-k">var</span> methods <span class="pl-k">=</span> {</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Kind of the constructor, called before any action</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span> <span class="pl-smi">user</span> options</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">init</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>) <span class="pl-k">||</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>) <span class="pl-k">==</span> <span class="pl-c1">null</span> ) {</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line">				options <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_saveOptions</span>(form, options);</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> bind all formError elements to close on click</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">$</span>(<span class="pl-c1">document</span>).<span class="pl-en">on</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>click<span class="pl-pds">&quot;</span></span>, <span class="pl-s"><span class="pl-pds">&quot;</span>.formError<span class="pl-pds">&quot;</span></span>, <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">					<span class="pl-en">$</span>(<span class="pl-c1">this</span>).<span class="pl-en">fadeOut</span>(<span class="pl-c1">150</span>, <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> remove prompt once invisible</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">						<span class="pl-en">$</span>(<span class="pl-c1">this</span>).<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.formError<span class="pl-pds">&#39;</span></span>).<span class="pl-c1">remove</span>();</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">					});</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">				});</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Attachs jQuery.validationEngine to form.submit and field.blur events</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Takes an optional params: a list of options</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* ie. jQuery(&quot;#formID1&quot;).validationEngine(&#39;attach&#39;, {promptPosition : &quot;centerRight&quot;});</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">attach</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">userOptions</span>) {</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> options;</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(userOptions)</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line">				options <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_saveOptions</span>(form, userOptions);</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">				options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span> <span class="pl-k">=</span> (<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>[data-validation-engine*=validate]<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">length</span>) <span class="pl-k">?</span> <span class="pl-s"><span class="pl-pds">&quot;</span>data-validation-engine<span class="pl-pds">&quot;</span></span> <span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>class<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">binded</span>) {</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> delegate fields</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">form</span>.<span class="pl-en">on</span>(<span class="pl-smi">options</span>.<span class="pl-smi">validationEventTrigger</span>, <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=validate]:not([type=checkbox]):not([type=radio]):not(.datepicker)<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_onFieldEvent</span>);</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">form</span>.<span class="pl-en">on</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>click<span class="pl-pds">&quot;</span></span>, <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=validate][type=checkbox],[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=validate][type=radio]<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_onFieldEvent</span>);</td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">form</span>.<span class="pl-en">on</span>(<span class="pl-smi">options</span>.<span class="pl-smi">validationEventTrigger</span>,<span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=validate][class*=datepicker]<span class="pl-pds">&quot;</span></span>, {<span class="pl-s"><span class="pl-pds">&quot;</span>delay<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">300</span>}, <span class="pl-smi">methods</span>.<span class="pl-smi">_onFieldEvent</span>);</td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">autoPositionUpdate</span>) {</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">$</span>(<span class="pl-c1">window</span>).<span class="pl-en">bind</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>resize<span class="pl-pds">&quot;</span></span>, {</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>noAnimation<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>formElem<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> form</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">				}, <span class="pl-smi">methods</span>.<span class="pl-smi">updatePromptsPosition</span>);</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">on</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>click<span class="pl-pds">&quot;</span></span>,<span class="pl-s"><span class="pl-pds">&quot;</span>a[data-validation-engine-skip], a[class*=&#39;validate-skip&#39;], button[data-validation-engine-skip], button[class*=&#39;validate-skip&#39;], input[data-validation-engine-skip], input[class*=&#39;validate-skip&#39;]<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_submitButtonClick</span>);</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">removeData</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv_submitButton<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> bind form.submit</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">on</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>submit<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_onSubmitEvent</span>);</td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Unregisters any bindings that may point to jQuery.validaitonEngine</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">detach</span><span class="pl-k">:</span> <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> unbind fields</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">off</span>(<span class="pl-smi">options</span>.<span class="pl-smi">validationEventTrigger</span>, <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=validate]:not([type=checkbox]):not([type=radio]):not(.datepicker)<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_onFieldEvent</span>);</td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">off</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>click<span class="pl-pds">&quot;</span></span>, <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=validate][type=checkbox],[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=validate][type=radio]<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_onFieldEvent</span>);</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">off</span>(<span class="pl-smi">options</span>.<span class="pl-smi">validationEventTrigger</span>,<span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=validate][class*=datepicker]<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_onFieldEvent</span>);</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> unbind form.submit</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">off</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>submit<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_onSubmitEvent</span>);</td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">removeData</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">off</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>click<span class="pl-pds">&quot;</span></span>, <span class="pl-s"><span class="pl-pds">&quot;</span>a[data-validation-engine-skip], a[class*=&#39;validate-skip&#39;], button[data-validation-engine-skip], button[class*=&#39;validate-skip&#39;], input[data-validation-engine-skip], input[class*=&#39;validate-skip&#39;]<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">_submitButtonClick</span>);</td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">removeData</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv_submitButton<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">autoPositionUpdate</span>)</td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">$</span>(<span class="pl-c1">window</span>).<span class="pl-en">off</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>resize<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">methods</span>.<span class="pl-smi">updatePromptsPosition</span>);</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Validates either a form or a list of fields, shows prompts accordingly.</span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Note: There is no ajax form validation with this method, only field ajax validation are evaluated</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> true if the form validates, false if it fails</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">validate</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">userOptions</span>) {</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> element <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>);</td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> valid <span class="pl-k">=</span> <span class="pl-c1">null</span>;</td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> options;</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">element</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>form<span class="pl-pds">&quot;</span></span>) <span class="pl-k">||</span> <span class="pl-smi">element</span>.<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>validationEngineContainer<span class="pl-pds">&quot;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">element</span>.<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>validating<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> form is already validating.</span></td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> Should abort old validation and start new one. I don&#39;t know how to implement it.</span></td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line">				} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">element</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>validating<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span>(userOptions)</td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">						options <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_saveOptions</span>(element, userOptions);</td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line">						options <span class="pl-k">=</span> <span class="pl-smi">element</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> valid <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_validateFields</span>(<span class="pl-c1">this</span>);</td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> If the form doesn&#39;t validate, clear the &#39;validating&#39; class before the user has a chance to submit again</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line">					<span class="pl-c1">setTimeout</span>(<span class="pl-k">function</span>(){</td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">element</span>.<span class="pl-en">removeClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>validating<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line">					}, <span class="pl-c1">100</span>);</td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (valid <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">onSuccess</span>) {</td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-en">onSuccess</span>();</td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line">					} <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-k">!</span>valid <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">onFailure</span>) {</td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-en">onFailure</span>();</td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-smi">element</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form<span class="pl-pds">&#39;</span></span>) <span class="pl-k">||</span> <span class="pl-smi">element</span>.<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>validationEngineContainer<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">element</span>.<span class="pl-en">removeClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>validating<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> field validation</span></td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code blob-code-inner js-file-line">		                <span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-smi">element</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form, .validationEngineContainer<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code blob-code-inner js-file-line">		                options <span class="pl-k">=</span> (<span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>)) <span class="pl-k">?</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>) <span class="pl-k">:</span> <span class="pl-smi">$</span>.<span class="pl-smi">validationEngine</span>.<span class="pl-smi">defaults</span>;</td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code blob-code-inner js-file-line">		                valid <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_validateField</span>(element, options);</td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code blob-code-inner js-file-line">		                <span class="pl-k">if</span> (valid <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">onFieldSuccess</span>)</td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code blob-code-inner js-file-line">		                    <span class="pl-smi">options</span>.<span class="pl-en">onFieldSuccess</span>();</td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code blob-code-inner js-file-line">		                <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">onFieldFailure</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">InvalidFields</span>.<span class="pl-c1">length</span> <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>) {</td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code blob-code-inner js-file-line">		                    <span class="pl-smi">options</span>.<span class="pl-en">onFieldFailure</span>();</td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code blob-code-inner js-file-line">		                }</td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code blob-code-inner js-file-line">		                <span class="pl-k">return</span> <span class="pl-k">!</span>valid;</td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">onValidationComplete</span>) {</td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> !! ensures that an undefined return is interpreted as return false but allows a onValidationComplete() to possibly return true and have form continue processing</span></td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-k">!!</span><span class="pl-smi">options</span>.<span class="pl-en">onValidationComplete</span>(form, valid);</td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> valid;</td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*  Redraw prompts position, useful when you change the DOM state when validating</span></td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">updatePromptsPosition</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-c1">event</span>) {</td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-c1">event</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-c1">this</span> <span class="pl-k">==</span> <span class="pl-c1">window</span>) {</td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-c1">event</span>.<span class="pl-c1">data</span>.<span class="pl-smi">formElem</span>;</td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> noAnimation <span class="pl-k">=</span> <span class="pl-c1">event</span>.<span class="pl-c1">data</span>.<span class="pl-smi">noAnimation</span>;</td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form, .validationEngineContainer<span class="pl-pds">&#39;</span></span>));</td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> No option, take default one</span></td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span>options)</td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code blob-code-inner js-file-line">				options <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_saveOptions</span>(form, options);</td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>[<span class="pl-pds">&#39;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&#39;</span>*=validate]<span class="pl-pds">&#39;</span></span>).<span class="pl-en">not</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:disabled<span class="pl-pds">&quot;</span></span>).<span class="pl-en">each</span>(<span class="pl-k">function</span>(){</td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>);</td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">prettySelect</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">field</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:hidden<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code blob-code-inner js-file-line">				  field <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">usePrefix</span> <span class="pl-k">+</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>id<span class="pl-pds">&#39;</span></span>) <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">useSuffix</span>);</td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> prompt <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getPrompt</span>(field);</td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> promptText <span class="pl-k">=</span> <span class="pl-en">$</span>(prompt).<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>.formErrorContent<span class="pl-pds">&quot;</span></span>).<span class="pl-en">html</span>();</td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span>(prompt)</td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">methods</span>.<span class="pl-en">_updatePrompt</span>(field, <span class="pl-en">$</span>(prompt), promptText, <span class="pl-c1">undefined</span>, <span class="pl-c1">false</span>, options, noAnimation);</td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code blob-code-inner js-file-line">			});</td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Displays a prompt on a element.</span></td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Note that the element needs an id!</span></td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">promptText</span> html text to display type</span></td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">type</span> the type of bubble: &#39;pass&#39; (green), &#39;load&#39; (black) anything else (red)</span></td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">possible</span> values topLeft, topRight, bottomLeft, centerRight, bottomRight</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">showPrompt</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">promptText</span>, <span class="pl-smi">type</span>, <span class="pl-smi">promptPosition</span>, <span class="pl-smi">showArrow</span>) {</td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-c1">this</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form, .validationEngineContainer<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L193" class="blob-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> No option, take default one</span></td>
      </tr>
      <tr>
        <td id="L194" class="blob-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-k">!</span>options)</td>
      </tr>
      <tr>
        <td id="L195" class="blob-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-code blob-code-inner js-file-line">				options <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_saveOptions</span>(<span class="pl-c1">this</span>, options);</td>
      </tr>
      <tr>
        <td id="L196" class="blob-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(promptPosition)</td>
      </tr>
      <tr>
        <td id="L197" class="blob-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">options</span>.<span class="pl-smi">promptPosition</span><span class="pl-k">=</span>promptPosition;</td>
      </tr>
      <tr>
        <td id="L198" class="blob-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> showArrow<span class="pl-k">==</span><span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L199" class="blob-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L200" class="blob-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">methods</span>.<span class="pl-en">_showPrompt</span>(<span class="pl-c1">this</span>, promptText, type, <span class="pl-c1">false</span>, options);</td>
      </tr>
      <tr>
        <td id="L201" class="blob-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L202" class="blob-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L203" class="blob-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L204" class="blob-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Closes form error prompts, CAN be invidual</span></td>
      </tr>
      <tr>
        <td id="L205" class="blob-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L206" class="blob-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">hide</span><span class="pl-k">:</span> <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L207" class="blob-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>).<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form, .validationEngineContainer<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L208" class="blob-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L209" class="blob-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> No option, take default one</span></td>
      </tr>
      <tr>
        <td id="L210" class="blob-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (<span class="pl-k">!</span>options)</td>
      </tr>
      <tr>
        <td id="L211" class="blob-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-code blob-code-inner js-file-line">				options <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_saveOptions</span>(form, options);</td>
      </tr>
      <tr>
        <td id="L212" class="blob-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> fadeDuration <span class="pl-k">=</span> (options <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">fadeDuration</span>) <span class="pl-k">?</span> <span class="pl-smi">options</span>.<span class="pl-smi">fadeDuration</span> <span class="pl-k">:</span> <span class="pl-c1">0.3</span>;</td>
      </tr>
      <tr>
        <td id="L213" class="blob-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> closingtag;</td>
      </tr>
      <tr>
        <td id="L214" class="blob-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L215" class="blob-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span>(<span class="pl-smi">form</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>form<span class="pl-pds">&quot;</span></span>) <span class="pl-k">||</span> <span class="pl-smi">form</span>.<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>validationEngineContainer<span class="pl-pds">&quot;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L216" class="blob-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-code blob-code-inner js-file-line">				 closingtag <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>parentForm<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">methods</span>.<span class="pl-en">_getClassName</span>(<span class="pl-en">$</span>(form).<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L217" class="blob-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-code blob-code-inner js-file-line">			 } <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L218" class="blob-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-code blob-code-inner js-file-line">				 closingtag <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getClassName</span>(<span class="pl-en">$</span>(form).<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>)) <span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>formError<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L219" class="blob-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L220" class="blob-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-code blob-code-inner js-file-line">			 <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.<span class="pl-pds">&#39;</span></span><span class="pl-k">+</span>closingtag).<span class="pl-en">fadeTo</span>(fadeDuration, <span class="pl-c1">0</span>, <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L221" class="blob-num js-line-number" data-line-number="221"></td>
        <td id="LC221" class="blob-code blob-code-inner js-file-line">				 <span class="pl-en">$</span>(<span class="pl-c1">this</span>).<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.formError<span class="pl-pds">&#39;</span></span>).<span class="pl-c1">remove</span>();</td>
      </tr>
      <tr>
        <td id="L222" class="blob-num js-line-number" data-line-number="222"></td>
        <td id="LC222" class="blob-code blob-code-inner js-file-line">			 });</td>
      </tr>
      <tr>
        <td id="L223" class="blob-num js-line-number" data-line-number="223"></td>
        <td id="LC223" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">return</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L224" class="blob-num js-line-number" data-line-number="224"></td>
        <td id="LC224" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L225" class="blob-num js-line-number" data-line-number="225"></td>
        <td id="LC225" class="blob-code blob-code-inner js-file-line">		 <span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L226" class="blob-num js-line-number" data-line-number="226"></td>
        <td id="LC226" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 * Closes all error prompts on the page</span></td>
      </tr>
      <tr>
        <td id="L227" class="blob-num js-line-number" data-line-number="227"></td>
        <td id="LC227" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L228" class="blob-num js-line-number" data-line-number="228"></td>
        <td id="LC228" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">hideAll</span><span class="pl-k">:</span> <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L229" class="blob-num js-line-number" data-line-number="229"></td>
        <td id="LC229" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L230" class="blob-num js-line-number" data-line-number="230"></td>
        <td id="LC230" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L231" class="blob-num js-line-number" data-line-number="231"></td>
        <td id="LC231" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> duration <span class="pl-k">=</span> options <span class="pl-k">?</span> <span class="pl-smi">options</span>.<span class="pl-smi">fadeDuration</span><span class="pl-k">:</span><span class="pl-c1">300</span>;</td>
      </tr>
      <tr>
        <td id="L232" class="blob-num js-line-number" data-line-number="232"></td>
        <td id="LC232" class="blob-code blob-code-inner js-file-line">			 <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.formError<span class="pl-pds">&#39;</span></span>).<span class="pl-en">fadeTo</span>(duration, <span class="pl-c1">0</span>, <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L233" class="blob-num js-line-number" data-line-number="233"></td>
        <td id="LC233" class="blob-code blob-code-inner js-file-line">				 <span class="pl-en">$</span>(<span class="pl-c1">this</span>).<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.formError<span class="pl-pds">&#39;</span></span>).<span class="pl-c1">remove</span>();</td>
      </tr>
      <tr>
        <td id="L234" class="blob-num js-line-number" data-line-number="234"></td>
        <td id="LC234" class="blob-code blob-code-inner js-file-line">			 });</td>
      </tr>
      <tr>
        <td id="L235" class="blob-num js-line-number" data-line-number="235"></td>
        <td id="LC235" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">return</span> <span class="pl-c1">this</span>;</td>
      </tr>
      <tr>
        <td id="L236" class="blob-num js-line-number" data-line-number="236"></td>
        <td id="LC236" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L237" class="blob-num js-line-number" data-line-number="237"></td>
        <td id="LC237" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L238" class="blob-num js-line-number" data-line-number="238"></td>
        <td id="LC238" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Typically called when user exists a field using tab or a mouse click, triggers a field</span></td>
      </tr>
      <tr>
        <td id="L239" class="blob-num js-line-number" data-line-number="239"></td>
        <td id="LC239" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* validation</span></td>
      </tr>
      <tr>
        <td id="L240" class="blob-num js-line-number" data-line-number="240"></td>
        <td id="LC240" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L241" class="blob-num js-line-number" data-line-number="241"></td>
        <td id="LC241" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_onFieldEvent</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-c1">event</span>) {</td>
      </tr>
      <tr>
        <td id="L242" class="blob-num js-line-number" data-line-number="242"></td>
        <td id="LC242" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>);</td>
      </tr>
      <tr>
        <td id="L243" class="blob-num js-line-number" data-line-number="243"></td>
        <td id="LC243" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form, .validationEngineContainer<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L244" class="blob-num js-line-number" data-line-number="244"></td>
        <td id="LC244" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L245" class="blob-num js-line-number" data-line-number="245"></td>
        <td id="LC245" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> No option, take default one</span></td>
      </tr>
      <tr>
        <td id="L246" class="blob-num js-line-number" data-line-number="246"></td>
        <td id="LC246" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span>options)</td>
      </tr>
      <tr>
        <td id="L247" class="blob-num js-line-number" data-line-number="247"></td>
        <td id="LC247" class="blob-code blob-code-inner js-file-line">				options <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_saveOptions</span>(form, options);</td>
      </tr>
      <tr>
        <td id="L248" class="blob-num js-line-number" data-line-number="248"></td>
        <td id="LC248" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">options</span>.<span class="pl-smi">eventTrigger</span> <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>field<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L249" class="blob-num js-line-number" data-line-number="249"></td>
        <td id="LC249" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L250" class="blob-num js-line-number" data-line-number="250"></td>
        <td id="LC250" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">notEmpty</span> <span class="pl-k">==</span> <span class="pl-c1">true</span>){</td>
      </tr>
      <tr>
        <td id="L251" class="blob-num js-line-number" data-line-number="251"></td>
        <td id="LC251" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L252" class="blob-num js-line-number" data-line-number="252"></td>
        <td id="LC252" class="blob-code blob-code-inner js-file-line">                <span class="pl-k">if</span>(<span class="pl-smi">field</span>.<span class="pl-en">val</span>().<span class="pl-c1">length</span> <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>){</td>
      </tr>
      <tr>
        <td id="L253" class="blob-num js-line-number" data-line-number="253"></td>
        <td id="LC253" class="blob-code blob-code-inner js-file-line">                    <span class="pl-c"><span class="pl-c">//</span> validate the current field</span></td>
      </tr>
      <tr>
        <td id="L254" class="blob-num js-line-number" data-line-number="254"></td>
        <td id="LC254" class="blob-code blob-code-inner js-file-line">                    <span class="pl-c1">window</span>.<span class="pl-en">setTimeout</span>(<span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L255" class="blob-num js-line-number" data-line-number="255"></td>
        <td id="LC255" class="blob-code blob-code-inner js-file-line">                        <span class="pl-smi">methods</span>.<span class="pl-en">_validateField</span>(field, options);</td>
      </tr>
      <tr>
        <td id="L256" class="blob-num js-line-number" data-line-number="256"></td>
        <td id="LC256" class="blob-code blob-code-inner js-file-line">                    }, (<span class="pl-c1">event</span>.<span class="pl-c1">data</span>) <span class="pl-k">?</span> <span class="pl-c1">event</span>.<span class="pl-c1">data</span>.<span class="pl-smi">delay</span> <span class="pl-k">:</span> <span class="pl-c1">0</span>);</td>
      </tr>
      <tr>
        <td id="L257" class="blob-num js-line-number" data-line-number="257"></td>
        <td id="LC257" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L258" class="blob-num js-line-number" data-line-number="258"></td>
        <td id="LC258" class="blob-code blob-code-inner js-file-line">                }</td>
      </tr>
      <tr>
        <td id="L259" class="blob-num js-line-number" data-line-number="259"></td>
        <td id="LC259" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L260" class="blob-num js-line-number" data-line-number="260"></td>
        <td id="LC260" class="blob-code blob-code-inner js-file-line">            }<span class="pl-k">else</span>{</td>
      </tr>
      <tr>
        <td id="L261" class="blob-num js-line-number" data-line-number="261"></td>
        <td id="LC261" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L262" class="blob-num js-line-number" data-line-number="262"></td>
        <td id="LC262" class="blob-code blob-code-inner js-file-line">                <span class="pl-c"><span class="pl-c">//</span> validate the current field</span></td>
      </tr>
      <tr>
        <td id="L263" class="blob-num js-line-number" data-line-number="263"></td>
        <td id="LC263" class="blob-code blob-code-inner js-file-line">                <span class="pl-c1">window</span>.<span class="pl-en">setTimeout</span>(<span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L264" class="blob-num js-line-number" data-line-number="264"></td>
        <td id="LC264" class="blob-code blob-code-inner js-file-line">                    <span class="pl-smi">methods</span>.<span class="pl-en">_validateField</span>(field, options);</td>
      </tr>
      <tr>
        <td id="L265" class="blob-num js-line-number" data-line-number="265"></td>
        <td id="LC265" class="blob-code blob-code-inner js-file-line">                }, (<span class="pl-c1">event</span>.<span class="pl-c1">data</span>) <span class="pl-k">?</span> <span class="pl-c1">event</span>.<span class="pl-c1">data</span>.<span class="pl-smi">delay</span> <span class="pl-k">:</span> <span class="pl-c1">0</span>);</td>
      </tr>
      <tr>
        <td id="L266" class="blob-num js-line-number" data-line-number="266"></td>
        <td id="LC266" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L267" class="blob-num js-line-number" data-line-number="267"></td>
        <td id="LC267" class="blob-code blob-code-inner js-file-line">            }</td>
      </tr>
      <tr>
        <td id="L268" class="blob-num js-line-number" data-line-number="268"></td>
        <td id="LC268" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L269" class="blob-num js-line-number" data-line-number="269"></td>
        <td id="LC269" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L270" class="blob-num js-line-number" data-line-number="270"></td>
        <td id="LC270" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L271" class="blob-num js-line-number" data-line-number="271"></td>
        <td id="LC271" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L272" class="blob-num js-line-number" data-line-number="272"></td>
        <td id="LC272" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L273" class="blob-num js-line-number" data-line-number="273"></td>
        <td id="LC273" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L274" class="blob-num js-line-number" data-line-number="274"></td>
        <td id="LC274" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Called when the form is submited, shows prompts accordingly</span></td>
      </tr>
      <tr>
        <td id="L275" class="blob-num js-line-number" data-line-number="275"></td>
        <td id="LC275" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L276" class="blob-num js-line-number" data-line-number="276"></td>
        <td id="LC276" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L277" class="blob-num js-line-number" data-line-number="277"></td>
        <td id="LC277" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            form</span></td>
      </tr>
      <tr>
        <td id="L278" class="blob-num js-line-number" data-line-number="278"></td>
        <td id="LC278" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> false if form submission needs to be cancelled</span></td>
      </tr>
      <tr>
        <td id="L279" class="blob-num js-line-number" data-line-number="279"></td>
        <td id="LC279" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L280" class="blob-num js-line-number" data-line-number="280"></td>
        <td id="LC280" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_onSubmitEvent</span><span class="pl-k">:</span> <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L281" class="blob-num js-line-number" data-line-number="281"></td>
        <td id="LC281" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>);</td>
      </tr>
      <tr>
        <td id="L282" class="blob-num js-line-number" data-line-number="282"></td>
        <td id="LC282" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L283" class="blob-num js-line-number" data-line-number="283"></td>
        <td id="LC283" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L284" class="blob-num js-line-number" data-line-number="284"></td>
        <td id="LC284" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>check if it is trigger from skipped button</span></td>
      </tr>
      <tr>
        <td id="L285" class="blob-num js-line-number" data-line-number="285"></td>
        <td id="LC285" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv_submitButton<span class="pl-pds">&quot;</span></span>)){</td>
      </tr>
      <tr>
        <td id="L286" class="blob-num js-line-number" data-line-number="286"></td>
        <td id="LC286" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> submitButton <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv_submitButton<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L287" class="blob-num js-line-number" data-line-number="287"></td>
        <td id="LC287" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (submitButton){</td>
      </tr>
      <tr>
        <td id="L288" class="blob-num js-line-number" data-line-number="288"></td>
        <td id="LC288" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-smi">submitButton</span>.<span class="pl-c1">length</span> <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>){</td>
      </tr>
      <tr>
        <td id="L289" class="blob-num js-line-number" data-line-number="289"></td>
        <td id="LC289" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (<span class="pl-smi">submitButton</span>.<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>validate-skip<span class="pl-pds">&quot;</span></span>) <span class="pl-k">||</span> <span class="pl-smi">submitButton</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>data-validation-engine-skip<span class="pl-pds">&quot;</span></span>) <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>true<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L290" class="blob-num js-line-number" data-line-number="290"></td>
        <td id="LC290" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">return</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L291" class="blob-num js-line-number" data-line-number="291"></td>
        <td id="LC291" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L292" class="blob-num js-line-number" data-line-number="292"></td>
        <td id="LC292" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L293" class="blob-num js-line-number" data-line-number="293"></td>
        <td id="LC293" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L294" class="blob-num js-line-number" data-line-number="294"></td>
        <td id="LC294" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L295" class="blob-num js-line-number" data-line-number="295"></td>
        <td id="LC295" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">options</span>.<span class="pl-smi">eventTrigger</span> <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>submit<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L296" class="blob-num js-line-number" data-line-number="296"></td>
        <td id="LC296" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L297" class="blob-num js-line-number" data-line-number="297"></td>
        <td id="LC297" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> validate each field</span></td>
      </tr>
      <tr>
        <td id="L298" class="blob-num js-line-number" data-line-number="298"></td>
        <td id="LC298" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> (- skip field ajax validation, not necessary IF we will perform an ajax form validation)</span></td>
      </tr>
      <tr>
        <td id="L299" class="blob-num js-line-number" data-line-number="299"></td>
        <td id="LC299" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> r<span class="pl-k">=</span><span class="pl-smi">methods</span>.<span class="pl-en">_validateFields</span>(form);</td>
      </tr>
      <tr>
        <td id="L300" class="blob-num js-line-number" data-line-number="300"></td>
        <td id="LC300" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L301" class="blob-num js-line-number" data-line-number="301"></td>
        <td id="LC301" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (r <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">ajaxFormValidation</span>) {</td>
      </tr>
      <tr>
        <td id="L302" class="blob-num js-line-number" data-line-number="302"></td>
        <td id="LC302" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">methods</span>.<span class="pl-en">_validateFormWithAjax</span>(form, options);</td>
      </tr>
      <tr>
        <td id="L303" class="blob-num js-line-number" data-line-number="303"></td>
        <td id="LC303" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> cancel form auto-submission - process with async call onAjaxFormComplete</span></td>
      </tr>
      <tr>
        <td id="L304" class="blob-num js-line-number" data-line-number="304"></td>
        <td id="LC304" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L305" class="blob-num js-line-number" data-line-number="305"></td>
        <td id="LC305" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L306" class="blob-num js-line-number" data-line-number="306"></td>
        <td id="LC306" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L307" class="blob-num js-line-number" data-line-number="307"></td>
        <td id="LC307" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">onValidationComplete</span>) {</td>
      </tr>
      <tr>
        <td id="L308" class="blob-num js-line-number" data-line-number="308"></td>
        <td id="LC308" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> !! ensures that an undefined return is interpreted as return false but allows a onValidationComplete() to possibly return true and have form continue processing</span></td>
      </tr>
      <tr>
        <td id="L309" class="blob-num js-line-number" data-line-number="309"></td>
        <td id="LC309" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-k">!!</span><span class="pl-smi">options</span>.<span class="pl-en">onValidationComplete</span>(form, r);</td>
      </tr>
      <tr>
        <td id="L310" class="blob-num js-line-number" data-line-number="310"></td>
        <td id="LC310" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L311" class="blob-num js-line-number" data-line-number="311"></td>
        <td id="LC311" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> r;</td>
      </tr>
      <tr>
        <td id="L312" class="blob-num js-line-number" data-line-number="312"></td>
        <td id="LC312" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L313" class="blob-num js-line-number" data-line-number="313"></td>
        <td id="LC313" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L314" class="blob-num js-line-number" data-line-number="314"></td>
        <td id="LC314" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Return true if the ajax field validations passed so far</span></td>
      </tr>
      <tr>
        <td id="L315" class="blob-num js-line-number" data-line-number="315"></td>
        <td id="LC315" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Object}</span> <span class="pl-smi">options</span></span></td>
      </tr>
      <tr>
        <td id="L316" class="blob-num js-line-number" data-line-number="316"></td>
        <td id="LC316" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> true, is all ajax validation passed so far (remember ajax is async)</span></td>
      </tr>
      <tr>
        <td id="L317" class="blob-num js-line-number" data-line-number="317"></td>
        <td id="LC317" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L318" class="blob-num js-line-number" data-line-number="318"></td>
        <td id="LC318" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_checkAjaxStatus</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L319" class="blob-num js-line-number" data-line-number="319"></td>
        <td id="LC319" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> status <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L320" class="blob-num js-line-number" data-line-number="320"></td>
        <td id="LC320" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">$</span>.<span class="pl-en">each</span>(<span class="pl-smi">options</span>.<span class="pl-smi">ajaxValidCache</span>, <span class="pl-k">function</span>(<span class="pl-smi">key</span>, <span class="pl-smi">value</span>) {</td>
      </tr>
      <tr>
        <td id="L321" class="blob-num js-line-number" data-line-number="321"></td>
        <td id="LC321" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-k">!</span>value) {</td>
      </tr>
      <tr>
        <td id="L322" class="blob-num js-line-number" data-line-number="322"></td>
        <td id="LC322" class="blob-code blob-code-inner js-file-line">					status <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L323" class="blob-num js-line-number" data-line-number="323"></td>
        <td id="LC323" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> break the each</span></td>
      </tr>
      <tr>
        <td id="L324" class="blob-num js-line-number" data-line-number="324"></td>
        <td id="LC324" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L325" class="blob-num js-line-number" data-line-number="325"></td>
        <td id="LC325" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L326" class="blob-num js-line-number" data-line-number="326"></td>
        <td id="LC326" class="blob-code blob-code-inner js-file-line">			});</td>
      </tr>
      <tr>
        <td id="L327" class="blob-num js-line-number" data-line-number="327"></td>
        <td id="LC327" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> status;</td>
      </tr>
      <tr>
        <td id="L328" class="blob-num js-line-number" data-line-number="328"></td>
        <td id="LC328" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L329" class="blob-num js-line-number" data-line-number="329"></td>
        <td id="LC329" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L330" class="blob-num js-line-number" data-line-number="330"></td>
        <td id="LC330" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L331" class="blob-num js-line-number" data-line-number="331"></td>
        <td id="LC331" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Return true if the ajax field is validated</span></td>
      </tr>
      <tr>
        <td id="L332" class="blob-num js-line-number" data-line-number="332"></td>
        <td id="LC332" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">fieldid</span></span></td>
      </tr>
      <tr>
        <td id="L333" class="blob-num js-line-number" data-line-number="333"></td>
        <td id="LC333" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Object}</span> <span class="pl-smi">options</span></span></td>
      </tr>
      <tr>
        <td id="L334" class="blob-num js-line-number" data-line-number="334"></td>
        <td id="LC334" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> true, if validation passed, false if false or doesn&#39;t exist</span></td>
      </tr>
      <tr>
        <td id="L335" class="blob-num js-line-number" data-line-number="335"></td>
        <td id="LC335" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L336" class="blob-num js-line-number" data-line-number="336"></td>
        <td id="LC336" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_checkAjaxFieldStatus</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">fieldid</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L337" class="blob-num js-line-number" data-line-number="337"></td>
        <td id="LC337" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">ajaxValidCache</span>[fieldid] <span class="pl-k">==</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L338" class="blob-num js-line-number" data-line-number="338"></td>
        <td id="LC338" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L339" class="blob-num js-line-number" data-line-number="339"></td>
        <td id="LC339" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L340" class="blob-num js-line-number" data-line-number="340"></td>
        <td id="LC340" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Validates form fields, shows prompts accordingly</span></td>
      </tr>
      <tr>
        <td id="L341" class="blob-num js-line-number" data-line-number="341"></td>
        <td id="LC341" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L342" class="blob-num js-line-number" data-line-number="342"></td>
        <td id="LC342" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L343" class="blob-num js-line-number" data-line-number="343"></td>
        <td id="LC343" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            form</span></td>
      </tr>
      <tr>
        <td id="L344" class="blob-num js-line-number" data-line-number="344"></td>
        <td id="LC344" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{skipAjaxFieldValidation}</span></span></td>
      </tr>
      <tr>
        <td id="L345" class="blob-num js-line-number" data-line-number="345"></td>
        <td id="LC345" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            boolean - when set to true, ajax field validation is skipped, typically used when the submit button is clicked</span></td>
      </tr>
      <tr>
        <td id="L346" class="blob-num js-line-number" data-line-number="346"></td>
        <td id="LC346" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L347" class="blob-num js-line-number" data-line-number="347"></td>
        <td id="LC347" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> true if form is valid, false if not, undefined if ajax form validation is done</span></td>
      </tr>
      <tr>
        <td id="L348" class="blob-num js-line-number" data-line-number="348"></td>
        <td id="LC348" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L349" class="blob-num js-line-number" data-line-number="349"></td>
        <td id="LC349" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_validateFields</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">form</span>) {</td>
      </tr>
      <tr>
        <td id="L350" class="blob-num js-line-number" data-line-number="350"></td>
        <td id="LC350" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> options <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L351" class="blob-num js-line-number" data-line-number="351"></td>
        <td id="LC351" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L352" class="blob-num js-line-number" data-line-number="352"></td>
        <td id="LC352" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> this variable is set to true if an error is found</span></td>
      </tr>
      <tr>
        <td id="L353" class="blob-num js-line-number" data-line-number="353"></td>
        <td id="LC353" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> errorFound <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L354" class="blob-num js-line-number" data-line-number="354"></td>
        <td id="LC354" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L355" class="blob-num js-line-number" data-line-number="355"></td>
        <td id="LC355" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> Trigger hook, start validation</span></td>
      </tr>
      <tr>
        <td id="L356" class="blob-num js-line-number" data-line-number="356"></td>
        <td id="LC356" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">trigger</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv.form.validating<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L357" class="blob-num js-line-number" data-line-number="357"></td>
        <td id="LC357" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> first, evaluate status of non ajax fields</span></td>
      </tr>
      <tr>
        <td id="L358" class="blob-num js-line-number" data-line-number="358"></td>
        <td id="LC358" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> first_err<span class="pl-k">=</span><span class="pl-c1">null</span>;</td>
      </tr>
      <tr>
        <td id="L359" class="blob-num js-line-number" data-line-number="359"></td>
        <td id="LC359" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>[<span class="pl-pds">&#39;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&#39;</span>*=validate]<span class="pl-pds">&#39;</span></span>).<span class="pl-en">not</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:disabled<span class="pl-pds">&quot;</span></span>).<span class="pl-en">each</span>( <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L360" class="blob-num js-line-number" data-line-number="360"></td>
        <td id="LC360" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>);</td>
      </tr>
      <tr>
        <td id="L361" class="blob-num js-line-number" data-line-number="361"></td>
        <td id="LC361" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> names <span class="pl-k">=</span> [];</td>
      </tr>
      <tr>
        <td id="L362" class="blob-num js-line-number" data-line-number="362"></td>
        <td id="LC362" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">$</span>.<span class="pl-en">inArray</span>(<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>name<span class="pl-pds">&#39;</span></span>), names) <span class="pl-k">&lt;</span> <span class="pl-c1">0</span>) {</td>
      </tr>
      <tr>
        <td id="L363" class="blob-num js-line-number" data-line-number="363"></td>
        <td id="LC363" class="blob-code blob-code-inner js-file-line">					errorFound <span class="pl-k">|=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_validateField</span>(field, options);</td>
      </tr>
      <tr>
        <td id="L364" class="blob-num js-line-number" data-line-number="364"></td>
        <td id="LC364" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (errorFound <span class="pl-k">&amp;&amp;</span> first_err<span class="pl-k">==</span><span class="pl-c1">null</span>)</td>
      </tr>
      <tr>
        <td id="L365" class="blob-num js-line-number" data-line-number="365"></td>
        <td id="LC365" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (<span class="pl-smi">field</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:hidden<span class="pl-pds">&quot;</span></span>) <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">prettySelect</span>)</td>
      </tr>
      <tr>
        <td id="L366" class="blob-num js-line-number" data-line-number="366"></td>
        <td id="LC366" class="blob-code blob-code-inner js-file-line">							first_err <span class="pl-k">=</span> field <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">usePrefix</span> <span class="pl-k">+</span> <span class="pl-smi">methods</span>.<span class="pl-en">_jqSelector</span>(<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>id<span class="pl-pds">&#39;</span></span>)) <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">useSuffix</span>);</td>
      </tr>
      <tr>
        <td id="L367" class="blob-num js-line-number" data-line-number="367"></td>
        <td id="LC367" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L368" class="blob-num js-line-number" data-line-number="368"></td>
        <td id="LC368" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L369" class="blob-num js-line-number" data-line-number="369"></td>
        <td id="LC369" class="blob-code blob-code-inner js-file-line">							<span class="pl-c"><span class="pl-c">//</span>Check if we need to adjust what element to show the prompt on</span></td>
      </tr>
      <tr>
        <td id="L370" class="blob-num js-line-number" data-line-number="370"></td>
        <td id="LC370" class="blob-code blob-code-inner js-file-line">							<span class="pl-c"><span class="pl-c">//</span>and and such scroll to instead</span></td>
      </tr>
      <tr>
        <td id="L371" class="blob-num js-line-number" data-line-number="371"></td>
        <td id="LC371" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">if</span>(<span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv-prompt-at<span class="pl-pds">&#39;</span></span>) <span class="pl-k">instanceof</span> jQuery ){</td>
      </tr>
      <tr>
        <td id="L372" class="blob-num js-line-number" data-line-number="372"></td>
        <td id="LC372" class="blob-code blob-code-inner js-file-line">								field <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv-prompt-at<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L373" class="blob-num js-line-number" data-line-number="373"></td>
        <td id="LC373" class="blob-code blob-code-inner js-file-line">							} <span class="pl-k">else</span> <span class="pl-k">if</span>(<span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv-prompt-at<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L374" class="blob-num js-line-number" data-line-number="374"></td>
        <td id="LC374" class="blob-code blob-code-inner js-file-line">								field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv-prompt-at<span class="pl-pds">&#39;</span></span>));</td>
      </tr>
      <tr>
        <td id="L375" class="blob-num js-line-number" data-line-number="375"></td>
        <td id="LC375" class="blob-code blob-code-inner js-file-line">							}</td>
      </tr>
      <tr>
        <td id="L376" class="blob-num js-line-number" data-line-number="376"></td>
        <td id="LC376" class="blob-code blob-code-inner js-file-line">							first_err<span class="pl-k">=</span>field;</td>
      </tr>
      <tr>
        <td id="L377" class="blob-num js-line-number" data-line-number="377"></td>
        <td id="LC377" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L378" class="blob-num js-line-number" data-line-number="378"></td>
        <td id="LC378" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">doNotShowAllErrosOnSubmit</span>)</td>
      </tr>
      <tr>
        <td id="L379" class="blob-num js-line-number" data-line-number="379"></td>
        <td id="LC379" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L380" class="blob-num js-line-number" data-line-number="380"></td>
        <td id="LC380" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">names</span>.<span class="pl-c1">push</span>(<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>name<span class="pl-pds">&#39;</span></span>));</td>
      </tr>
      <tr>
        <td id="L381" class="blob-num js-line-number" data-line-number="381"></td>
        <td id="LC381" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L382" class="blob-num js-line-number" data-line-number="382"></td>
        <td id="LC382" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span>if option set, stop checking validation rules after one error is found</span></td>
      </tr>
      <tr>
        <td id="L383" class="blob-num js-line-number" data-line-number="383"></td>
        <td id="LC383" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">showOneMessage</span> <span class="pl-k">==</span> <span class="pl-c1">true</span> <span class="pl-k">&amp;&amp;</span> errorFound){</td>
      </tr>
      <tr>
        <td id="L384" class="blob-num js-line-number" data-line-number="384"></td>
        <td id="LC384" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L385" class="blob-num js-line-number" data-line-number="385"></td>
        <td id="LC385" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L386" class="blob-num js-line-number" data-line-number="386"></td>
        <td id="LC386" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L387" class="blob-num js-line-number" data-line-number="387"></td>
        <td id="LC387" class="blob-code blob-code-inner js-file-line">			});</td>
      </tr>
      <tr>
        <td id="L388" class="blob-num js-line-number" data-line-number="388"></td>
        <td id="LC388" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L389" class="blob-num js-line-number" data-line-number="389"></td>
        <td id="LC389" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> second, check to see if all ajax calls completed ok</span></td>
      </tr>
      <tr>
        <td id="L390" class="blob-num js-line-number" data-line-number="390"></td>
        <td id="LC390" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> errorFound |= !methods._checkAjaxStatus(options);</span></td>
      </tr>
      <tr>
        <td id="L391" class="blob-num js-line-number" data-line-number="391"></td>
        <td id="LC391" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L392" class="blob-num js-line-number" data-line-number="392"></td>
        <td id="LC392" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> third, check status and scroll the container accordingly</span></td>
      </tr>
      <tr>
        <td id="L393" class="blob-num js-line-number" data-line-number="393"></td>
        <td id="LC393" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">form</span>.<span class="pl-en">trigger</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv.form.result<span class="pl-pds">&quot;</span></span>, [errorFound]);</td>
      </tr>
      <tr>
        <td id="L394" class="blob-num js-line-number" data-line-number="394"></td>
        <td id="LC394" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L395" class="blob-num js-line-number" data-line-number="395"></td>
        <td id="LC395" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (errorFound) {</td>
      </tr>
      <tr>
        <td id="L396" class="blob-num js-line-number" data-line-number="396"></td>
        <td id="LC396" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">scroll</span>) {</td>
      </tr>
      <tr>
        <td id="L397" class="blob-num js-line-number" data-line-number="397"></td>
        <td id="LC397" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> destination<span class="pl-k">=</span><span class="pl-smi">first_err</span>.<span class="pl-en">offset</span>().<span class="pl-c1">top</span>;</td>
      </tr>
      <tr>
        <td id="L398" class="blob-num js-line-number" data-line-number="398"></td>
        <td id="LC398" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> fixleft <span class="pl-k">=</span> <span class="pl-smi">first_err</span>.<span class="pl-en">offset</span>().<span class="pl-c1">left</span>;</td>
      </tr>
      <tr>
        <td id="L399" class="blob-num js-line-number" data-line-number="399"></td>
        <td id="LC399" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L400" class="blob-num js-line-number" data-line-number="400"></td>
        <td id="LC400" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span>prompt positioning adjustment support. Usage: positionType:Xshift,Yshift (for ex.: bottomLeft:+20 or bottomLeft:-20,+10)</span></td>
      </tr>
      <tr>
        <td id="L401" class="blob-num js-line-number" data-line-number="401"></td>
        <td id="LC401" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> positionType<span class="pl-k">=</span><span class="pl-smi">options</span>.<span class="pl-smi">promptPosition</span>;</td>
      </tr>
      <tr>
        <td id="L402" class="blob-num js-line-number" data-line-number="402"></td>
        <td id="LC402" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-k">typeof</span>(positionType)<span class="pl-k">==</span><span class="pl-s"><span class="pl-pds">&#39;</span>string<span class="pl-pds">&#39;</span></span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">positionType</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span>)<span class="pl-k">!=</span><span class="pl-k">-</span><span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L403" class="blob-num js-line-number" data-line-number="403"></td>
        <td id="LC403" class="blob-code blob-code-inner js-file-line">						positionType<span class="pl-k">=</span><span class="pl-smi">positionType</span>.<span class="pl-c1">substring</span>(<span class="pl-c1">0</span>,<span class="pl-smi">positionType</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L404" class="blob-num js-line-number" data-line-number="404"></td>
        <td id="LC404" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L405" class="blob-num js-line-number" data-line-number="405"></td>
        <td id="LC405" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (positionType<span class="pl-k">!=</span><span class="pl-s"><span class="pl-pds">&quot;</span>bottomRight<span class="pl-pds">&quot;</span></span> <span class="pl-k">&amp;&amp;</span> positionType<span class="pl-k">!=</span><span class="pl-s"><span class="pl-pds">&quot;</span>bottomLeft<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L406" class="blob-num js-line-number" data-line-number="406"></td>
        <td id="LC406" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> prompt_err<span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getPrompt</span>(first_err);</td>
      </tr>
      <tr>
        <td id="L407" class="blob-num js-line-number" data-line-number="407"></td>
        <td id="LC407" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (prompt_err) {</td>
      </tr>
      <tr>
        <td id="L408" class="blob-num js-line-number" data-line-number="408"></td>
        <td id="LC408" class="blob-code blob-code-inner js-file-line">							destination<span class="pl-k">=</span><span class="pl-smi">prompt_err</span>.<span class="pl-en">offset</span>().<span class="pl-c1">top</span>;</td>
      </tr>
      <tr>
        <td id="L409" class="blob-num js-line-number" data-line-number="409"></td>
        <td id="LC409" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L410" class="blob-num js-line-number" data-line-number="410"></td>
        <td id="LC410" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L411" class="blob-num js-line-number" data-line-number="411"></td>
        <td id="LC411" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L412" class="blob-num js-line-number" data-line-number="412"></td>
        <td id="LC412" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> Offset the amount the page scrolls by an amount in px to accomodate fixed elements at top of page</span></td>
      </tr>
      <tr>
        <td id="L413" class="blob-num js-line-number" data-line-number="413"></td>
        <td id="LC413" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">scrollOffset</span>) {</td>
      </tr>
      <tr>
        <td id="L414" class="blob-num js-line-number" data-line-number="414"></td>
        <td id="LC414" class="blob-code blob-code-inner js-file-line">						destination <span class="pl-k">-=</span> <span class="pl-smi">options</span>.<span class="pl-smi">scrollOffset</span>;</td>
      </tr>
      <tr>
        <td id="L415" class="blob-num js-line-number" data-line-number="415"></td>
        <td id="LC415" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L416" class="blob-num js-line-number" data-line-number="416"></td>
        <td id="LC416" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L417" class="blob-num js-line-number" data-line-number="417"></td>
        <td id="LC417" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> get the position of the first error, there should be at least one, no need to check this</span></td>
      </tr>
      <tr>
        <td id="L418" class="blob-num js-line-number" data-line-number="418"></td>
        <td id="LC418" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span>var destination = form.find(&quot;.formError:not(&#39;.greenPopup&#39;):first&quot;).offset().top;</span></td>
      </tr>
      <tr>
        <td id="L419" class="blob-num js-line-number" data-line-number="419"></td>
        <td id="LC419" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">isOverflown</span>) {</td>
      </tr>
      <tr>
        <td id="L420" class="blob-num js-line-number" data-line-number="420"></td>
        <td id="LC420" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> overflowDIV <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">options</span>.<span class="pl-smi">overflownDIV</span>);</td>
      </tr>
      <tr>
        <td id="L421" class="blob-num js-line-number" data-line-number="421"></td>
        <td id="LC421" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span>(<span class="pl-k">!</span><span class="pl-smi">overflowDIV</span>.<span class="pl-c1">length</span>) <span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L422" class="blob-num js-line-number" data-line-number="422"></td>
        <td id="LC422" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> scrollContainerScroll <span class="pl-k">=</span> <span class="pl-smi">overflowDIV</span>.<span class="pl-en">scrollTop</span>();</td>
      </tr>
      <tr>
        <td id="L423" class="blob-num js-line-number" data-line-number="423"></td>
        <td id="LC423" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> scrollContainerPos <span class="pl-k">=</span> <span class="pl-k">-</span><span class="pl-c1">parseInt</span>(<span class="pl-smi">overflowDIV</span>.<span class="pl-en">offset</span>().<span class="pl-c1">top</span>);</td>
      </tr>
      <tr>
        <td id="L424" class="blob-num js-line-number" data-line-number="424"></td>
        <td id="LC424" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L425" class="blob-num js-line-number" data-line-number="425"></td>
        <td id="LC425" class="blob-code blob-code-inner js-file-line">						destination <span class="pl-k">+=</span> scrollContainerScroll <span class="pl-k">+</span> scrollContainerPos <span class="pl-k">-</span> <span class="pl-c1">5</span>;</td>
      </tr>
      <tr>
        <td id="L426" class="blob-num js-line-number" data-line-number="426"></td>
        <td id="LC426" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> scrollContainer <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">options</span>.<span class="pl-smi">overflownDIV</span>).<span class="pl-en">filter</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:not(:animated)<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L427" class="blob-num js-line-number" data-line-number="427"></td>
        <td id="LC427" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L428" class="blob-num js-line-number" data-line-number="428"></td>
        <td id="LC428" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">scrollContainer</span>.<span class="pl-c1">animate</span>({ scrollTop<span class="pl-k">:</span> destination }, <span class="pl-c1">1100</span>, <span class="pl-k">function</span>(){</td>
      </tr>
      <tr>
        <td id="L429" class="blob-num js-line-number" data-line-number="429"></td>
        <td id="LC429" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">focusFirstField</span>) <span class="pl-smi">first_err</span>.<span class="pl-c1">focus</span>();</td>
      </tr>
      <tr>
        <td id="L430" class="blob-num js-line-number" data-line-number="430"></td>
        <td id="LC430" class="blob-code blob-code-inner js-file-line">						});</td>
      </tr>
      <tr>
        <td id="L431" class="blob-num js-line-number" data-line-number="431"></td>
        <td id="LC431" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L432" class="blob-num js-line-number" data-line-number="432"></td>
        <td id="LC432" class="blob-code blob-code-inner js-file-line">					} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L433" class="blob-num js-line-number" data-line-number="433"></td>
        <td id="LC433" class="blob-code blob-code-inner js-file-line">						<span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>html, body<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">animate</span>({</td>
      </tr>
      <tr>
        <td id="L434" class="blob-num js-line-number" data-line-number="434"></td>
        <td id="LC434" class="blob-code blob-code-inner js-file-line">							scrollTop<span class="pl-k">:</span> destination</td>
      </tr>
      <tr>
        <td id="L435" class="blob-num js-line-number" data-line-number="435"></td>
        <td id="LC435" class="blob-code blob-code-inner js-file-line">						}, <span class="pl-c1">1100</span>, <span class="pl-k">function</span>(){</td>
      </tr>
      <tr>
        <td id="L436" class="blob-num js-line-number" data-line-number="436"></td>
        <td id="LC436" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">focusFirstField</span>) <span class="pl-smi">first_err</span>.<span class="pl-c1">focus</span>();</td>
      </tr>
      <tr>
        <td id="L437" class="blob-num js-line-number" data-line-number="437"></td>
        <td id="LC437" class="blob-code blob-code-inner js-file-line">						});</td>
      </tr>
      <tr>
        <td id="L438" class="blob-num js-line-number" data-line-number="438"></td>
        <td id="LC438" class="blob-code blob-code-inner js-file-line">						<span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>html, body<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">animate</span>({scrollLeft<span class="pl-k">:</span> fixleft},<span class="pl-c1">1100</span>)</td>
      </tr>
      <tr>
        <td id="L439" class="blob-num js-line-number" data-line-number="439"></td>
        <td id="LC439" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L440" class="blob-num js-line-number" data-line-number="440"></td>
        <td id="LC440" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L441" class="blob-num js-line-number" data-line-number="441"></td>
        <td id="LC441" class="blob-code blob-code-inner js-file-line">				} <span class="pl-k">else</span> <span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">focusFirstField</span>)</td>
      </tr>
      <tr>
        <td id="L442" class="blob-num js-line-number" data-line-number="442"></td>
        <td id="LC442" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">first_err</span>.<span class="pl-c1">focus</span>();</td>
      </tr>
      <tr>
        <td id="L443" class="blob-num js-line-number" data-line-number="443"></td>
        <td id="LC443" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L444" class="blob-num js-line-number" data-line-number="444"></td>
        <td id="LC444" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L445" class="blob-num js-line-number" data-line-number="445"></td>
        <td id="LC445" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L446" class="blob-num js-line-number" data-line-number="446"></td>
        <td id="LC446" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L447" class="blob-num js-line-number" data-line-number="447"></td>
        <td id="LC447" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L448" class="blob-num js-line-number" data-line-number="448"></td>
        <td id="LC448" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* This method is called to perform an ajax form validation.</span></td>
      </tr>
      <tr>
        <td id="L449" class="blob-num js-line-number" data-line-number="449"></td>
        <td id="LC449" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* During this process all the (field, value) pairs are sent to the server which returns a list of invalid fields or true</span></td>
      </tr>
      <tr>
        <td id="L450" class="blob-num js-line-number" data-line-number="450"></td>
        <td id="LC450" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L451" class="blob-num js-line-number" data-line-number="451"></td>
        <td id="LC451" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">form</span></span></td>
      </tr>
      <tr>
        <td id="L452" class="blob-num js-line-number" data-line-number="452"></td>
        <td id="LC452" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span> <span class="pl-smi">options</span></span></td>
      </tr>
      <tr>
        <td id="L453" class="blob-num js-line-number" data-line-number="453"></td>
        <td id="LC453" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L454" class="blob-num js-line-number" data-line-number="454"></td>
        <td id="LC454" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_validateFormWithAjax</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">form</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L455" class="blob-num js-line-number" data-line-number="455"></td>
        <td id="LC455" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L456" class="blob-num js-line-number" data-line-number="456"></td>
        <td id="LC456" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> data <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-en">serialize</span>();</td>
      </tr>
      <tr>
        <td id="L457" class="blob-num js-line-number" data-line-number="457"></td>
        <td id="LC457" class="blob-code blob-code-inner js-file-line">									<span class="pl-k">var</span> type <span class="pl-k">=</span> (<span class="pl-smi">options</span>.<span class="pl-smi">ajaxFormValidationMethod</span>) <span class="pl-k">?</span> <span class="pl-smi">options</span>.<span class="pl-smi">ajaxFormValidationMethod</span> <span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>GET<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L458" class="blob-num js-line-number" data-line-number="458"></td>
        <td id="LC458" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> url <span class="pl-k">=</span> (<span class="pl-smi">options</span>.<span class="pl-smi">ajaxFormValidationURL</span>) <span class="pl-k">?</span> <span class="pl-smi">options</span>.<span class="pl-smi">ajaxFormValidationURL</span> <span class="pl-k">:</span> <span class="pl-smi">form</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>action<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L459" class="blob-num js-line-number" data-line-number="459"></td>
        <td id="LC459" class="blob-code blob-code-inner js-file-line">									<span class="pl-k">var</span> dataType <span class="pl-k">=</span> (<span class="pl-smi">options</span>.<span class="pl-smi">dataType</span>) <span class="pl-k">?</span> <span class="pl-smi">options</span>.<span class="pl-smi">dataType</span> <span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>json<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L460" class="blob-num js-line-number" data-line-number="460"></td>
        <td id="LC460" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">$</span>.<span class="pl-en">ajax</span>({</td>
      </tr>
      <tr>
        <td id="L461" class="blob-num js-line-number" data-line-number="461"></td>
        <td id="LC461" class="blob-code blob-code-inner js-file-line">				type<span class="pl-k">:</span> type,</td>
      </tr>
      <tr>
        <td id="L462" class="blob-num js-line-number" data-line-number="462"></td>
        <td id="LC462" class="blob-code blob-code-inner js-file-line">				url<span class="pl-k">:</span> url,</td>
      </tr>
      <tr>
        <td id="L463" class="blob-num js-line-number" data-line-number="463"></td>
        <td id="LC463" class="blob-code blob-code-inner js-file-line">				cache<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L464" class="blob-num js-line-number" data-line-number="464"></td>
        <td id="LC464" class="blob-code blob-code-inner js-file-line">				dataType<span class="pl-k">:</span> dataType,</td>
      </tr>
      <tr>
        <td id="L465" class="blob-num js-line-number" data-line-number="465"></td>
        <td id="LC465" class="blob-code blob-code-inner js-file-line">				data<span class="pl-k">:</span> data,</td>
      </tr>
      <tr>
        <td id="L466" class="blob-num js-line-number" data-line-number="466"></td>
        <td id="LC466" class="blob-code blob-code-inner js-file-line">				form<span class="pl-k">:</span> form,</td>
      </tr>
      <tr>
        <td id="L467" class="blob-num js-line-number" data-line-number="467"></td>
        <td id="LC467" class="blob-code blob-code-inner js-file-line">				methods<span class="pl-k">:</span> methods,</td>
      </tr>
      <tr>
        <td id="L468" class="blob-num js-line-number" data-line-number="468"></td>
        <td id="LC468" class="blob-code blob-code-inner js-file-line">				options<span class="pl-k">:</span> options,</td>
      </tr>
      <tr>
        <td id="L469" class="blob-num js-line-number" data-line-number="469"></td>
        <td id="LC469" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">beforeSend</span><span class="pl-k">:</span> <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L470" class="blob-num js-line-number" data-line-number="470"></td>
        <td id="LC470" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-en">onBeforeAjaxFormValidation</span>(form, options);</td>
      </tr>
      <tr>
        <td id="L471" class="blob-num js-line-number" data-line-number="471"></td>
        <td id="LC471" class="blob-code blob-code-inner js-file-line">				},</td>
      </tr>
      <tr>
        <td id="L472" class="blob-num js-line-number" data-line-number="472"></td>
        <td id="LC472" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">error</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">data</span>, <span class="pl-smi">transport</span>) {</td>
      </tr>
      <tr>
        <td id="L473" class="blob-num js-line-number" data-line-number="473"></td>
        <td id="LC473" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">onFailure</span>) {</td>
      </tr>
      <tr>
        <td id="L474" class="blob-num js-line-number" data-line-number="474"></td>
        <td id="LC474" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-en">onFailure</span>(data, transport);</td>
      </tr>
      <tr>
        <td id="L475" class="blob-num js-line-number" data-line-number="475"></td>
        <td id="LC475" class="blob-code blob-code-inner js-file-line">					} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L476" class="blob-num js-line-number" data-line-number="476"></td>
        <td id="LC476" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">methods</span>.<span class="pl-en">_ajaxError</span>(data, transport);</td>
      </tr>
      <tr>
        <td id="L477" class="blob-num js-line-number" data-line-number="477"></td>
        <td id="LC477" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L478" class="blob-num js-line-number" data-line-number="478"></td>
        <td id="LC478" class="blob-code blob-code-inner js-file-line">				},</td>
      </tr>
      <tr>
        <td id="L479" class="blob-num js-line-number" data-line-number="479"></td>
        <td id="LC479" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">success</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">json</span>) {</td>
      </tr>
      <tr>
        <td id="L480" class="blob-num js-line-number" data-line-number="480"></td>
        <td id="LC480" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> ((dataType <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>json<span class="pl-pds">&quot;</span></span>) <span class="pl-k">&amp;&amp;</span> (json <span class="pl-k">!==</span> <span class="pl-c1">true</span>)) {</td>
      </tr>
      <tr>
        <td id="L481" class="blob-num js-line-number" data-line-number="481"></td>
        <td id="LC481" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> getting to this case doesn&#39;t necessary means that the form is invalid</span></td>
      </tr>
      <tr>
        <td id="L482" class="blob-num js-line-number" data-line-number="482"></td>
        <td id="LC482" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> the server may return green or closing prompt actions</span></td>
      </tr>
      <tr>
        <td id="L483" class="blob-num js-line-number" data-line-number="483"></td>
        <td id="LC483" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> this flag helps figuring it out</span></td>
      </tr>
      <tr>
        <td id="L484" class="blob-num js-line-number" data-line-number="484"></td>
        <td id="LC484" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> errorInForm<span class="pl-k">=</span><span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L485" class="blob-num js-line-number" data-line-number="485"></td>
        <td id="LC485" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">for</span> (<span class="pl-k">var</span> i <span class="pl-k">=</span> <span class="pl-c1">0</span>; i <span class="pl-k">&lt;</span> <span class="pl-smi">json</span>.<span class="pl-c1">length</span>; i<span class="pl-k">++</span>) {</td>
      </tr>
      <tr>
        <td id="L486" class="blob-num js-line-number" data-line-number="486"></td>
        <td id="LC486" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">var</span> value <span class="pl-k">=</span> json[i];</td>
      </tr>
      <tr>
        <td id="L487" class="blob-num js-line-number" data-line-number="487"></td>
        <td id="LC487" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L488" class="blob-num js-line-number" data-line-number="488"></td>
        <td id="LC488" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">var</span> errorFieldId <span class="pl-k">=</span> value[<span class="pl-c1">0</span>];</td>
      </tr>
      <tr>
        <td id="L489" class="blob-num js-line-number" data-line-number="489"></td>
        <td id="LC489" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">var</span> errorField <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> errorFieldId)[<span class="pl-c1">0</span>]);</td>
      </tr>
      <tr>
        <td id="L490" class="blob-num js-line-number" data-line-number="490"></td>
        <td id="LC490" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L491" class="blob-num js-line-number" data-line-number="491"></td>
        <td id="LC491" class="blob-code blob-code-inner js-file-line">							<span class="pl-c"><span class="pl-c">//</span> make sure we found the element</span></td>
      </tr>
      <tr>
        <td id="L492" class="blob-num js-line-number" data-line-number="492"></td>
        <td id="LC492" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">if</span> (<span class="pl-smi">errorField</span>.<span class="pl-c1">length</span> <span class="pl-k">==</span> <span class="pl-c1">1</span>) {</td>
      </tr>
      <tr>
        <td id="L493" class="blob-num js-line-number" data-line-number="493"></td>
        <td id="LC493" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L494" class="blob-num js-line-number" data-line-number="494"></td>
        <td id="LC494" class="blob-code blob-code-inner js-file-line">								<span class="pl-c"><span class="pl-c">//</span> promptText or selector</span></td>
      </tr>
      <tr>
        <td id="L495" class="blob-num js-line-number" data-line-number="495"></td>
        <td id="LC495" class="blob-code blob-code-inner js-file-line">								<span class="pl-k">var</span> msg <span class="pl-k">=</span> value[<span class="pl-c1">2</span>];</td>
      </tr>
      <tr>
        <td id="L496" class="blob-num js-line-number" data-line-number="496"></td>
        <td id="LC496" class="blob-code blob-code-inner js-file-line">								<span class="pl-c"><span class="pl-c">//</span> if the field is valid</span></td>
      </tr>
      <tr>
        <td id="L497" class="blob-num js-line-number" data-line-number="497"></td>
        <td id="LC497" class="blob-code blob-code-inner js-file-line">								<span class="pl-k">if</span> (value[<span class="pl-c1">1</span>] <span class="pl-k">==</span> <span class="pl-c1">true</span>) {</td>
      </tr>
      <tr>
        <td id="L498" class="blob-num js-line-number" data-line-number="498"></td>
        <td id="LC498" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L499" class="blob-num js-line-number" data-line-number="499"></td>
        <td id="LC499" class="blob-code blob-code-inner js-file-line">									<span class="pl-k">if</span> (msg <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>  <span class="pl-k">||</span> <span class="pl-k">!</span>msg){</td>
      </tr>
      <tr>
        <td id="L500" class="blob-num js-line-number" data-line-number="500"></td>
        <td id="LC500" class="blob-code blob-code-inner js-file-line">										<span class="pl-c"><span class="pl-c">//</span> if for some reason, status==true and error=&quot;&quot;, just close the prompt</span></td>
      </tr>
      <tr>
        <td id="L501" class="blob-num js-line-number" data-line-number="501"></td>
        <td id="LC501" class="blob-code blob-code-inner js-file-line">										<span class="pl-smi">methods</span>.<span class="pl-en">_closePrompt</span>(errorField);</td>
      </tr>
      <tr>
        <td id="L502" class="blob-num js-line-number" data-line-number="502"></td>
        <td id="LC502" class="blob-code blob-code-inner js-file-line">									} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L503" class="blob-num js-line-number" data-line-number="503"></td>
        <td id="LC503" class="blob-code blob-code-inner js-file-line">										<span class="pl-c"><span class="pl-c">//</span> the field is valid, but we are displaying a green prompt</span></td>
      </tr>
      <tr>
        <td id="L504" class="blob-num js-line-number" data-line-number="504"></td>
        <td id="LC504" class="blob-code blob-code-inner js-file-line">										<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[msg]) {</td>
      </tr>
      <tr>
        <td id="L505" class="blob-num js-line-number" data-line-number="505"></td>
        <td id="LC505" class="blob-code blob-code-inner js-file-line">											<span class="pl-k">var</span> txt <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[msg].<span class="pl-smi">alertTextOk</span>;</td>
      </tr>
      <tr>
        <td id="L506" class="blob-num js-line-number" data-line-number="506"></td>
        <td id="LC506" class="blob-code blob-code-inner js-file-line">											<span class="pl-k">if</span> (txt)</td>
      </tr>
      <tr>
        <td id="L507" class="blob-num js-line-number" data-line-number="507"></td>
        <td id="LC507" class="blob-code blob-code-inner js-file-line">												msg <span class="pl-k">=</span> txt;</td>
      </tr>
      <tr>
        <td id="L508" class="blob-num js-line-number" data-line-number="508"></td>
        <td id="LC508" class="blob-code blob-code-inner js-file-line">										}</td>
      </tr>
      <tr>
        <td id="L509" class="blob-num js-line-number" data-line-number="509"></td>
        <td id="LC509" class="blob-code blob-code-inner js-file-line">										<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">showPrompts</span>) <span class="pl-smi">methods</span>.<span class="pl-en">_showPrompt</span>(errorField, msg, <span class="pl-s"><span class="pl-pds">&quot;</span>pass<span class="pl-pds">&quot;</span></span>, <span class="pl-c1">false</span>, options, <span class="pl-c1">true</span>);</td>
      </tr>
      <tr>
        <td id="L510" class="blob-num js-line-number" data-line-number="510"></td>
        <td id="LC510" class="blob-code blob-code-inner js-file-line">									}</td>
      </tr>
      <tr>
        <td id="L511" class="blob-num js-line-number" data-line-number="511"></td>
        <td id="LC511" class="blob-code blob-code-inner js-file-line">								} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L512" class="blob-num js-line-number" data-line-number="512"></td>
        <td id="LC512" class="blob-code blob-code-inner js-file-line">									<span class="pl-c"><span class="pl-c">//</span> the field is invalid, show the red error prompt</span></td>
      </tr>
      <tr>
        <td id="L513" class="blob-num js-line-number" data-line-number="513"></td>
        <td id="LC513" class="blob-code blob-code-inner js-file-line">									errorInForm<span class="pl-k">|=</span><span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L514" class="blob-num js-line-number" data-line-number="514"></td>
        <td id="LC514" class="blob-code blob-code-inner js-file-line">									<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[msg]) {</td>
      </tr>
      <tr>
        <td id="L515" class="blob-num js-line-number" data-line-number="515"></td>
        <td id="LC515" class="blob-code blob-code-inner js-file-line">										<span class="pl-k">var</span> txt <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[msg].<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L516" class="blob-num js-line-number" data-line-number="516"></td>
        <td id="LC516" class="blob-code blob-code-inner js-file-line">										<span class="pl-k">if</span> (txt)</td>
      </tr>
      <tr>
        <td id="L517" class="blob-num js-line-number" data-line-number="517"></td>
        <td id="LC517" class="blob-code blob-code-inner js-file-line">											msg <span class="pl-k">=</span> txt;</td>
      </tr>
      <tr>
        <td id="L518" class="blob-num js-line-number" data-line-number="518"></td>
        <td id="LC518" class="blob-code blob-code-inner js-file-line">									}</td>
      </tr>
      <tr>
        <td id="L519" class="blob-num js-line-number" data-line-number="519"></td>
        <td id="LC519" class="blob-code blob-code-inner js-file-line">									<span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">showPrompts</span>) <span class="pl-smi">methods</span>.<span class="pl-en">_showPrompt</span>(errorField, msg, <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>, <span class="pl-c1">false</span>, options, <span class="pl-c1">true</span>);</td>
      </tr>
      <tr>
        <td id="L520" class="blob-num js-line-number" data-line-number="520"></td>
        <td id="LC520" class="blob-code blob-code-inner js-file-line">								}</td>
      </tr>
      <tr>
        <td id="L521" class="blob-num js-line-number" data-line-number="521"></td>
        <td id="LC521" class="blob-code blob-code-inner js-file-line">							}</td>
      </tr>
      <tr>
        <td id="L522" class="blob-num js-line-number" data-line-number="522"></td>
        <td id="LC522" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L523" class="blob-num js-line-number" data-line-number="523"></td>
        <td id="LC523" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-en">onAjaxFormComplete</span>(<span class="pl-k">!</span>errorInForm, form, json, options);</td>
      </tr>
      <tr>
        <td id="L524" class="blob-num js-line-number" data-line-number="524"></td>
        <td id="LC524" class="blob-code blob-code-inner js-file-line">					} <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L525" class="blob-num js-line-number" data-line-number="525"></td>
        <td id="LC525" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-en">onAjaxFormComplete</span>(<span class="pl-c1">true</span>, form, json, options);</td>
      </tr>
      <tr>
        <td id="L526" class="blob-num js-line-number" data-line-number="526"></td>
        <td id="LC526" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L527" class="blob-num js-line-number" data-line-number="527"></td>
        <td id="LC527" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L528" class="blob-num js-line-number" data-line-number="528"></td>
        <td id="LC528" class="blob-code blob-code-inner js-file-line">			});</td>
      </tr>
      <tr>
        <td id="L529" class="blob-num js-line-number" data-line-number="529"></td>
        <td id="LC529" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L530" class="blob-num js-line-number" data-line-number="530"></td>
        <td id="LC530" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L531" class="blob-num js-line-number" data-line-number="531"></td>
        <td id="LC531" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L532" class="blob-num js-line-number" data-line-number="532"></td>
        <td id="LC532" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Validates field, shows prompts accordingly</span></td>
      </tr>
      <tr>
        <td id="L533" class="blob-num js-line-number" data-line-number="533"></td>
        <td id="LC533" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L534" class="blob-num js-line-number" data-line-number="534"></td>
        <td id="LC534" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L535" class="blob-num js-line-number" data-line-number="535"></td>
        <td id="LC535" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            field</span></td>
      </tr>
      <tr>
        <td id="L536" class="blob-num js-line-number" data-line-number="536"></td>
        <td id="LC536" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]}</span></td>
      </tr>
      <tr>
        <td id="L537" class="blob-num js-line-number" data-line-number="537"></td>
        <td id="LC537" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            field&#39;s validation rules</span></td>
      </tr>
      <tr>
        <td id="L538" class="blob-num js-line-number" data-line-number="538"></td>
        <td id="LC538" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L539" class="blob-num js-line-number" data-line-number="539"></td>
        <td id="LC539" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L540" class="blob-num js-line-number" data-line-number="540"></td>
        <td id="LC540" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> false if field is valid (It is inversed for *fields*, it return false on validate and true on errors.)</span></td>
      </tr>
      <tr>
        <td id="L541" class="blob-num js-line-number" data-line-number="541"></td>
        <td id="LC541" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L542" class="blob-num js-line-number" data-line-number="542"></td>
        <td id="LC542" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_validateField</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">options</span>, <span class="pl-smi">skipAjaxValidation</span>) {</td>
      </tr>
      <tr>
        <td id="L543" class="blob-num js-line-number" data-line-number="543"></td>
        <td id="LC543" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L544" class="blob-num js-line-number" data-line-number="544"></td>
        <td id="LC544" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>, <span class="pl-s"><span class="pl-pds">&quot;</span>form-validation-field-<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">$</span>.<span class="pl-smi">validationEngine</span>.<span class="pl-smi">fieldIdCounter</span>);</td>
      </tr>
      <tr>
        <td id="L545" class="blob-num js-line-number" data-line-number="545"></td>
        <td id="LC545" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">++</span><span class="pl-smi">$</span>.<span class="pl-smi">validationEngine</span>.<span class="pl-smi">fieldIdCounter</span>;</td>
      </tr>
      <tr>
        <td id="L546" class="blob-num js-line-number" data-line-number="546"></td>
        <td id="LC546" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L547" class="blob-num js-line-number" data-line-number="547"></td>
        <td id="LC547" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L548" class="blob-num js-line-number" data-line-number="548"></td>
        <td id="LC548" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">field</span>.<span class="pl-en">hasClass</span>(<span class="pl-smi">options</span>.<span class="pl-smi">ignoreFieldsWithClass</span>))</td>
      </tr>
      <tr>
        <td id="L549" class="blob-num js-line-number" data-line-number="549"></td>
        <td id="LC549" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L550" class="blob-num js-line-number" data-line-number="550"></td>
        <td id="LC550" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L551" class="blob-num js-line-number" data-line-number="551"></td>
        <td id="LC551" class="blob-code blob-code-inner js-file-line">           <span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">validateNonVisibleFields</span> <span class="pl-k">&amp;&amp;</span> (<span class="pl-smi">field</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:hidden<span class="pl-pds">&quot;</span></span>) <span class="pl-k">&amp;&amp;</span> <span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">prettySelect</span> <span class="pl-k">||</span> <span class="pl-smi">field</span>.<span class="pl-c1">parent</span>().<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:hidden<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L552" class="blob-num js-line-number" data-line-number="552"></td>
        <td id="LC552" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L553" class="blob-num js-line-number" data-line-number="553"></td>
        <td id="LC553" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L554" class="blob-num js-line-number" data-line-number="554"></td>
        <td id="LC554" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> rulesParsing <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span>);</td>
      </tr>
      <tr>
        <td id="L555" class="blob-num js-line-number" data-line-number="555"></td>
        <td id="LC555" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> getRules <span class="pl-k">=</span><span class="pl-sr"> <span class="pl-pds">/</span>validate<span class="pl-cce">\[</span>(<span class="pl-c1">.</span><span class="pl-k">*</span>)<span class="pl-cce">\]</span><span class="pl-pds">/</span></span>.<span class="pl-c1">exec</span>(rulesParsing);</td>
      </tr>
      <tr>
        <td id="L556" class="blob-num js-line-number" data-line-number="556"></td>
        <td id="LC556" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L557" class="blob-num js-line-number" data-line-number="557"></td>
        <td id="LC557" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span>getRules)</td>
      </tr>
      <tr>
        <td id="L558" class="blob-num js-line-number" data-line-number="558"></td>
        <td id="LC558" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L559" class="blob-num js-line-number" data-line-number="559"></td>
        <td id="LC559" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> str <span class="pl-k">=</span> getRules[<span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L560" class="blob-num js-line-number" data-line-number="560"></td>
        <td id="LC560" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> rules <span class="pl-k">=</span> <span class="pl-smi">str</span>.<span class="pl-c1">split</span>(<span class="pl-sr"><span class="pl-pds">/</span><span class="pl-cce">\[</span><span class="pl-k">|</span>,<span class="pl-k">|</span><span class="pl-cce">\]</span><span class="pl-pds">/</span></span>);</td>
      </tr>
      <tr>
        <td id="L561" class="blob-num js-line-number" data-line-number="561"></td>
        <td id="LC561" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L562" class="blob-num js-line-number" data-line-number="562"></td>
        <td id="LC562" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> true if we ran the ajax validation, tells the logic to stop messing with prompts</span></td>
      </tr>
      <tr>
        <td id="L563" class="blob-num js-line-number" data-line-number="563"></td>
        <td id="LC563" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> isAjaxValidator <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L564" class="blob-num js-line-number" data-line-number="564"></td>
        <td id="LC564" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fieldName <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>name<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L565" class="blob-num js-line-number" data-line-number="565"></td>
        <td id="LC565" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> promptText <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L566" class="blob-num js-line-number" data-line-number="566"></td>
        <td id="LC566" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> promptType <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L567" class="blob-num js-line-number" data-line-number="567"></td>
        <td id="LC567" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> required <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L568" class="blob-num js-line-number" data-line-number="568"></td>
        <td id="LC568" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> limitErrors <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L569" class="blob-num js-line-number" data-line-number="569"></td>
        <td id="LC569" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">options</span>.<span class="pl-smi">isError</span> <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L570" class="blob-num js-line-number" data-line-number="570"></td>
        <td id="LC570" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">==</span><span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L571" class="blob-num js-line-number" data-line-number="571"></td>
        <td id="LC571" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L572" class="blob-num js-line-number" data-line-number="572"></td>
        <td id="LC572" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> If the programmer wants to limit the amount of error messages per field,</span></td>
      </tr>
      <tr>
        <td id="L573" class="blob-num js-line-number" data-line-number="573"></td>
        <td id="LC573" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">maxErrorsPerField</span> <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>) {</td>
      </tr>
      <tr>
        <td id="L574" class="blob-num js-line-number" data-line-number="574"></td>
        <td id="LC574" class="blob-code blob-code-inner js-file-line">				limitErrors <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L575" class="blob-num js-line-number" data-line-number="575"></td>
        <td id="LC575" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L576" class="blob-num js-line-number" data-line-number="576"></td>
        <td id="LC576" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L577" class="blob-num js-line-number" data-line-number="577"></td>
        <td id="LC577" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">field</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>form, .validationEngineContainer<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L578" class="blob-num js-line-number" data-line-number="578"></td>
        <td id="LC578" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> Fix for adding spaces in the rules</span></td>
      </tr>
      <tr>
        <td id="L579" class="blob-num js-line-number" data-line-number="579"></td>
        <td id="LC579" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">for</span> (<span class="pl-k">var</span> i <span class="pl-k">=</span> <span class="pl-c1">0</span>; i <span class="pl-k">&lt;</span> <span class="pl-smi">rules</span>.<span class="pl-c1">length</span>; i<span class="pl-k">++</span>) {</td>
      </tr>
      <tr>
        <td id="L580" class="blob-num js-line-number" data-line-number="580"></td>
        <td id="LC580" class="blob-code blob-code-inner js-file-line">				rules[i] <span class="pl-k">=</span> rules[i].<span class="pl-c1">toString</span>().<span class="pl-c1">replace</span>(<span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span>, <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>);<span class="pl-c"><span class="pl-c">//</span>.toString to worked on IE8</span></td>
      </tr>
      <tr>
        <td id="L581" class="blob-num js-line-number" data-line-number="581"></td>
        <td id="LC581" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> Remove any parsing errors</span></td>
      </tr>
      <tr>
        <td id="L582" class="blob-num js-line-number" data-line-number="582"></td>
        <td id="LC582" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (rules[i] <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L583" class="blob-num js-line-number" data-line-number="583"></td>
        <td id="LC583" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">delete</span> rules[i];</td>
      </tr>
      <tr>
        <td id="L584" class="blob-num js-line-number" data-line-number="584"></td>
        <td id="LC584" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L585" class="blob-num js-line-number" data-line-number="585"></td>
        <td id="LC585" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L586" class="blob-num js-line-number" data-line-number="586"></td>
        <td id="LC586" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L587" class="blob-num js-line-number" data-line-number="587"></td>
        <td id="LC587" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">for</span> (<span class="pl-k">var</span> i <span class="pl-k">=</span> <span class="pl-c1">0</span>, field_errors <span class="pl-k">=</span> <span class="pl-c1">0</span>; i <span class="pl-k">&lt;</span> <span class="pl-smi">rules</span>.<span class="pl-c1">length</span>; i<span class="pl-k">++</span>) {</td>
      </tr>
      <tr>
        <td id="L588" class="blob-num js-line-number" data-line-number="588"></td>
        <td id="LC588" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L589" class="blob-num js-line-number" data-line-number="589"></td>
        <td id="LC589" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> If we are limiting errors, and have hit the max, break</span></td>
      </tr>
      <tr>
        <td id="L590" class="blob-num js-line-number" data-line-number="590"></td>
        <td id="LC590" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (limitErrors <span class="pl-k">&amp;&amp;</span> field_errors <span class="pl-k">&gt;=</span> <span class="pl-smi">options</span>.<span class="pl-smi">maxErrorsPerField</span>) {</td>
      </tr>
      <tr>
        <td id="L591" class="blob-num js-line-number" data-line-number="591"></td>
        <td id="LC591" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> If we haven&#39;t hit a required yet, check to see if there is one in the validation rules for this</span></td>
      </tr>
      <tr>
        <td id="L592" class="blob-num js-line-number" data-line-number="592"></td>
        <td id="LC592" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> field and that it&#39;s index is greater or equal to our current index</span></td>
      </tr>
      <tr>
        <td id="L593" class="blob-num js-line-number" data-line-number="593"></td>
        <td id="LC593" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-k">!</span>required) {</td>
      </tr>
      <tr>
        <td id="L594" class="blob-num js-line-number" data-line-number="594"></td>
        <td id="LC594" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> have_required <span class="pl-k">=</span> <span class="pl-smi">$</span>.<span class="pl-en">inArray</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>required<span class="pl-pds">&#39;</span></span>, rules);</td>
      </tr>
      <tr>
        <td id="L595" class="blob-num js-line-number" data-line-number="595"></td>
        <td id="LC595" class="blob-code blob-code-inner js-file-line">						required <span class="pl-k">=</span> (have_required <span class="pl-k">!=</span> <span class="pl-k">-</span><span class="pl-c1">1</span> <span class="pl-k">&amp;&amp;</span>  have_required <span class="pl-k">&gt;=</span> i);</td>
      </tr>
      <tr>
        <td id="L596" class="blob-num js-line-number" data-line-number="596"></td>
        <td id="LC596" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L597" class="blob-num js-line-number" data-line-number="597"></td>
        <td id="LC597" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L598" class="blob-num js-line-number" data-line-number="598"></td>
        <td id="LC598" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L599" class="blob-num js-line-number" data-line-number="599"></td>
        <td id="LC599" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L600" class="blob-num js-line-number" data-line-number="600"></td>
        <td id="LC600" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L601" class="blob-num js-line-number" data-line-number="601"></td>
        <td id="LC601" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> errorMsg <span class="pl-k">=</span> <span class="pl-c1">undefined</span>;</td>
      </tr>
      <tr>
        <td id="L602" class="blob-num js-line-number" data-line-number="602"></td>
        <td id="LC602" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">switch</span> (rules[i]) {</td>
      </tr>
      <tr>
        <td id="L603" class="blob-num js-line-number" data-line-number="603"></td>
        <td id="LC603" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L604" class="blob-num js-line-number" data-line-number="604"></td>
        <td id="LC604" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>required<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L605" class="blob-num js-line-number" data-line-number="605"></td>
        <td id="LC605" class="blob-code blob-code-inner js-file-line">						required <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L606" class="blob-num js-line-number" data-line-number="606"></td>
        <td id="LC606" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_required</span>);</td>
      </tr>
      <tr>
        <td id="L607" class="blob-num js-line-number" data-line-number="607"></td>
        <td id="LC607" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L608" class="blob-num js-line-number" data-line-number="608"></td>
        <td id="LC608" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>custom<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L609" class="blob-num js-line-number" data-line-number="609"></td>
        <td id="LC609" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_custom</span>);</td>
      </tr>
      <tr>
        <td id="L610" class="blob-num js-line-number" data-line-number="610"></td>
        <td id="LC610" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L611" class="blob-num js-line-number" data-line-number="611"></td>
        <td id="LC611" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>groupRequired<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L612" class="blob-num js-line-number" data-line-number="612"></td>
        <td id="LC612" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> Check is its the first of group, if not, reload validation with first field</span></td>
      </tr>
      <tr>
        <td id="L613" class="blob-num js-line-number" data-line-number="613"></td>
        <td id="LC613" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> AND continue normal validation on present field</span></td>
      </tr>
      <tr>
        <td id="L614" class="blob-num js-line-number" data-line-number="614"></td>
        <td id="LC614" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> classGroup <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span>rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>] <span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L615" class="blob-num js-line-number" data-line-number="615"></td>
        <td id="LC615" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> firstOfGroup <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(classGroup).<span class="pl-en">eq</span>(<span class="pl-c1">0</span>);</td>
      </tr>
      <tr>
        <td id="L616" class="blob-num js-line-number" data-line-number="616"></td>
        <td id="LC616" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span>(firstOfGroup[<span class="pl-c1">0</span>] <span class="pl-k">!=</span> field[<span class="pl-c1">0</span>]){</td>
      </tr>
      <tr>
        <td id="L617" class="blob-num js-line-number" data-line-number="617"></td>
        <td id="LC617" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L618" class="blob-num js-line-number" data-line-number="618"></td>
        <td id="LC618" class="blob-code blob-code-inner js-file-line">							<span class="pl-smi">methods</span>.<span class="pl-en">_validateField</span>(firstOfGroup, options, skipAjaxValidation);</td>
      </tr>
      <tr>
        <td id="L619" class="blob-num js-line-number" data-line-number="619"></td>
        <td id="LC619" class="blob-code blob-code-inner js-file-line">							<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L620" class="blob-num js-line-number" data-line-number="620"></td>
        <td id="LC620" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L621" class="blob-num js-line-number" data-line-number="621"></td>
        <td id="LC621" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L622" class="blob-num js-line-number" data-line-number="622"></td>
        <td id="LC622" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_groupRequired</span>);</td>
      </tr>
      <tr>
        <td id="L623" class="blob-num js-line-number" data-line-number="623"></td>
        <td id="LC623" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span>(errorMsg)  required <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L624" class="blob-num js-line-number" data-line-number="624"></td>
        <td id="LC624" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L625" class="blob-num js-line-number" data-line-number="625"></td>
        <td id="LC625" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L626" class="blob-num js-line-number" data-line-number="626"></td>
        <td id="LC626" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>ajax<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L627" class="blob-num js-line-number" data-line-number="627"></td>
        <td id="LC627" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> AJAX defaults to returning it&#39;s loading message</span></td>
      </tr>
      <tr>
        <td id="L628" class="blob-num js-line-number" data-line-number="628"></td>
        <td id="LC628" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_ajax</span>(field, rules, i, options);</td>
      </tr>
      <tr>
        <td id="L629" class="blob-num js-line-number" data-line-number="629"></td>
        <td id="LC629" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (errorMsg) {</td>
      </tr>
      <tr>
        <td id="L630" class="blob-num js-line-number" data-line-number="630"></td>
        <td id="LC630" class="blob-code blob-code-inner js-file-line">							promptType <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>load<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L631" class="blob-num js-line-number" data-line-number="631"></td>
        <td id="LC631" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L632" class="blob-num js-line-number" data-line-number="632"></td>
        <td id="LC632" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L633" class="blob-num js-line-number" data-line-number="633"></td>
        <td id="LC633" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>minSize<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L634" class="blob-num js-line-number" data-line-number="634"></td>
        <td id="LC634" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_minSize</span>);</td>
      </tr>
      <tr>
        <td id="L635" class="blob-num js-line-number" data-line-number="635"></td>
        <td id="LC635" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L636" class="blob-num js-line-number" data-line-number="636"></td>
        <td id="LC636" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>maxSize<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L637" class="blob-num js-line-number" data-line-number="637"></td>
        <td id="LC637" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_maxSize</span>);</td>
      </tr>
      <tr>
        <td id="L638" class="blob-num js-line-number" data-line-number="638"></td>
        <td id="LC638" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L639" class="blob-num js-line-number" data-line-number="639"></td>
        <td id="LC639" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>min<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L640" class="blob-num js-line-number" data-line-number="640"></td>
        <td id="LC640" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_min</span>);</td>
      </tr>
      <tr>
        <td id="L641" class="blob-num js-line-number" data-line-number="641"></td>
        <td id="LC641" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L642" class="blob-num js-line-number" data-line-number="642"></td>
        <td id="LC642" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>max<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L643" class="blob-num js-line-number" data-line-number="643"></td>
        <td id="LC643" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_max</span>);</td>
      </tr>
      <tr>
        <td id="L644" class="blob-num js-line-number" data-line-number="644"></td>
        <td id="LC644" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L645" class="blob-num js-line-number" data-line-number="645"></td>
        <td id="LC645" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>past<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L646" class="blob-num js-line-number" data-line-number="646"></td>
        <td id="LC646" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field,rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_past</span>);</td>
      </tr>
      <tr>
        <td id="L647" class="blob-num js-line-number" data-line-number="647"></td>
        <td id="LC647" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L648" class="blob-num js-line-number" data-line-number="648"></td>
        <td id="LC648" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>future<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L649" class="blob-num js-line-number" data-line-number="649"></td>
        <td id="LC649" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field,rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_future</span>);</td>
      </tr>
      <tr>
        <td id="L650" class="blob-num js-line-number" data-line-number="650"></td>
        <td id="LC650" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L651" class="blob-num js-line-number" data-line-number="651"></td>
        <td id="LC651" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>dateRange<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L652" class="blob-num js-line-number" data-line-number="652"></td>
        <td id="LC652" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> classGroup <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>] <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L653" class="blob-num js-line-number" data-line-number="653"></td>
        <td id="LC653" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span> <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(classGroup).<span class="pl-en">eq</span>(<span class="pl-c1">0</span>);</td>
      </tr>
      <tr>
        <td id="L654" class="blob-num js-line-number" data-line-number="654"></td>
        <td id="LC654" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span> <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(classGroup).<span class="pl-en">eq</span>(<span class="pl-c1">1</span>);</td>
      </tr>
      <tr>
        <td id="L655" class="blob-num js-line-number" data-line-number="655"></td>
        <td id="LC655" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L656" class="blob-num js-line-number" data-line-number="656"></td>
        <td id="LC656" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span>if one entry out of the pair has value then proceed to run through validation</span></td>
      </tr>
      <tr>
        <td id="L657" class="blob-num js-line-number" data-line-number="657"></td>
        <td id="LC657" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span> <span class="pl-k">||</span> <span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>) {</td>
      </tr>
      <tr>
        <td id="L658" class="blob-num js-line-number" data-line-number="658"></td>
        <td id="LC658" class="blob-code blob-code-inner js-file-line">							errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field,rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_dateRange</span>);</td>
      </tr>
      <tr>
        <td id="L659" class="blob-num js-line-number" data-line-number="659"></td>
        <td id="LC659" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L660" class="blob-num js-line-number" data-line-number="660"></td>
        <td id="LC660" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (errorMsg) required <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L661" class="blob-num js-line-number" data-line-number="661"></td>
        <td id="LC661" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L662" class="blob-num js-line-number" data-line-number="662"></td>
        <td id="LC662" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L663" class="blob-num js-line-number" data-line-number="663"></td>
        <td id="LC663" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L664" class="blob-num js-line-number" data-line-number="664"></td>
        <td id="LC664" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>dateTimeRange<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L665" class="blob-num js-line-number" data-line-number="665"></td>
        <td id="LC665" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">var</span> classGroup <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>] <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L666" class="blob-num js-line-number" data-line-number="666"></td>
        <td id="LC666" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span> <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(classGroup).<span class="pl-en">eq</span>(<span class="pl-c1">0</span>);</td>
      </tr>
      <tr>
        <td id="L667" class="blob-num js-line-number" data-line-number="667"></td>
        <td id="LC667" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span> <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(classGroup).<span class="pl-en">eq</span>(<span class="pl-c1">1</span>);</td>
      </tr>
      <tr>
        <td id="L668" class="blob-num js-line-number" data-line-number="668"></td>
        <td id="LC668" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L669" class="blob-num js-line-number" data-line-number="669"></td>
        <td id="LC669" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span>if one entry out of the pair has value then proceed to run through validation</span></td>
      </tr>
      <tr>
        <td id="L670" class="blob-num js-line-number" data-line-number="670"></td>
        <td id="LC670" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span> <span class="pl-k">||</span> <span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>) {</td>
      </tr>
      <tr>
        <td id="L671" class="blob-num js-line-number" data-line-number="671"></td>
        <td id="LC671" class="blob-code blob-code-inner js-file-line">							errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field,rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_dateTimeRange</span>);</td>
      </tr>
      <tr>
        <td id="L672" class="blob-num js-line-number" data-line-number="672"></td>
        <td id="LC672" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L673" class="blob-num js-line-number" data-line-number="673"></td>
        <td id="LC673" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (errorMsg) required <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L674" class="blob-num js-line-number" data-line-number="674"></td>
        <td id="LC674" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L675" class="blob-num js-line-number" data-line-number="675"></td>
        <td id="LC675" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L676" class="blob-num js-line-number" data-line-number="676"></td>
        <td id="LC676" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>maxCheckbox<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L677" class="blob-num js-line-number" data-line-number="677"></td>
        <td id="LC677" class="blob-code blob-code-inner js-file-line">						field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> fieldName <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L678" class="blob-num js-line-number" data-line-number="678"></td>
        <td id="LC678" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_maxCheckbox</span>);</td>
      </tr>
      <tr>
        <td id="L679" class="blob-num js-line-number" data-line-number="679"></td>
        <td id="LC679" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L680" class="blob-num js-line-number" data-line-number="680"></td>
        <td id="LC680" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>minCheckbox<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L681" class="blob-num js-line-number" data-line-number="681"></td>
        <td id="LC681" class="blob-code blob-code-inner js-file-line">						field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> fieldName <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L682" class="blob-num js-line-number" data-line-number="682"></td>
        <td id="LC682" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_minCheckbox</span>);</td>
      </tr>
      <tr>
        <td id="L683" class="blob-num js-line-number" data-line-number="683"></td>
        <td id="LC683" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L684" class="blob-num js-line-number" data-line-number="684"></td>
        <td id="LC684" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>equals<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L685" class="blob-num js-line-number" data-line-number="685"></td>
        <td id="LC685" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_equals</span>);</td>
      </tr>
      <tr>
        <td id="L686" class="blob-num js-line-number" data-line-number="686"></td>
        <td id="LC686" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L687" class="blob-num js-line-number" data-line-number="687"></td>
        <td id="LC687" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>funcCall<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L688" class="blob-num js-line-number" data-line-number="688"></td>
        <td id="LC688" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_funcCall</span>);</td>
      </tr>
      <tr>
        <td id="L689" class="blob-num js-line-number" data-line-number="689"></td>
        <td id="LC689" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L690" class="blob-num js-line-number" data-line-number="690"></td>
        <td id="LC690" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>creditCard<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L691" class="blob-num js-line-number" data-line-number="691"></td>
        <td id="LC691" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_creditCard</span>);</td>
      </tr>
      <tr>
        <td id="L692" class="blob-num js-line-number" data-line-number="692"></td>
        <td id="LC692" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L693" class="blob-num js-line-number" data-line-number="693"></td>
        <td id="LC693" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>condRequired<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L694" class="blob-num js-line-number" data-line-number="694"></td>
        <td id="LC694" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_condRequired</span>);</td>
      </tr>
      <tr>
        <td id="L695" class="blob-num js-line-number" data-line-number="695"></td>
        <td id="LC695" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (errorMsg <span class="pl-k">!==</span> <span class="pl-c1">undefined</span>) {</td>
      </tr>
      <tr>
        <td id="L696" class="blob-num js-line-number" data-line-number="696"></td>
        <td id="LC696" class="blob-code blob-code-inner js-file-line">							required <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L697" class="blob-num js-line-number" data-line-number="697"></td>
        <td id="LC697" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L698" class="blob-num js-line-number" data-line-number="698"></td>
        <td id="LC698" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L699" class="blob-num js-line-number" data-line-number="699"></td>
        <td id="LC699" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>funcCallRequired<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L700" class="blob-num js-line-number" data-line-number="700"></td>
        <td id="LC700" class="blob-code blob-code-inner js-file-line">						errorMsg <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getErrorMessage</span>(form, field, rules[i], rules, i, options, <span class="pl-smi">methods</span>.<span class="pl-smi">_funcCallRequired</span>);</td>
      </tr>
      <tr>
        <td id="L701" class="blob-num js-line-number" data-line-number="701"></td>
        <td id="LC701" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (errorMsg <span class="pl-k">!==</span> <span class="pl-c1">undefined</span>) {</td>
      </tr>
      <tr>
        <td id="L702" class="blob-num js-line-number" data-line-number="702"></td>
        <td id="LC702" class="blob-code blob-code-inner js-file-line">							required <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L703" class="blob-num js-line-number" data-line-number="703"></td>
        <td id="LC703" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L704" class="blob-num js-line-number" data-line-number="704"></td>
        <td id="LC704" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L705" class="blob-num js-line-number" data-line-number="705"></td>
        <td id="LC705" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L706" class="blob-num js-line-number" data-line-number="706"></td>
        <td id="LC706" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">default</span>:</td>
      </tr>
      <tr>
        <td id="L707" class="blob-num js-line-number" data-line-number="707"></td>
        <td id="LC707" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L708" class="blob-num js-line-number" data-line-number="708"></td>
        <td id="LC708" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L709" class="blob-num js-line-number" data-line-number="709"></td>
        <td id="LC709" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> end_validation <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L710" class="blob-num js-line-number" data-line-number="710"></td>
        <td id="LC710" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L711" class="blob-num js-line-number" data-line-number="711"></td>
        <td id="LC711" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> If we were passed back an message object, check what the status was to determine what to do</span></td>
      </tr>
      <tr>
        <td id="L712" class="blob-num js-line-number" data-line-number="712"></td>
        <td id="LC712" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-k">typeof</span> errorMsg <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>object<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L713" class="blob-num js-line-number" data-line-number="713"></td>
        <td id="LC713" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">switch</span> (<span class="pl-smi">errorMsg</span>.<span class="pl-c1">status</span>) {</td>
      </tr>
      <tr>
        <td id="L714" class="blob-num js-line-number" data-line-number="714"></td>
        <td id="LC714" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>_break<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L715" class="blob-num js-line-number" data-line-number="715"></td>
        <td id="LC715" class="blob-code blob-code-inner js-file-line">							end_validation <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L716" class="blob-num js-line-number" data-line-number="716"></td>
        <td id="LC716" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L717" class="blob-num js-line-number" data-line-number="717"></td>
        <td id="LC717" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> If we have an error message, set errorMsg to the error message</span></td>
      </tr>
      <tr>
        <td id="L718" class="blob-num js-line-number" data-line-number="718"></td>
        <td id="LC718" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>_error<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L719" class="blob-num js-line-number" data-line-number="719"></td>
        <td id="LC719" class="blob-code blob-code-inner js-file-line">							errorMsg <span class="pl-k">=</span> <span class="pl-smi">errorMsg</span>.<span class="pl-smi">message</span>;</td>
      </tr>
      <tr>
        <td id="L720" class="blob-num js-line-number" data-line-number="720"></td>
        <td id="LC720" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L721" class="blob-num js-line-number" data-line-number="721"></td>
        <td id="LC721" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> If we want to throw an error, but not show a prompt, return early with true</span></td>
      </tr>
      <tr>
        <td id="L722" class="blob-num js-line-number" data-line-number="722"></td>
        <td id="LC722" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>_error_no_prompt<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L723" class="blob-num js-line-number" data-line-number="723"></td>
        <td id="LC723" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">return</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L724" class="blob-num js-line-number" data-line-number="724"></td>
        <td id="LC724" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L725" class="blob-num js-line-number" data-line-number="725"></td>
        <td id="LC725" class="blob-code blob-code-inner js-file-line">						<span class="pl-c"><span class="pl-c">//</span> Anything else we continue on</span></td>
      </tr>
      <tr>
        <td id="L726" class="blob-num js-line-number" data-line-number="726"></td>
        <td id="LC726" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">default</span>:</td>
      </tr>
      <tr>
        <td id="L727" class="blob-num js-line-number" data-line-number="727"></td>
        <td id="LC727" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L728" class="blob-num js-line-number" data-line-number="728"></td>
        <td id="LC728" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L729" class="blob-num js-line-number" data-line-number="729"></td>
        <td id="LC729" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L730" class="blob-num js-line-number" data-line-number="730"></td>
        <td id="LC730" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L731" class="blob-num js-line-number" data-line-number="731"></td>
        <td id="LC731" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span>funcCallRequired, first in rules, and has error, skip anything else</span></td>
      </tr>
      <tr>
        <td id="L732" class="blob-num js-line-number" data-line-number="732"></td>
        <td id="LC732" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span>( i<span class="pl-k">==</span><span class="pl-c1">0</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">str</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>funcCallRequired<span class="pl-pds">&#39;</span></span>)<span class="pl-k">==</span><span class="pl-c1">0</span> <span class="pl-k">&amp;&amp;</span> errorMsg <span class="pl-k">!==</span> <span class="pl-c1">undefined</span> ){</td>
      </tr>
      <tr>
        <td id="L733" class="blob-num js-line-number" data-line-number="733"></td>
        <td id="LC733" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span>(promptText <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L734" class="blob-num js-line-number" data-line-number="734"></td>
        <td id="LC734" class="blob-code blob-code-inner js-file-line">						promptText <span class="pl-k">+=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&lt;br/&gt;<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L735" class="blob-num js-line-number" data-line-number="735"></td>
        <td id="LC735" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L736" class="blob-num js-line-number" data-line-number="736"></td>
        <td id="LC736" class="blob-code blob-code-inner js-file-line">					promptText <span class="pl-k">+=</span> errorMsg;</td>
      </tr>
      <tr>
        <td id="L737" class="blob-num js-line-number" data-line-number="737"></td>
        <td id="LC737" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">options</span>.<span class="pl-smi">isError</span><span class="pl-k">=</span><span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L738" class="blob-num js-line-number" data-line-number="738"></td>
        <td id="LC738" class="blob-code blob-code-inner js-file-line">					field_errors<span class="pl-k">++</span>;</td>
      </tr>
      <tr>
        <td id="L739" class="blob-num js-line-number" data-line-number="739"></td>
        <td id="LC739" class="blob-code blob-code-inner js-file-line">					end_validation<span class="pl-k">=</span><span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L740" class="blob-num js-line-number" data-line-number="740"></td>
        <td id="LC740" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L741" class="blob-num js-line-number" data-line-number="741"></td>
        <td id="LC741" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L742" class="blob-num js-line-number" data-line-number="742"></td>
        <td id="LC742" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> If it has been specified that validation should end now, break</span></td>
      </tr>
      <tr>
        <td id="L743" class="blob-num js-line-number" data-line-number="743"></td>
        <td id="LC743" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (end_validation) {</td>
      </tr>
      <tr>
        <td id="L744" class="blob-num js-line-number" data-line-number="744"></td>
        <td id="LC744" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L745" class="blob-num js-line-number" data-line-number="745"></td>
        <td id="LC745" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L746" class="blob-num js-line-number" data-line-number="746"></td>
        <td id="LC746" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L747" class="blob-num js-line-number" data-line-number="747"></td>
        <td id="LC747" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> If we have a string, that means that we have an error, so add it to the error message.</span></td>
      </tr>
      <tr>
        <td id="L748" class="blob-num js-line-number" data-line-number="748"></td>
        <td id="LC748" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-k">typeof</span> errorMsg <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>string<span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L749" class="blob-num js-line-number" data-line-number="749"></td>
        <td id="LC749" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span>(promptText <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L750" class="blob-num js-line-number" data-line-number="750"></td>
        <td id="LC750" class="blob-code blob-code-inner js-file-line">						promptText <span class="pl-k">+=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&lt;br/&gt;<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L751" class="blob-num js-line-number" data-line-number="751"></td>
        <td id="LC751" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L752" class="blob-num js-line-number" data-line-number="752"></td>
        <td id="LC752" class="blob-code blob-code-inner js-file-line">					promptText <span class="pl-k">+=</span> errorMsg;</td>
      </tr>
      <tr>
        <td id="L753" class="blob-num js-line-number" data-line-number="753"></td>
        <td id="LC753" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">options</span>.<span class="pl-smi">isError</span> <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L754" class="blob-num js-line-number" data-line-number="754"></td>
        <td id="LC754" class="blob-code blob-code-inner js-file-line">					field_errors<span class="pl-k">++</span>;</td>
      </tr>
      <tr>
        <td id="L755" class="blob-num js-line-number" data-line-number="755"></td>
        <td id="LC755" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L756" class="blob-num js-line-number" data-line-number="756"></td>
        <td id="LC756" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L757" class="blob-num js-line-number" data-line-number="757"></td>
        <td id="LC757" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> If the rules required is not added, an empty field is not validated</span></td>
      </tr>
      <tr>
        <td id="L758" class="blob-num js-line-number" data-line-number="758"></td>
        <td id="LC758" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>the 3rd condition is added so that even empty password fields should be equal</span></td>
      </tr>
      <tr>
        <td id="L759" class="blob-num js-line-number" data-line-number="759"></td>
        <td id="LC759" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>otherwise if one is filled and another left empty, the &quot;equal&quot; condition would fail</span></td>
      </tr>
      <tr>
        <td id="L760" class="blob-num js-line-number" data-line-number="760"></td>
        <td id="LC760" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>which does not make any sense</span></td>
      </tr>
      <tr>
        <td id="L761" class="blob-num js-line-number" data-line-number="761"></td>
        <td id="LC761" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-k">!</span>required <span class="pl-k">&amp;&amp;</span> <span class="pl-k">!</span>(<span class="pl-smi">field</span>.<span class="pl-en">val</span>()) <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">field</span>.<span class="pl-en">val</span>().<span class="pl-c1">length</span> <span class="pl-k">&lt;</span> <span class="pl-c1">1</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">$</span>.<span class="pl-en">inArray</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>equals<span class="pl-pds">&#39;</span></span>, rules) <span class="pl-k">&lt;</span> <span class="pl-c1">0</span>) <span class="pl-smi">options</span>.<span class="pl-smi">isError</span> <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L762" class="blob-num js-line-number" data-line-number="762"></td>
        <td id="LC762" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L763" class="blob-num js-line-number" data-line-number="763"></td>
        <td id="LC763" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> Hack for radio/checkbox group button, the validation go into the</span></td>
      </tr>
      <tr>
        <td id="L764" class="blob-num js-line-number" data-line-number="764"></td>
        <td id="LC764" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> first radio/checkbox of the group</span></td>
      </tr>
      <tr>
        <td id="L765" class="blob-num js-line-number" data-line-number="765"></td>
        <td id="LC765" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fieldType <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">prop</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>type<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L766" class="blob-num js-line-number" data-line-number="766"></td>
        <td id="LC766" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> positionType<span class="pl-k">=</span><span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>promptPosition<span class="pl-pds">&quot;</span></span>) <span class="pl-k">||</span> <span class="pl-smi">options</span>.<span class="pl-smi">promptPosition</span>;</td>
      </tr>
      <tr>
        <td id="L767" class="blob-num js-line-number" data-line-number="767"></td>
        <td id="LC767" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L768" class="blob-num js-line-number" data-line-number="768"></td>
        <td id="LC768" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> ((fieldType <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>radio<span class="pl-pds">&quot;</span></span> <span class="pl-k">||</span> fieldType <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>checkbox<span class="pl-pds">&quot;</span></span>) <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> fieldName <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">length</span> <span class="pl-k">&gt;</span> <span class="pl-c1">1</span>) {</td>
      </tr>
      <tr>
        <td id="L769" class="blob-num js-line-number" data-line-number="769"></td>
        <td id="LC769" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span>(positionType <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&#39;</span>inline<span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L770" class="blob-num js-line-number" data-line-number="770"></td>
        <td id="LC770" class="blob-code blob-code-inner js-file-line">					field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> fieldName <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;][type!=hidden]:last<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L771" class="blob-num js-line-number" data-line-number="771"></td>
        <td id="LC771" class="blob-code blob-code-inner js-file-line">				} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L772" class="blob-num js-line-number" data-line-number="772"></td>
        <td id="LC772" class="blob-code blob-code-inner js-file-line">				field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> fieldName <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;][type!=hidden]:first<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L773" class="blob-num js-line-number" data-line-number="773"></td>
        <td id="LC773" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L774" class="blob-num js-line-number" data-line-number="774"></td>
        <td id="LC774" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">showArrowOnRadioAndCheckbox</span>;</td>
      </tr>
      <tr>
        <td id="L775" class="blob-num js-line-number" data-line-number="775"></td>
        <td id="LC775" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L776" class="blob-num js-line-number" data-line-number="776"></td>
        <td id="LC776" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L777" class="blob-num js-line-number" data-line-number="777"></td>
        <td id="LC777" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">field</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:hidden<span class="pl-pds">&quot;</span></span>) <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">prettySelect</span>) {</td>
      </tr>
      <tr>
        <td id="L778" class="blob-num js-line-number" data-line-number="778"></td>
        <td id="LC778" class="blob-code blob-code-inner js-file-line">				field <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">usePrefix</span> <span class="pl-k">+</span> <span class="pl-smi">methods</span>.<span class="pl-en">_jqSelector</span>(<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>id<span class="pl-pds">&#39;</span></span>)) <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">useSuffix</span>);</td>
      </tr>
      <tr>
        <td id="L779" class="blob-num js-line-number" data-line-number="779"></td>
        <td id="LC779" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L780" class="blob-num js-line-number" data-line-number="780"></td>
        <td id="LC780" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L781" class="blob-num js-line-number" data-line-number="781"></td>
        <td id="LC781" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">isError</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">showPrompts</span>){</td>
      </tr>
      <tr>
        <td id="L782" class="blob-num js-line-number" data-line-number="782"></td>
        <td id="LC782" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">methods</span>.<span class="pl-en">_showPrompt</span>(field, promptText, promptType, <span class="pl-c1">false</span>, options);</td>
      </tr>
      <tr>
        <td id="L783" class="blob-num js-line-number" data-line-number="783"></td>
        <td id="LC783" class="blob-code blob-code-inner js-file-line">			}<span class="pl-k">else</span>{</td>
      </tr>
      <tr>
        <td id="L784" class="blob-num js-line-number" data-line-number="784"></td>
        <td id="LC784" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-k">!</span>isAjaxValidator) <span class="pl-smi">methods</span>.<span class="pl-en">_closePrompt</span>(field);</td>
      </tr>
      <tr>
        <td id="L785" class="blob-num js-line-number" data-line-number="785"></td>
        <td id="LC785" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L786" class="blob-num js-line-number" data-line-number="786"></td>
        <td id="LC786" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L787" class="blob-num js-line-number" data-line-number="787"></td>
        <td id="LC787" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span>isAjaxValidator) {</td>
      </tr>
      <tr>
        <td id="L788" class="blob-num js-line-number" data-line-number="788"></td>
        <td id="LC788" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">field</span>.<span class="pl-en">trigger</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv.field.result<span class="pl-pds">&quot;</span></span>, [field, <span class="pl-smi">options</span>.<span class="pl-smi">isError</span>, promptText]);</td>
      </tr>
      <tr>
        <td id="L789" class="blob-num js-line-number" data-line-number="789"></td>
        <td id="LC789" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L790" class="blob-num js-line-number" data-line-number="790"></td>
        <td id="LC790" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L791" class="blob-num js-line-number" data-line-number="791"></td>
        <td id="LC791" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">/*</span> Record error <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L792" class="blob-num js-line-number" data-line-number="792"></td>
        <td id="LC792" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> errindex <span class="pl-k">=</span> <span class="pl-smi">$</span>.<span class="pl-en">inArray</span>(field[<span class="pl-c1">0</span>], <span class="pl-smi">options</span>.<span class="pl-smi">InvalidFields</span>);</td>
      </tr>
      <tr>
        <td id="L793" class="blob-num js-line-number" data-line-number="793"></td>
        <td id="LC793" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (errindex <span class="pl-k">==</span> <span class="pl-k">-</span><span class="pl-c1">1</span>) {</td>
      </tr>
      <tr>
        <td id="L794" class="blob-num js-line-number" data-line-number="794"></td>
        <td id="LC794" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">isError</span>)</td>
      </tr>
      <tr>
        <td id="L795" class="blob-num js-line-number" data-line-number="795"></td>
        <td id="LC795" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">options</span>.<span class="pl-smi">InvalidFields</span>.<span class="pl-c1">push</span>(field[<span class="pl-c1">0</span>]);</td>
      </tr>
      <tr>
        <td id="L796" class="blob-num js-line-number" data-line-number="796"></td>
        <td id="LC796" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">isError</span>) {</td>
      </tr>
      <tr>
        <td id="L797" class="blob-num js-line-number" data-line-number="797"></td>
        <td id="LC797" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">options</span>.<span class="pl-smi">InvalidFields</span>.<span class="pl-c1">splice</span>(errindex, <span class="pl-c1">1</span>);</td>
      </tr>
      <tr>
        <td id="L798" class="blob-num js-line-number" data-line-number="798"></td>
        <td id="LC798" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L799" class="blob-num js-line-number" data-line-number="799"></td>
        <td id="LC799" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L800" class="blob-num js-line-number" data-line-number="800"></td>
        <td id="LC800" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">methods</span>.<span class="pl-en">_handleStatusCssClasses</span>(field, options);</td>
      </tr>
      <tr>
        <td id="L801" class="blob-num js-line-number" data-line-number="801"></td>
        <td id="LC801" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L802" class="blob-num js-line-number" data-line-number="802"></td>
        <td id="LC802" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">/*</span> run callback function for each field <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L803" class="blob-num js-line-number" data-line-number="803"></td>
        <td id="LC803" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">isError</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">onFieldFailure</span>)</td>
      </tr>
      <tr>
        <td id="L804" class="blob-num js-line-number" data-line-number="804"></td>
        <td id="LC804" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">options</span>.<span class="pl-en">onFieldFailure</span>(field);</td>
      </tr>
      <tr>
        <td id="L805" class="blob-num js-line-number" data-line-number="805"></td>
        <td id="LC805" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L806" class="blob-num js-line-number" data-line-number="806"></td>
        <td id="LC806" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">isError</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">onFieldSuccess</span>)</td>
      </tr>
      <tr>
        <td id="L807" class="blob-num js-line-number" data-line-number="807"></td>
        <td id="LC807" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">options</span>.<span class="pl-en">onFieldSuccess</span>(field);</td>
      </tr>
      <tr>
        <td id="L808" class="blob-num js-line-number" data-line-number="808"></td>
        <td id="LC808" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L809" class="blob-num js-line-number" data-line-number="809"></td>
        <td id="LC809" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">isError</span>;</td>
      </tr>
      <tr>
        <td id="L810" class="blob-num js-line-number" data-line-number="810"></td>
        <td id="LC810" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L811" class="blob-num js-line-number" data-line-number="811"></td>
        <td id="LC811" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L812" class="blob-num js-line-number" data-line-number="812"></td>
        <td id="LC812" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Handling css classes of fields indicating result of validation</span></td>
      </tr>
      <tr>
        <td id="L813" class="blob-num js-line-number" data-line-number="813"></td>
        <td id="LC813" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L814" class="blob-num js-line-number" data-line-number="814"></td>
        <td id="LC814" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L815" class="blob-num js-line-number" data-line-number="815"></td>
        <td id="LC815" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            field</span></td>
      </tr>
      <tr>
        <td id="L816" class="blob-num js-line-number" data-line-number="816"></td>
        <td id="LC816" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]}</span></td>
      </tr>
      <tr>
        <td id="L817" class="blob-num js-line-number" data-line-number="817"></td>
        <td id="LC817" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            field&#39;s validation rules</span></td>
      </tr>
      <tr>
        <td id="L818" class="blob-num js-line-number" data-line-number="818"></td>
        <td id="LC818" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@private</span></span></td>
      </tr>
      <tr>
        <td id="L819" class="blob-num js-line-number" data-line-number="819"></td>
        <td id="LC819" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L820" class="blob-num js-line-number" data-line-number="820"></td>
        <td id="LC820" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_handleStatusCssClasses</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L821" class="blob-num js-line-number" data-line-number="821"></td>
        <td id="LC821" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">/*</span> remove all classes <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L822" class="blob-num js-line-number" data-line-number="822"></td>
        <td id="LC822" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">addSuccessCssClassToField</span>)</td>
      </tr>
      <tr>
        <td id="L823" class="blob-num js-line-number" data-line-number="823"></td>
        <td id="LC823" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">field</span>.<span class="pl-en">removeClass</span>(<span class="pl-smi">options</span>.<span class="pl-smi">addSuccessCssClassToField</span>);</td>
      </tr>
      <tr>
        <td id="L824" class="blob-num js-line-number" data-line-number="824"></td>
        <td id="LC824" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L825" class="blob-num js-line-number" data-line-number="825"></td>
        <td id="LC825" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">addFailureCssClassToField</span>)</td>
      </tr>
      <tr>
        <td id="L826" class="blob-num js-line-number" data-line-number="826"></td>
        <td id="LC826" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">field</span>.<span class="pl-en">removeClass</span>(<span class="pl-smi">options</span>.<span class="pl-smi">addFailureCssClassToField</span>);</td>
      </tr>
      <tr>
        <td id="L827" class="blob-num js-line-number" data-line-number="827"></td>
        <td id="LC827" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L828" class="blob-num js-line-number" data-line-number="828"></td>
        <td id="LC828" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">/*</span> Add classes <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L829" class="blob-num js-line-number" data-line-number="829"></td>
        <td id="LC829" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">addSuccessCssClassToField</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">isError</span>)</td>
      </tr>
      <tr>
        <td id="L830" class="blob-num js-line-number" data-line-number="830"></td>
        <td id="LC830" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">field</span>.<span class="pl-en">addClass</span>(<span class="pl-smi">options</span>.<span class="pl-smi">addSuccessCssClassToField</span>);</td>
      </tr>
      <tr>
        <td id="L831" class="blob-num js-line-number" data-line-number="831"></td>
        <td id="LC831" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L832" class="blob-num js-line-number" data-line-number="832"></td>
        <td id="LC832" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">addFailureCssClassToField</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">isError</span>)</td>
      </tr>
      <tr>
        <td id="L833" class="blob-num js-line-number" data-line-number="833"></td>
        <td id="LC833" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">field</span>.<span class="pl-en">addClass</span>(<span class="pl-smi">options</span>.<span class="pl-smi">addFailureCssClassToField</span>);</td>
      </tr>
      <tr>
        <td id="L834" class="blob-num js-line-number" data-line-number="834"></td>
        <td id="LC834" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L835" class="blob-num js-line-number" data-line-number="835"></td>
        <td id="LC835" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L836" class="blob-num js-line-number" data-line-number="836"></td>
        <td id="LC836" class="blob-code blob-code-inner js-file-line">		 <span class="pl-c"><span class="pl-c">/**</span>******************</span></td>
      </tr>
      <tr>
        <td id="L837" class="blob-num js-line-number" data-line-number="837"></td>
        <td id="LC837" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * _getErrorMessage</span></td>
      </tr>
      <tr>
        <td id="L838" class="blob-num js-line-number" data-line-number="838"></td>
        <td id="LC838" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  *</span></td>
      </tr>
      <tr>
        <td id="L839" class="blob-num js-line-number" data-line-number="839"></td>
        <td id="LC839" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@param</span> form</span></td>
      </tr>
      <tr>
        <td id="L840" class="blob-num js-line-number" data-line-number="840"></td>
        <td id="LC840" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@param</span> field</span></td>
      </tr>
      <tr>
        <td id="L841" class="blob-num js-line-number" data-line-number="841"></td>
        <td id="LC841" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@param</span> rule</span></td>
      </tr>
      <tr>
        <td id="L842" class="blob-num js-line-number" data-line-number="842"></td>
        <td id="LC842" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@param</span> rules</span></td>
      </tr>
      <tr>
        <td id="L843" class="blob-num js-line-number" data-line-number="843"></td>
        <td id="LC843" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@param</span> i</span></td>
      </tr>
      <tr>
        <td id="L844" class="blob-num js-line-number" data-line-number="844"></td>
        <td id="LC844" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@param</span> options</span></td>
      </tr>
      <tr>
        <td id="L845" class="blob-num js-line-number" data-line-number="845"></td>
        <td id="LC845" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@param</span> originalValidationMethod</span></td>
      </tr>
      <tr>
        <td id="L846" class="blob-num js-line-number" data-line-number="846"></td>
        <td id="LC846" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@return</span> <span class="pl-en">{*}</span></span></td>
      </tr>
      <tr>
        <td id="L847" class="blob-num js-line-number" data-line-number="847"></td>
        <td id="LC847" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@private</span></span></td>
      </tr>
      <tr>
        <td id="L848" class="blob-num js-line-number" data-line-number="848"></td>
        <td id="LC848" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L849" class="blob-num js-line-number" data-line-number="849"></td>
        <td id="LC849" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">_getErrorMessage</span><span class="pl-k">:</span><span class="pl-k">function</span> (<span class="pl-smi">form</span>, <span class="pl-smi">field</span>, <span class="pl-smi">rule</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>, <span class="pl-smi">originalValidationMethod</span>) {</td>
      </tr>
      <tr>
        <td id="L850" class="blob-num js-line-number" data-line-number="850"></td>
        <td id="LC850" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> If we are using the custon validation type, build the index for the rule.</span></td>
      </tr>
      <tr>
        <td id="L851" class="blob-num js-line-number" data-line-number="851"></td>
        <td id="LC851" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> Otherwise if we are doing a function call, make the call and return the object</span></td>
      </tr>
      <tr>
        <td id="L852" class="blob-num js-line-number" data-line-number="852"></td>
        <td id="LC852" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> that is passed back.</span></td>
      </tr>
      <tr>
        <td id="L853" class="blob-num js-line-number" data-line-number="853"></td>
        <td id="LC853" class="blob-code blob-code-inner js-file-line">	 		 <span class="pl-k">var</span> rule_index <span class="pl-k">=</span> <span class="pl-smi">jQuery</span>.<span class="pl-en">inArray</span>(rule, rules);</td>
      </tr>
      <tr>
        <td id="L854" class="blob-num js-line-number" data-line-number="854"></td>
        <td id="LC854" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (rule <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&quot;</span>custom<span class="pl-pds">&quot;</span></span> <span class="pl-k">||</span> rule <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&quot;</span>funcCall<span class="pl-pds">&quot;</span></span> <span class="pl-k">||</span> rule <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&quot;</span>funcCallRequired<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L855" class="blob-num js-line-number" data-line-number="855"></td>
        <td id="LC855" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">var</span> custom_validation_type <span class="pl-k">=</span> rules[rule_index <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L856" class="blob-num js-line-number" data-line-number="856"></td>
        <td id="LC856" class="blob-code blob-code-inner js-file-line">				 rule <span class="pl-k">=</span> rule <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> custom_validation_type <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L857" class="blob-num js-line-number" data-line-number="857"></td>
        <td id="LC857" class="blob-code blob-code-inner js-file-line">				 <span class="pl-c"><span class="pl-c">//</span> Delete the rule from the rules array so that it doesn&#39;t try to call the</span></td>
      </tr>
      <tr>
        <td id="L858" class="blob-num js-line-number" data-line-number="858"></td>
        <td id="LC858" class="blob-code blob-code-inner js-file-line">			    <span class="pl-c"><span class="pl-c">//</span> same rule over again</span></td>
      </tr>
      <tr>
        <td id="L859" class="blob-num js-line-number" data-line-number="859"></td>
        <td id="LC859" class="blob-code blob-code-inner js-file-line">			    <span class="pl-k">delete</span>(rules[rule_index]);</td>
      </tr>
      <tr>
        <td id="L860" class="blob-num js-line-number" data-line-number="860"></td>
        <td id="LC860" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L861" class="blob-num js-line-number" data-line-number="861"></td>
        <td id="LC861" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> Change the rule to the composite rule, if it was different from the original</span></td>
      </tr>
      <tr>
        <td id="L862" class="blob-num js-line-number" data-line-number="862"></td>
        <td id="LC862" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> alteredRule <span class="pl-k">=</span> rule;</td>
      </tr>
      <tr>
        <td id="L863" class="blob-num js-line-number" data-line-number="863"></td>
        <td id="LC863" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L864" class="blob-num js-line-number" data-line-number="864"></td>
        <td id="LC864" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L865" class="blob-num js-line-number" data-line-number="865"></td>
        <td id="LC865" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> element_classes <span class="pl-k">=</span> (<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>data-validation-engine<span class="pl-pds">&quot;</span></span>)) <span class="pl-k">?</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>data-validation-engine<span class="pl-pds">&quot;</span></span>) <span class="pl-k">:</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>class<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L866" class="blob-num js-line-number" data-line-number="866"></td>
        <td id="LC866" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> element_classes_array <span class="pl-k">=</span> <span class="pl-smi">element_classes</span>.<span class="pl-c1">split</span>(<span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L867" class="blob-num js-line-number" data-line-number="867"></td>
        <td id="LC867" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L868" class="blob-num js-line-number" data-line-number="868"></td>
        <td id="LC868" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> Call the original validation method. If we are dealing with dates or checkboxes, also pass the form</span></td>
      </tr>
      <tr>
        <td id="L869" class="blob-num js-line-number" data-line-number="869"></td>
        <td id="LC869" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> errorMsg;</td>
      </tr>
      <tr>
        <td id="L870" class="blob-num js-line-number" data-line-number="870"></td>
        <td id="LC870" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (rule <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>future<span class="pl-pds">&quot;</span></span> <span class="pl-k">||</span> rule <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>past<span class="pl-pds">&quot;</span></span>  <span class="pl-k">||</span> rule <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>maxCheckbox<span class="pl-pds">&quot;</span></span> <span class="pl-k">||</span> rule <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>minCheckbox<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L871" class="blob-num js-line-number" data-line-number="871"></td>
        <td id="LC871" class="blob-code blob-code-inner js-file-line">				 errorMsg <span class="pl-k">=</span> <span class="pl-en">originalValidationMethod</span>(form, field, rules, i, options);</td>
      </tr>
      <tr>
        <td id="L872" class="blob-num js-line-number" data-line-number="872"></td>
        <td id="LC872" class="blob-code blob-code-inner js-file-line">			 } <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L873" class="blob-num js-line-number" data-line-number="873"></td>
        <td id="LC873" class="blob-code blob-code-inner js-file-line">				 errorMsg <span class="pl-k">=</span> <span class="pl-en">originalValidationMethod</span>(field, rules, i, options);</td>
      </tr>
      <tr>
        <td id="L874" class="blob-num js-line-number" data-line-number="874"></td>
        <td id="LC874" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L875" class="blob-num js-line-number" data-line-number="875"></td>
        <td id="LC875" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L876" class="blob-num js-line-number" data-line-number="876"></td>
        <td id="LC876" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> If the original validation method returned an error and we have a custom error message,</span></td>
      </tr>
      <tr>
        <td id="L877" class="blob-num js-line-number" data-line-number="877"></td>
        <td id="LC877" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> return the custom message instead. Otherwise return the original error message.</span></td>
      </tr>
      <tr>
        <td id="L878" class="blob-num js-line-number" data-line-number="878"></td>
        <td id="LC878" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (errorMsg <span class="pl-k">!=</span> <span class="pl-c1">undefined</span>) {</td>
      </tr>
      <tr>
        <td id="L879" class="blob-num js-line-number" data-line-number="879"></td>
        <td id="LC879" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">var</span> custom_message <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getCustomErrorMessage</span>(<span class="pl-en">$</span>(field), element_classes_array, alteredRule, options);</td>
      </tr>
      <tr>
        <td id="L880" class="blob-num js-line-number" data-line-number="880"></td>
        <td id="LC880" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">if</span> (custom_message) errorMsg <span class="pl-k">=</span> custom_message;</td>
      </tr>
      <tr>
        <td id="L881" class="blob-num js-line-number" data-line-number="881"></td>
        <td id="LC881" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L882" class="blob-num js-line-number" data-line-number="882"></td>
        <td id="LC882" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">return</span> errorMsg;</td>
      </tr>
      <tr>
        <td id="L883" class="blob-num js-line-number" data-line-number="883"></td>
        <td id="LC883" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L884" class="blob-num js-line-number" data-line-number="884"></td>
        <td id="LC884" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L885" class="blob-num js-line-number" data-line-number="885"></td>
        <td id="LC885" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">_getCustomErrorMessage</span><span class="pl-k">:</span><span class="pl-k">function</span> (<span class="pl-smi">field</span>, <span class="pl-smi">classes</span>, <span class="pl-smi">rule</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L886" class="blob-num js-line-number" data-line-number="886"></td>
        <td id="LC886" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> custom_message <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L887" class="blob-num js-line-number" data-line-number="887"></td>
        <td id="LC887" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> validityProp <span class="pl-k">=</span><span class="pl-sr"> <span class="pl-pds">/</span><span class="pl-k">^</span>custom<span class="pl-cce">\[</span><span class="pl-c1">.</span><span class="pl-k">*</span><span class="pl-cce">\]</span><span class="pl-k">$</span><span class="pl-pds">/</span></span>.<span class="pl-c1">test</span>(rule) <span class="pl-k">?</span> <span class="pl-smi">methods</span>.<span class="pl-smi">_validityProp</span>[<span class="pl-s"><span class="pl-pds">&quot;</span>custom<span class="pl-pds">&quot;</span></span>] <span class="pl-k">:</span> <span class="pl-smi">methods</span>.<span class="pl-smi">_validityProp</span>[rule];</td>
      </tr>
      <tr>
        <td id="L888" class="blob-num js-line-number" data-line-number="888"></td>
        <td id="LC888" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> If there is a validityProp for this rule, check to see if the field has an attribute for it</span></td>
      </tr>
      <tr>
        <td id="L889" class="blob-num js-line-number" data-line-number="889"></td>
        <td id="LC889" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (validityProp <span class="pl-k">!=</span> <span class="pl-c1">undefined</span>) {</td>
      </tr>
      <tr>
        <td id="L890" class="blob-num js-line-number" data-line-number="890"></td>
        <td id="LC890" class="blob-code blob-code-inner js-file-line">				custom_message <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>data-errormessage-<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span>validityProp);</td>
      </tr>
      <tr>
        <td id="L891" class="blob-num js-line-number" data-line-number="891"></td>
        <td id="LC891" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> If there was an error message for it, return the message</span></td>
      </tr>
      <tr>
        <td id="L892" class="blob-num js-line-number" data-line-number="892"></td>
        <td id="LC892" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (custom_message <span class="pl-k">!=</span> <span class="pl-c1">undefined</span>)</td>
      </tr>
      <tr>
        <td id="L893" class="blob-num js-line-number" data-line-number="893"></td>
        <td id="LC893" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span> custom_message;</td>
      </tr>
      <tr>
        <td id="L894" class="blob-num js-line-number" data-line-number="894"></td>
        <td id="LC894" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L895" class="blob-num js-line-number" data-line-number="895"></td>
        <td id="LC895" class="blob-code blob-code-inner js-file-line">			custom_message <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>data-errormessage<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L896" class="blob-num js-line-number" data-line-number="896"></td>
        <td id="LC896" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> If there is an inline custom error message, return it</span></td>
      </tr>
      <tr>
        <td id="L897" class="blob-num js-line-number" data-line-number="897"></td>
        <td id="LC897" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (custom_message <span class="pl-k">!=</span> <span class="pl-c1">undefined</span>)</td>
      </tr>
      <tr>
        <td id="L898" class="blob-num js-line-number" data-line-number="898"></td>
        <td id="LC898" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> custom_message;</td>
      </tr>
      <tr>
        <td id="L899" class="blob-num js-line-number" data-line-number="899"></td>
        <td id="LC899" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> id <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&#39;</span>#<span class="pl-pds">&#39;</span></span> <span class="pl-k">+</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L900" class="blob-num js-line-number" data-line-number="900"></td>
        <td id="LC900" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> If we have custom messages for the element&#39;s id, get the message for the rule from the id.</span></td>
      </tr>
      <tr>
        <td id="L901" class="blob-num js-line-number" data-line-number="901"></td>
        <td id="LC901" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> Otherwise, if we have custom messages for the element&#39;s classes, use the first class message we find instead.</span></td>
      </tr>
      <tr>
        <td id="L902" class="blob-num js-line-number" data-line-number="902"></td>
        <td id="LC902" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">typeof</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[id] <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>undefined<span class="pl-pds">&quot;</span></span> <span class="pl-k">&amp;&amp;</span></td>
      </tr>
      <tr>
        <td id="L903" class="blob-num js-line-number" data-line-number="903"></td>
        <td id="LC903" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">typeof</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[id][rule] <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>undefined<span class="pl-pds">&quot;</span></span> ) {</td>
      </tr>
      <tr>
        <td id="L904" class="blob-num js-line-number" data-line-number="904"></td>
        <td id="LC904" class="blob-code blob-code-inner js-file-line">						  custom_message <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[id][rule][<span class="pl-s"><span class="pl-pds">&#39;</span>message<span class="pl-pds">&#39;</span></span>];</td>
      </tr>
      <tr>
        <td id="L905" class="blob-num js-line-number" data-line-number="905"></td>
        <td id="LC905" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-smi">classes</span>.<span class="pl-c1">length</span> <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>) {</td>
      </tr>
      <tr>
        <td id="L906" class="blob-num js-line-number" data-line-number="906"></td>
        <td id="LC906" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">for</span> (<span class="pl-k">var</span> i <span class="pl-k">=</span> <span class="pl-c1">0</span>; i <span class="pl-k">&lt;</span> <span class="pl-smi">classes</span>.<span class="pl-c1">length</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">classes</span>.<span class="pl-c1">length</span> <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>; i<span class="pl-k">++</span>) {</td>
      </tr>
      <tr>
        <td id="L907" class="blob-num js-line-number" data-line-number="907"></td>
        <td id="LC907" class="blob-code blob-code-inner js-file-line">					 <span class="pl-k">var</span> element_class <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>.<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> classes[i];</td>
      </tr>
      <tr>
        <td id="L908" class="blob-num js-line-number" data-line-number="908"></td>
        <td id="LC908" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-k">typeof</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[element_class] <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>undefined<span class="pl-pds">&quot;</span></span> <span class="pl-k">&amp;&amp;</span></td>
      </tr>
      <tr>
        <td id="L909" class="blob-num js-line-number" data-line-number="909"></td>
        <td id="LC909" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">typeof</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[element_class][rule] <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>undefined<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L910" class="blob-num js-line-number" data-line-number="910"></td>
        <td id="LC910" class="blob-code blob-code-inner js-file-line">							custom_message <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[element_class][rule][<span class="pl-s"><span class="pl-pds">&#39;</span>message<span class="pl-pds">&#39;</span></span>];</td>
      </tr>
      <tr>
        <td id="L911" class="blob-num js-line-number" data-line-number="911"></td>
        <td id="LC911" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L912" class="blob-num js-line-number" data-line-number="912"></td>
        <td id="LC912" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L913" class="blob-num js-line-number" data-line-number="913"></td>
        <td id="LC913" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L914" class="blob-num js-line-number" data-line-number="914"></td>
        <td id="LC914" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L915" class="blob-num js-line-number" data-line-number="915"></td>
        <td id="LC915" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span>custom_message <span class="pl-k">&amp;&amp;</span></td>
      </tr>
      <tr>
        <td id="L916" class="blob-num js-line-number" data-line-number="916"></td>
        <td id="LC916" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">typeof</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[rule] <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>undefined<span class="pl-pds">&quot;</span></span> <span class="pl-k">&amp;&amp;</span></td>
      </tr>
      <tr>
        <td id="L917" class="blob-num js-line-number" data-line-number="917"></td>
        <td id="LC917" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">typeof</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[rule][<span class="pl-s"><span class="pl-pds">&#39;</span>message<span class="pl-pds">&#39;</span></span>] <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>undefined<span class="pl-pds">&quot;</span></span>){</td>
      </tr>
      <tr>
        <td id="L918" class="blob-num js-line-number" data-line-number="918"></td>
        <td id="LC918" class="blob-code blob-code-inner js-file-line">					 custom_message <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">custom_error_messages</span>[rule][<span class="pl-s"><span class="pl-pds">&#39;</span>message<span class="pl-pds">&#39;</span></span>];</td>
      </tr>
      <tr>
        <td id="L919" class="blob-num js-line-number" data-line-number="919"></td>
        <td id="LC919" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L920" class="blob-num js-line-number" data-line-number="920"></td>
        <td id="LC920" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">return</span> custom_message;</td>
      </tr>
      <tr>
        <td id="L921" class="blob-num js-line-number" data-line-number="921"></td>
        <td id="LC921" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L922" class="blob-num js-line-number" data-line-number="922"></td>
        <td id="LC922" class="blob-code blob-code-inner js-file-line">		 _validityProp<span class="pl-k">:</span> {</td>
      </tr>
      <tr>
        <td id="L923" class="blob-num js-line-number" data-line-number="923"></td>
        <td id="LC923" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>required<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>value-missing<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L924" class="blob-num js-line-number" data-line-number="924"></td>
        <td id="LC924" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>custom<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>custom-error<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L925" class="blob-num js-line-number" data-line-number="925"></td>
        <td id="LC925" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>groupRequired<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>value-missing<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L926" class="blob-num js-line-number" data-line-number="926"></td>
        <td id="LC926" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>ajax<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>custom-error<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L927" class="blob-num js-line-number" data-line-number="927"></td>
        <td id="LC927" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>minSize<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>range-underflow<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L928" class="blob-num js-line-number" data-line-number="928"></td>
        <td id="LC928" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>maxSize<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>range-overflow<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L929" class="blob-num js-line-number" data-line-number="929"></td>
        <td id="LC929" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>min<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>range-underflow<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L930" class="blob-num js-line-number" data-line-number="930"></td>
        <td id="LC930" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>max<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>range-overflow<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L931" class="blob-num js-line-number" data-line-number="931"></td>
        <td id="LC931" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>past<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>type-mismatch<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L932" class="blob-num js-line-number" data-line-number="932"></td>
        <td id="LC932" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>future<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>type-mismatch<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L933" class="blob-num js-line-number" data-line-number="933"></td>
        <td id="LC933" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>dateRange<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>type-mismatch<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L934" class="blob-num js-line-number" data-line-number="934"></td>
        <td id="LC934" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>dateTimeRange<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>type-mismatch<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L935" class="blob-num js-line-number" data-line-number="935"></td>
        <td id="LC935" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>maxCheckbox<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>range-overflow<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L936" class="blob-num js-line-number" data-line-number="936"></td>
        <td id="LC936" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>minCheckbox<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>range-underflow<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L937" class="blob-num js-line-number" data-line-number="937"></td>
        <td id="LC937" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>equals<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>pattern-mismatch<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L938" class="blob-num js-line-number" data-line-number="938"></td>
        <td id="LC938" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>funcCall<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>custom-error<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L939" class="blob-num js-line-number" data-line-number="939"></td>
        <td id="LC939" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>funcCallRequired<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>custom-error<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L940" class="blob-num js-line-number" data-line-number="940"></td>
        <td id="LC940" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>creditCard<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>pattern-mismatch<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L941" class="blob-num js-line-number" data-line-number="941"></td>
        <td id="LC941" class="blob-code blob-code-inner js-file-line">			 <span class="pl-s"><span class="pl-pds">&quot;</span>condRequired<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>value-missing<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L942" class="blob-num js-line-number" data-line-number="942"></td>
        <td id="LC942" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L943" class="blob-num js-line-number" data-line-number="943"></td>
        <td id="LC943" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L944" class="blob-num js-line-number" data-line-number="944"></td>
        <td id="LC944" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Required validation</span></td>
      </tr>
      <tr>
        <td id="L945" class="blob-num js-line-number" data-line-number="945"></td>
        <td id="LC945" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L946" class="blob-num js-line-number" data-line-number="946"></td>
        <td id="LC946" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L947" class="blob-num js-line-number" data-line-number="947"></td>
        <td id="LC947" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L948" class="blob-num js-line-number" data-line-number="948"></td>
        <td id="LC948" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L949" class="blob-num js-line-number" data-line-number="949"></td>
        <td id="LC949" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L950" class="blob-num js-line-number" data-line-number="950"></td>
        <td id="LC950" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L951" class="blob-num js-line-number" data-line-number="951"></td>
        <td id="LC951" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{bool}</span> <span class="pl-smi">condRequired</span> flag when method is used for internal purpose in condRequired check</span></td>
      </tr>
      <tr>
        <td id="L952" class="blob-num js-line-number" data-line-number="952"></td>
        <td id="LC952" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L953" class="blob-num js-line-number" data-line-number="953"></td>
        <td id="LC953" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L954" class="blob-num js-line-number" data-line-number="954"></td>
        <td id="LC954" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_required</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>, <span class="pl-smi">condRequired</span>) {</td>
      </tr>
      <tr>
        <td id="L955" class="blob-num js-line-number" data-line-number="955"></td>
        <td id="LC955" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">switch</span> (<span class="pl-smi">field</span>.<span class="pl-en">prop</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>type<span class="pl-pds">&quot;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L956" class="blob-num js-line-number" data-line-number="956"></td>
        <td id="LC956" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>radio<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L957" class="blob-num js-line-number" data-line-number="957"></td>
        <td id="LC957" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>checkbox<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L958" class="blob-num js-line-number" data-line-number="958"></td>
        <td id="LC958" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> new validation style to only check dependent field</span></td>
      </tr>
      <tr>
        <td id="L959" class="blob-num js-line-number" data-line-number="959"></td>
        <td id="LC959" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (condRequired) {</td>
      </tr>
      <tr>
        <td id="L960" class="blob-num js-line-number" data-line-number="960"></td>
        <td id="LC960" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">field</span>.<span class="pl-en">prop</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>checked<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L961" class="blob-num js-line-number" data-line-number="961"></td>
        <td id="LC961" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertTextCheckboxMultiple</span>;</td>
      </tr>
      <tr>
        <td id="L962" class="blob-num js-line-number" data-line-number="962"></td>
        <td id="LC962" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L963" class="blob-num js-line-number" data-line-number="963"></td>
        <td id="LC963" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L964" class="blob-num js-line-number" data-line-number="964"></td>
        <td id="LC964" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L965" class="blob-num js-line-number" data-line-number="965"></td>
        <td id="LC965" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span> old validation style</span></td>
      </tr>
      <tr>
        <td id="L966" class="blob-num js-line-number" data-line-number="966"></td>
        <td id="LC966" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>form, .validationEngineContainer<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L967" class="blob-num js-line-number" data-line-number="967"></td>
        <td id="LC967" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> name <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>name<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L968" class="blob-num js-line-number" data-line-number="968"></td>
        <td id="LC968" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> name <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]:checked<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">length</span> <span class="pl-k">==</span> <span class="pl-c1">0</span>) {</td>
      </tr>
      <tr>
        <td id="L969" class="blob-num js-line-number" data-line-number="969"></td>
        <td id="LC969" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> name <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]:visible<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">length</span> <span class="pl-k">==</span> <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L970" class="blob-num js-line-number" data-line-number="970"></td>
        <td id="LC970" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertTextCheckboxe</span>;</td>
      </tr>
      <tr>
        <td id="L971" class="blob-num js-line-number" data-line-number="971"></td>
        <td id="LC971" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L972" class="blob-num js-line-number" data-line-number="972"></td>
        <td id="LC972" class="blob-code blob-code-inner js-file-line">							<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertTextCheckboxMultiple</span>;</td>
      </tr>
      <tr>
        <td id="L973" class="blob-num js-line-number" data-line-number="973"></td>
        <td id="LC973" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L974" class="blob-num js-line-number" data-line-number="974"></td>
        <td id="LC974" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L975" class="blob-num js-line-number" data-line-number="975"></td>
        <td id="LC975" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>text<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L976" class="blob-num js-line-number" data-line-number="976"></td>
        <td id="LC976" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>password<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L977" class="blob-num js-line-number" data-line-number="977"></td>
        <td id="LC977" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>textarea<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L978" class="blob-num js-line-number" data-line-number="978"></td>
        <td id="LC978" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>file<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L979" class="blob-num js-line-number" data-line-number="979"></td>
        <td id="LC979" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>select-one<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L980" class="blob-num js-line-number" data-line-number="980"></td>
        <td id="LC980" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>select-multiple<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L981" class="blob-num js-line-number" data-line-number="981"></td>
        <td id="LC981" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">default</span>:</td>
      </tr>
      <tr>
        <td id="L982" class="blob-num js-line-number" data-line-number="982"></td>
        <td id="LC982" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> field_val      <span class="pl-k">=</span> <span class="pl-smi">$</span>.<span class="pl-en">trim</span>( <span class="pl-smi">field</span>.<span class="pl-en">val</span>()                               );</td>
      </tr>
      <tr>
        <td id="L983" class="blob-num js-line-number" data-line-number="983"></td>
        <td id="LC983" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> dv_placeholder <span class="pl-k">=</span> <span class="pl-smi">$</span>.<span class="pl-en">trim</span>( <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>data-validation-placeholder<span class="pl-pds">&quot;</span></span>) );</td>
      </tr>
      <tr>
        <td id="L984" class="blob-num js-line-number" data-line-number="984"></td>
        <td id="LC984" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> placeholder    <span class="pl-k">=</span> <span class="pl-smi">$</span>.<span class="pl-en">trim</span>( <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>placeholder<span class="pl-pds">&quot;</span></span>)                 );</td>
      </tr>
      <tr>
        <td id="L985" class="blob-num js-line-number" data-line-number="985"></td>
        <td id="LC985" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (</td>
      </tr>
      <tr>
        <td id="L986" class="blob-num js-line-number" data-line-number="986"></td>
        <td id="LC986" class="blob-code blob-code-inner js-file-line">						   ( <span class="pl-k">!</span>field_val                                    )</td>
      </tr>
      <tr>
        <td id="L987" class="blob-num js-line-number" data-line-number="987"></td>
        <td id="LC987" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">||</span> ( dv_placeholder <span class="pl-k">&amp;&amp;</span> field_val <span class="pl-k">==</span> dv_placeholder )</td>
      </tr>
      <tr>
        <td id="L988" class="blob-num js-line-number" data-line-number="988"></td>
        <td id="LC988" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">||</span> ( placeholder    <span class="pl-k">&amp;&amp;</span> field_val <span class="pl-k">==</span> placeholder    )</td>
      </tr>
      <tr>
        <td id="L989" class="blob-num js-line-number" data-line-number="989"></td>
        <td id="LC989" class="blob-code blob-code-inner js-file-line">					) {</td>
      </tr>
      <tr>
        <td id="L990" class="blob-num js-line-number" data-line-number="990"></td>
        <td id="LC990" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L991" class="blob-num js-line-number" data-line-number="991"></td>
        <td id="LC991" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L992" class="blob-num js-line-number" data-line-number="992"></td>
        <td id="LC992" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L993" class="blob-num js-line-number" data-line-number="993"></td>
        <td id="LC993" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L994" class="blob-num js-line-number" data-line-number="994"></td>
        <td id="LC994" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L995" class="blob-num js-line-number" data-line-number="995"></td>
        <td id="LC995" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L996" class="blob-num js-line-number" data-line-number="996"></td>
        <td id="LC996" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Validate that 1 from the group field is required</span></td>
      </tr>
      <tr>
        <td id="L997" class="blob-num js-line-number" data-line-number="997"></td>
        <td id="LC997" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L998" class="blob-num js-line-number" data-line-number="998"></td>
        <td id="LC998" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L999" class="blob-num js-line-number" data-line-number="999"></td>
        <td id="LC999" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1000" class="blob-num js-line-number" data-line-number="1000"></td>
        <td id="LC1000" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1001" class="blob-num js-line-number" data-line-number="1001"></td>
        <td id="LC1001" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1002" class="blob-num js-line-number" data-line-number="1002"></td>
        <td id="LC1002" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1003" class="blob-num js-line-number" data-line-number="1003"></td>
        <td id="LC1003" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1004" class="blob-num js-line-number" data-line-number="1004"></td>
        <td id="LC1004" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1005" class="blob-num js-line-number" data-line-number="1005"></td>
        <td id="LC1005" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_groupRequired</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1006" class="blob-num js-line-number" data-line-number="1006"></td>
        <td id="LC1006" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> classGroup <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">options</span>.<span class="pl-smi">validateAttribute</span><span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>*=<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span>rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>] <span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L1007" class="blob-num js-line-number" data-line-number="1007"></td>
        <td id="LC1007" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> isValid <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L1008" class="blob-num js-line-number" data-line-number="1008"></td>
        <td id="LC1008" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> Check all fields from the group</span></td>
      </tr>
      <tr>
        <td id="L1009" class="blob-num js-line-number" data-line-number="1009"></td>
        <td id="LC1009" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">field</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>form, .validationEngineContainer<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">find</span>(classGroup).<span class="pl-en">each</span>(<span class="pl-k">function</span>(){</td>
      </tr>
      <tr>
        <td id="L1010" class="blob-num js-line-number" data-line-number="1010"></td>
        <td id="LC1010" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span>(<span class="pl-k">!</span><span class="pl-smi">methods</span>.<span class="pl-en">_required</span>(<span class="pl-en">$</span>(<span class="pl-c1">this</span>), rules, i, options)){</td>
      </tr>
      <tr>
        <td id="L1011" class="blob-num js-line-number" data-line-number="1011"></td>
        <td id="LC1011" class="blob-code blob-code-inner js-file-line">					isValid <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L1012" class="blob-num js-line-number" data-line-number="1012"></td>
        <td id="LC1012" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L1013" class="blob-num js-line-number" data-line-number="1013"></td>
        <td id="LC1013" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1014" class="blob-num js-line-number" data-line-number="1014"></td>
        <td id="LC1014" class="blob-code blob-code-inner js-file-line">			});</td>
      </tr>
      <tr>
        <td id="L1015" class="blob-num js-line-number" data-line-number="1015"></td>
        <td id="LC1015" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1016" class="blob-num js-line-number" data-line-number="1016"></td>
        <td id="LC1016" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-k">!</span>isValid) {</td>
      </tr>
      <tr>
        <td id="L1017" class="blob-num js-line-number" data-line-number="1017"></td>
        <td id="LC1017" class="blob-code blob-code-inner js-file-line">		  <span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L1018" class="blob-num js-line-number" data-line-number="1018"></td>
        <td id="LC1018" class="blob-code blob-code-inner js-file-line">		}</td>
      </tr>
      <tr>
        <td id="L1019" class="blob-num js-line-number" data-line-number="1019"></td>
        <td id="LC1019" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1020" class="blob-num js-line-number" data-line-number="1020"></td>
        <td id="LC1020" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1021" class="blob-num js-line-number" data-line-number="1021"></td>
        <td id="LC1021" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Validate rules</span></td>
      </tr>
      <tr>
        <td id="L1022" class="blob-num js-line-number" data-line-number="1022"></td>
        <td id="LC1022" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1023" class="blob-num js-line-number" data-line-number="1023"></td>
        <td id="LC1023" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1024" class="blob-num js-line-number" data-line-number="1024"></td>
        <td id="LC1024" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1025" class="blob-num js-line-number" data-line-number="1025"></td>
        <td id="LC1025" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1026" class="blob-num js-line-number" data-line-number="1026"></td>
        <td id="LC1026" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1027" class="blob-num js-line-number" data-line-number="1027"></td>
        <td id="LC1027" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1028" class="blob-num js-line-number" data-line-number="1028"></td>
        <td id="LC1028" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1029" class="blob-num js-line-number" data-line-number="1029"></td>
        <td id="LC1029" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1030" class="blob-num js-line-number" data-line-number="1030"></td>
        <td id="LC1030" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_custom</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1031" class="blob-num js-line-number" data-line-number="1031"></td>
        <td id="LC1031" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> customRule <span class="pl-k">=</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1032" class="blob-num js-line-number" data-line-number="1032"></td>
        <td id="LC1032" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> rule <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[customRule];</td>
      </tr>
      <tr>
        <td id="L1033" class="blob-num js-line-number" data-line-number="1033"></td>
        <td id="LC1033" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fn;</td>
      </tr>
      <tr>
        <td id="L1034" class="blob-num js-line-number" data-line-number="1034"></td>
        <td id="LC1034" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-k">!</span>rule) {</td>
      </tr>
      <tr>
        <td id="L1035" class="blob-num js-line-number" data-line-number="1035"></td>
        <td id="LC1035" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">alert</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv:custom rule not found - <span class="pl-pds">&quot;</span></span><span class="pl-k">+</span>customRule);</td>
      </tr>
      <tr>
        <td id="L1036" class="blob-num js-line-number" data-line-number="1036"></td>
        <td id="LC1036" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span>;</td>
      </tr>
      <tr>
        <td id="L1037" class="blob-num js-line-number" data-line-number="1037"></td>
        <td id="LC1037" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1038" class="blob-num js-line-number" data-line-number="1038"></td>
        <td id="LC1038" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1039" class="blob-num js-line-number" data-line-number="1039"></td>
        <td id="LC1039" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(rule[<span class="pl-s"><span class="pl-pds">&quot;</span>regex<span class="pl-pds">&quot;</span></span>]) {</td>
      </tr>
      <tr>
        <td id="L1040" class="blob-num js-line-number" data-line-number="1040"></td>
        <td id="LC1040" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">var</span> ex<span class="pl-k">=</span><span class="pl-smi">rule</span>.<span class="pl-smi">regex</span>;</td>
      </tr>
      <tr>
        <td id="L1041" class="blob-num js-line-number" data-line-number="1041"></td>
        <td id="LC1041" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span>(<span class="pl-k">!</span>ex) {</td>
      </tr>
      <tr>
        <td id="L1042" class="blob-num js-line-number" data-line-number="1042"></td>
        <td id="LC1042" class="blob-code blob-code-inner js-file-line">						<span class="pl-en">alert</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv:custom regex not found - <span class="pl-pds">&quot;</span></span><span class="pl-k">+</span>customRule);</td>
      </tr>
      <tr>
        <td id="L1043" class="blob-num js-line-number" data-line-number="1043"></td>
        <td id="LC1043" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">return</span>;</td>
      </tr>
      <tr>
        <td id="L1044" class="blob-num js-line-number" data-line-number="1044"></td>
        <td id="LC1044" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L1045" class="blob-num js-line-number" data-line-number="1045"></td>
        <td id="LC1045" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> pattern <span class="pl-k">=</span> <span class="pl-k">new</span> <span class="pl-en">RegExp</span>(ex);</td>
      </tr>
      <tr>
        <td id="L1046" class="blob-num js-line-number" data-line-number="1046"></td>
        <td id="LC1046" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1047" class="blob-num js-line-number" data-line-number="1047"></td>
        <td id="LC1047" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">pattern</span>.<span class="pl-c1">test</span>(<span class="pl-smi">field</span>.<span class="pl-en">val</span>())) <span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[customRule].<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L1048" class="blob-num js-line-number" data-line-number="1048"></td>
        <td id="LC1048" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1049" class="blob-num js-line-number" data-line-number="1049"></td>
        <td id="LC1049" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> <span class="pl-k">if</span>(rule[<span class="pl-s"><span class="pl-pds">&quot;</span>func<span class="pl-pds">&quot;</span></span>]) {</td>
      </tr>
      <tr>
        <td id="L1050" class="blob-num js-line-number" data-line-number="1050"></td>
        <td id="LC1050" class="blob-code blob-code-inner js-file-line">				fn <span class="pl-k">=</span> rule[<span class="pl-s"><span class="pl-pds">&quot;</span>func<span class="pl-pds">&quot;</span></span>];</td>
      </tr>
      <tr>
        <td id="L1051" class="blob-num js-line-number" data-line-number="1051"></td>
        <td id="LC1051" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1052" class="blob-num js-line-number" data-line-number="1052"></td>
        <td id="LC1052" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-k">typeof</span>(fn) <span class="pl-k">!==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>function<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1053" class="blob-num js-line-number" data-line-number="1053"></td>
        <td id="LC1053" class="blob-code blob-code-inner js-file-line">					<span class="pl-en">alert</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv:custom parameter &#39;function&#39; is no function - <span class="pl-pds">&quot;</span></span><span class="pl-k">+</span>customRule);</td>
      </tr>
      <tr>
        <td id="L1054" class="blob-num js-line-number" data-line-number="1054"></td>
        <td id="LC1054" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">return</span>;</td>
      </tr>
      <tr>
        <td id="L1055" class="blob-num js-line-number" data-line-number="1055"></td>
        <td id="LC1055" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1056" class="blob-num js-line-number" data-line-number="1056"></td>
        <td id="LC1056" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1057" class="blob-num js-line-number" data-line-number="1057"></td>
        <td id="LC1057" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-en">fn</span>(field, rules, i, options))</td>
      </tr>
      <tr>
        <td id="L1058" class="blob-num js-line-number" data-line-number="1058"></td>
        <td id="LC1058" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[customRule].<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L1059" class="blob-num js-line-number" data-line-number="1059"></td>
        <td id="LC1059" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1060" class="blob-num js-line-number" data-line-number="1060"></td>
        <td id="LC1060" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">alert</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv:custom type not allowed <span class="pl-pds">&quot;</span></span><span class="pl-k">+</span>customRule);</td>
      </tr>
      <tr>
        <td id="L1061" class="blob-num js-line-number" data-line-number="1061"></td>
        <td id="LC1061" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span>;</td>
      </tr>
      <tr>
        <td id="L1062" class="blob-num js-line-number" data-line-number="1062"></td>
        <td id="LC1062" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1063" class="blob-num js-line-number" data-line-number="1063"></td>
        <td id="LC1063" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1064" class="blob-num js-line-number" data-line-number="1064"></td>
        <td id="LC1064" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1065" class="blob-num js-line-number" data-line-number="1065"></td>
        <td id="LC1065" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Validate custom function outside of the engine scope</span></td>
      </tr>
      <tr>
        <td id="L1066" class="blob-num js-line-number" data-line-number="1066"></td>
        <td id="LC1066" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1067" class="blob-num js-line-number" data-line-number="1067"></td>
        <td id="LC1067" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1068" class="blob-num js-line-number" data-line-number="1068"></td>
        <td id="LC1068" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1069" class="blob-num js-line-number" data-line-number="1069"></td>
        <td id="LC1069" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1070" class="blob-num js-line-number" data-line-number="1070"></td>
        <td id="LC1070" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1071" class="blob-num js-line-number" data-line-number="1071"></td>
        <td id="LC1071" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1072" class="blob-num js-line-number" data-line-number="1072"></td>
        <td id="LC1072" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1073" class="blob-num js-line-number" data-line-number="1073"></td>
        <td id="LC1073" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1074" class="blob-num js-line-number" data-line-number="1074"></td>
        <td id="LC1074" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_funcCall</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1075" class="blob-num js-line-number" data-line-number="1075"></td>
        <td id="LC1075" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> functionName <span class="pl-k">=</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1076" class="blob-num js-line-number" data-line-number="1076"></td>
        <td id="LC1076" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fn;</td>
      </tr>
      <tr>
        <td id="L1077" class="blob-num js-line-number" data-line-number="1077"></td>
        <td id="LC1077" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">functionName</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.<span class="pl-pds">&#39;</span></span>) <span class="pl-k">&gt;</span><span class="pl-k">-</span><span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1078" class="blob-num js-line-number" data-line-number="1078"></td>
        <td id="LC1078" class="blob-code blob-code-inner js-file-line">			{</td>
      </tr>
      <tr>
        <td id="L1079" class="blob-num js-line-number" data-line-number="1079"></td>
        <td id="LC1079" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> namespaces <span class="pl-k">=</span> <span class="pl-smi">functionName</span>.<span class="pl-c1">split</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1080" class="blob-num js-line-number" data-line-number="1080"></td>
        <td id="LC1080" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> scope <span class="pl-k">=</span> <span class="pl-c1">window</span>;</td>
      </tr>
      <tr>
        <td id="L1081" class="blob-num js-line-number" data-line-number="1081"></td>
        <td id="LC1081" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">while</span>(<span class="pl-smi">namespaces</span>.<span class="pl-c1">length</span>)</td>
      </tr>
      <tr>
        <td id="L1082" class="blob-num js-line-number" data-line-number="1082"></td>
        <td id="LC1082" class="blob-code blob-code-inner js-file-line">				{</td>
      </tr>
      <tr>
        <td id="L1083" class="blob-num js-line-number" data-line-number="1083"></td>
        <td id="LC1083" class="blob-code blob-code-inner js-file-line">					scope <span class="pl-k">=</span> scope[<span class="pl-smi">namespaces</span>.<span class="pl-c1">shift</span>()];</td>
      </tr>
      <tr>
        <td id="L1084" class="blob-num js-line-number" data-line-number="1084"></td>
        <td id="LC1084" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1085" class="blob-num js-line-number" data-line-number="1085"></td>
        <td id="LC1085" class="blob-code blob-code-inner js-file-line">				fn <span class="pl-k">=</span> scope;</td>
      </tr>
      <tr>
        <td id="L1086" class="blob-num js-line-number" data-line-number="1086"></td>
        <td id="LC1086" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1087" class="blob-num js-line-number" data-line-number="1087"></td>
        <td id="LC1087" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1088" class="blob-num js-line-number" data-line-number="1088"></td>
        <td id="LC1088" class="blob-code blob-code-inner js-file-line">				fn <span class="pl-k">=</span> <span class="pl-c1">window</span>[functionName] <span class="pl-k">||</span> <span class="pl-smi">options</span>.<span class="pl-smi">customFunctions</span>[functionName];</td>
      </tr>
      <tr>
        <td id="L1089" class="blob-num js-line-number" data-line-number="1089"></td>
        <td id="LC1089" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">typeof</span>(fn) <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>function<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1090" class="blob-num js-line-number" data-line-number="1090"></td>
        <td id="LC1090" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-en">fn</span>(field, rules, i, options);</td>
      </tr>
      <tr>
        <td id="L1091" class="blob-num js-line-number" data-line-number="1091"></td>
        <td id="LC1091" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1092" class="blob-num js-line-number" data-line-number="1092"></td>
        <td id="LC1092" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1093" class="blob-num js-line-number" data-line-number="1093"></td>
        <td id="LC1093" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_funcCallRequired</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1094" class="blob-num js-line-number" data-line-number="1094"></td>
        <td id="LC1094" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-smi">methods</span>.<span class="pl-en">_funcCall</span>(field,rules,i,options);</td>
      </tr>
      <tr>
        <td id="L1095" class="blob-num js-line-number" data-line-number="1095"></td>
        <td id="LC1095" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1096" class="blob-num js-line-number" data-line-number="1096"></td>
        <td id="LC1096" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1097" class="blob-num js-line-number" data-line-number="1097"></td>
        <td id="LC1097" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Field match</span></td>
      </tr>
      <tr>
        <td id="L1098" class="blob-num js-line-number" data-line-number="1098"></td>
        <td id="LC1098" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1099" class="blob-num js-line-number" data-line-number="1099"></td>
        <td id="LC1099" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1100" class="blob-num js-line-number" data-line-number="1100"></td>
        <td id="LC1100" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1101" class="blob-num js-line-number" data-line-number="1101"></td>
        <td id="LC1101" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1102" class="blob-num js-line-number" data-line-number="1102"></td>
        <td id="LC1102" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1103" class="blob-num js-line-number" data-line-number="1103"></td>
        <td id="LC1103" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1104" class="blob-num js-line-number" data-line-number="1104"></td>
        <td id="LC1104" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1105" class="blob-num js-line-number" data-line-number="1105"></td>
        <td id="LC1105" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1106" class="blob-num js-line-number" data-line-number="1106"></td>
        <td id="LC1106" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_equals</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1107" class="blob-num js-line-number" data-line-number="1107"></td>
        <td id="LC1107" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> equalsField <span class="pl-k">=</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1108" class="blob-num js-line-number" data-line-number="1108"></td>
        <td id="LC1108" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1109" class="blob-num js-line-number" data-line-number="1109"></td>
        <td id="LC1109" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">field</span>.<span class="pl-en">val</span>() <span class="pl-k">!=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> equalsField).<span class="pl-en">val</span>())</td>
      </tr>
      <tr>
        <td id="L1110" class="blob-num js-line-number" data-line-number="1110"></td>
        <td id="LC1110" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">equals</span>.<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L1111" class="blob-num js-line-number" data-line-number="1111"></td>
        <td id="LC1111" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1112" class="blob-num js-line-number" data-line-number="1112"></td>
        <td id="LC1112" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1113" class="blob-num js-line-number" data-line-number="1113"></td>
        <td id="LC1113" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Check the maximum size (in characters)</span></td>
      </tr>
      <tr>
        <td id="L1114" class="blob-num js-line-number" data-line-number="1114"></td>
        <td id="LC1114" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1115" class="blob-num js-line-number" data-line-number="1115"></td>
        <td id="LC1115" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1116" class="blob-num js-line-number" data-line-number="1116"></td>
        <td id="LC1116" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1117" class="blob-num js-line-number" data-line-number="1117"></td>
        <td id="LC1117" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1118" class="blob-num js-line-number" data-line-number="1118"></td>
        <td id="LC1118" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1119" class="blob-num js-line-number" data-line-number="1119"></td>
        <td id="LC1119" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1120" class="blob-num js-line-number" data-line-number="1120"></td>
        <td id="LC1120" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1121" class="blob-num js-line-number" data-line-number="1121"></td>
        <td id="LC1121" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1122" class="blob-num js-line-number" data-line-number="1122"></td>
        <td id="LC1122" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_maxSize</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1123" class="blob-num js-line-number" data-line-number="1123"></td>
        <td id="LC1123" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> max <span class="pl-k">=</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1124" class="blob-num js-line-number" data-line-number="1124"></td>
        <td id="LC1124" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> len <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">val</span>().<span class="pl-c1">length</span>;</td>
      </tr>
      <tr>
        <td id="L1125" class="blob-num js-line-number" data-line-number="1125"></td>
        <td id="LC1125" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1126" class="blob-num js-line-number" data-line-number="1126"></td>
        <td id="LC1126" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (len <span class="pl-k">&gt;</span> max) {</td>
      </tr>
      <tr>
        <td id="L1127" class="blob-num js-line-number" data-line-number="1127"></td>
        <td id="LC1127" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> rule <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">maxSize</span>;</td>
      </tr>
      <tr>
        <td id="L1128" class="blob-num js-line-number" data-line-number="1128"></td>
        <td id="LC1128" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> max <span class="pl-k">+</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1129" class="blob-num js-line-number" data-line-number="1129"></td>
        <td id="LC1129" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1130" class="blob-num js-line-number" data-line-number="1130"></td>
        <td id="LC1130" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1131" class="blob-num js-line-number" data-line-number="1131"></td>
        <td id="LC1131" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1132" class="blob-num js-line-number" data-line-number="1132"></td>
        <td id="LC1132" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Check the minimum size (in characters)</span></td>
      </tr>
      <tr>
        <td id="L1133" class="blob-num js-line-number" data-line-number="1133"></td>
        <td id="LC1133" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1134" class="blob-num js-line-number" data-line-number="1134"></td>
        <td id="LC1134" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1135" class="blob-num js-line-number" data-line-number="1135"></td>
        <td id="LC1135" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1136" class="blob-num js-line-number" data-line-number="1136"></td>
        <td id="LC1136" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1137" class="blob-num js-line-number" data-line-number="1137"></td>
        <td id="LC1137" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1138" class="blob-num js-line-number" data-line-number="1138"></td>
        <td id="LC1138" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1139" class="blob-num js-line-number" data-line-number="1139"></td>
        <td id="LC1139" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1140" class="blob-num js-line-number" data-line-number="1140"></td>
        <td id="LC1140" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1141" class="blob-num js-line-number" data-line-number="1141"></td>
        <td id="LC1141" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_minSize</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1142" class="blob-num js-line-number" data-line-number="1142"></td>
        <td id="LC1142" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> min <span class="pl-k">=</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1143" class="blob-num js-line-number" data-line-number="1143"></td>
        <td id="LC1143" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> len <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">val</span>().<span class="pl-c1">length</span>;</td>
      </tr>
      <tr>
        <td id="L1144" class="blob-num js-line-number" data-line-number="1144"></td>
        <td id="LC1144" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1145" class="blob-num js-line-number" data-line-number="1145"></td>
        <td id="LC1145" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (len <span class="pl-k">&lt;</span> min) {</td>
      </tr>
      <tr>
        <td id="L1146" class="blob-num js-line-number" data-line-number="1146"></td>
        <td id="LC1146" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> rule <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">minSize</span>;</td>
      </tr>
      <tr>
        <td id="L1147" class="blob-num js-line-number" data-line-number="1147"></td>
        <td id="LC1147" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> min <span class="pl-k">+</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1148" class="blob-num js-line-number" data-line-number="1148"></td>
        <td id="LC1148" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1149" class="blob-num js-line-number" data-line-number="1149"></td>
        <td id="LC1149" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1150" class="blob-num js-line-number" data-line-number="1150"></td>
        <td id="LC1150" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1151" class="blob-num js-line-number" data-line-number="1151"></td>
        <td id="LC1151" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Check number minimum value</span></td>
      </tr>
      <tr>
        <td id="L1152" class="blob-num js-line-number" data-line-number="1152"></td>
        <td id="LC1152" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1153" class="blob-num js-line-number" data-line-number="1153"></td>
        <td id="LC1153" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1154" class="blob-num js-line-number" data-line-number="1154"></td>
        <td id="LC1154" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1155" class="blob-num js-line-number" data-line-number="1155"></td>
        <td id="LC1155" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1156" class="blob-num js-line-number" data-line-number="1156"></td>
        <td id="LC1156" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1157" class="blob-num js-line-number" data-line-number="1157"></td>
        <td id="LC1157" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1158" class="blob-num js-line-number" data-line-number="1158"></td>
        <td id="LC1158" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1159" class="blob-num js-line-number" data-line-number="1159"></td>
        <td id="LC1159" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1160" class="blob-num js-line-number" data-line-number="1160"></td>
        <td id="LC1160" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_min</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1161" class="blob-num js-line-number" data-line-number="1161"></td>
        <td id="LC1161" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> min <span class="pl-k">=</span> <span class="pl-c1">parseFloat</span>(rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>]);</td>
      </tr>
      <tr>
        <td id="L1162" class="blob-num js-line-number" data-line-number="1162"></td>
        <td id="LC1162" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> len <span class="pl-k">=</span> <span class="pl-c1">parseFloat</span>(<span class="pl-smi">field</span>.<span class="pl-en">val</span>());</td>
      </tr>
      <tr>
        <td id="L1163" class="blob-num js-line-number" data-line-number="1163"></td>
        <td id="LC1163" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1164" class="blob-num js-line-number" data-line-number="1164"></td>
        <td id="LC1164" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (len <span class="pl-k">&lt;</span> min) {</td>
      </tr>
      <tr>
        <td id="L1165" class="blob-num js-line-number" data-line-number="1165"></td>
        <td id="LC1165" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> rule <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">min</span>;</td>
      </tr>
      <tr>
        <td id="L1166" class="blob-num js-line-number" data-line-number="1166"></td>
        <td id="LC1166" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>) <span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> min <span class="pl-k">+</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1167" class="blob-num js-line-number" data-line-number="1167"></td>
        <td id="LC1167" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> min;</td>
      </tr>
      <tr>
        <td id="L1168" class="blob-num js-line-number" data-line-number="1168"></td>
        <td id="LC1168" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1169" class="blob-num js-line-number" data-line-number="1169"></td>
        <td id="LC1169" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1170" class="blob-num js-line-number" data-line-number="1170"></td>
        <td id="LC1170" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1171" class="blob-num js-line-number" data-line-number="1171"></td>
        <td id="LC1171" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Check number maximum value</span></td>
      </tr>
      <tr>
        <td id="L1172" class="blob-num js-line-number" data-line-number="1172"></td>
        <td id="LC1172" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1173" class="blob-num js-line-number" data-line-number="1173"></td>
        <td id="LC1173" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1174" class="blob-num js-line-number" data-line-number="1174"></td>
        <td id="LC1174" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1175" class="blob-num js-line-number" data-line-number="1175"></td>
        <td id="LC1175" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1176" class="blob-num js-line-number" data-line-number="1176"></td>
        <td id="LC1176" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1177" class="blob-num js-line-number" data-line-number="1177"></td>
        <td id="LC1177" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1178" class="blob-num js-line-number" data-line-number="1178"></td>
        <td id="LC1178" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1179" class="blob-num js-line-number" data-line-number="1179"></td>
        <td id="LC1179" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1180" class="blob-num js-line-number" data-line-number="1180"></td>
        <td id="LC1180" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_max</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1181" class="blob-num js-line-number" data-line-number="1181"></td>
        <td id="LC1181" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> max <span class="pl-k">=</span> <span class="pl-c1">parseFloat</span>(rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>]);</td>
      </tr>
      <tr>
        <td id="L1182" class="blob-num js-line-number" data-line-number="1182"></td>
        <td id="LC1182" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> len <span class="pl-k">=</span> <span class="pl-c1">parseFloat</span>(<span class="pl-smi">field</span>.<span class="pl-en">val</span>());</td>
      </tr>
      <tr>
        <td id="L1183" class="blob-num js-line-number" data-line-number="1183"></td>
        <td id="LC1183" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1184" class="blob-num js-line-number" data-line-number="1184"></td>
        <td id="LC1184" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (len <span class="pl-k">&gt;</span>max ) {</td>
      </tr>
      <tr>
        <td id="L1185" class="blob-num js-line-number" data-line-number="1185"></td>
        <td id="LC1185" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> rule <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">max</span>;</td>
      </tr>
      <tr>
        <td id="L1186" class="blob-num js-line-number" data-line-number="1186"></td>
        <td id="LC1186" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>) <span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> max <span class="pl-k">+</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1187" class="blob-num js-line-number" data-line-number="1187"></td>
        <td id="LC1187" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span>orefalo: to review, also do the translations</span></td>
      </tr>
      <tr>
        <td id="L1188" class="blob-num js-line-number" data-line-number="1188"></td>
        <td id="LC1188" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> max;</td>
      </tr>
      <tr>
        <td id="L1189" class="blob-num js-line-number" data-line-number="1189"></td>
        <td id="LC1189" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1190" class="blob-num js-line-number" data-line-number="1190"></td>
        <td id="LC1190" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1191" class="blob-num js-line-number" data-line-number="1191"></td>
        <td id="LC1191" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1192" class="blob-num js-line-number" data-line-number="1192"></td>
        <td id="LC1192" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Checks date is in the past</span></td>
      </tr>
      <tr>
        <td id="L1193" class="blob-num js-line-number" data-line-number="1193"></td>
        <td id="LC1193" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1194" class="blob-num js-line-number" data-line-number="1194"></td>
        <td id="LC1194" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1195" class="blob-num js-line-number" data-line-number="1195"></td>
        <td id="LC1195" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1196" class="blob-num js-line-number" data-line-number="1196"></td>
        <td id="LC1196" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1197" class="blob-num js-line-number" data-line-number="1197"></td>
        <td id="LC1197" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1198" class="blob-num js-line-number" data-line-number="1198"></td>
        <td id="LC1198" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1199" class="blob-num js-line-number" data-line-number="1199"></td>
        <td id="LC1199" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1200" class="blob-num js-line-number" data-line-number="1200"></td>
        <td id="LC1200" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1201" class="blob-num js-line-number" data-line-number="1201"></td>
        <td id="LC1201" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_past</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">form</span>, <span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1202" class="blob-num js-line-number" data-line-number="1202"></td>
        <td id="LC1202" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1203" class="blob-num js-line-number" data-line-number="1203"></td>
        <td id="LC1203" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> p<span class="pl-k">=</span>rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1204" class="blob-num js-line-number" data-line-number="1204"></td>
        <td id="LC1204" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fieldAlt <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>*[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">p</span>.<span class="pl-c1">replace</span>(<span class="pl-sr"><span class="pl-pds">/</span><span class="pl-k">^</span>#<span class="pl-k">+</span><span class="pl-pds">/</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>) <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L1205" class="blob-num js-line-number" data-line-number="1205"></td>
        <td id="LC1205" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> pdate;</td>
      </tr>
      <tr>
        <td id="L1206" class="blob-num js-line-number" data-line-number="1206"></td>
        <td id="LC1206" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1207" class="blob-num js-line-number" data-line-number="1207"></td>
        <td id="LC1207" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">p</span>.<span class="pl-c1">toLowerCase</span>() <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>now<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1208" class="blob-num js-line-number" data-line-number="1208"></td>
        <td id="LC1208" class="blob-code blob-code-inner js-file-line">				pdate <span class="pl-k">=</span> <span class="pl-k">new</span> <span class="pl-en">Date</span>();</td>
      </tr>
      <tr>
        <td id="L1209" class="blob-num js-line-number" data-line-number="1209"></td>
        <td id="LC1209" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-c1">undefined</span> <span class="pl-k">!=</span> <span class="pl-smi">fieldAlt</span>.<span class="pl-en">val</span>()) {</td>
      </tr>
      <tr>
        <td id="L1210" class="blob-num js-line-number" data-line-number="1210"></td>
        <td id="LC1210" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">fieldAlt</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:disabled<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1211" class="blob-num js-line-number" data-line-number="1211"></td>
        <td id="LC1211" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span>;</td>
      </tr>
      <tr>
        <td id="L1212" class="blob-num js-line-number" data-line-number="1212"></td>
        <td id="LC1212" class="blob-code blob-code-inner js-file-line">				pdate <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_parseDate</span>(<span class="pl-smi">fieldAlt</span>.<span class="pl-en">val</span>());</td>
      </tr>
      <tr>
        <td id="L1213" class="blob-num js-line-number" data-line-number="1213"></td>
        <td id="LC1213" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1214" class="blob-num js-line-number" data-line-number="1214"></td>
        <td id="LC1214" class="blob-code blob-code-inner js-file-line">				pdate <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_parseDate</span>(p);</td>
      </tr>
      <tr>
        <td id="L1215" class="blob-num js-line-number" data-line-number="1215"></td>
        <td id="LC1215" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1216" class="blob-num js-line-number" data-line-number="1216"></td>
        <td id="LC1216" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> vdate <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_parseDate</span>(<span class="pl-smi">field</span>.<span class="pl-en">val</span>());</td>
      </tr>
      <tr>
        <td id="L1217" class="blob-num js-line-number" data-line-number="1217"></td>
        <td id="LC1217" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1218" class="blob-num js-line-number" data-line-number="1218"></td>
        <td id="LC1218" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (vdate <span class="pl-k">&gt;</span> pdate ) {</td>
      </tr>
      <tr>
        <td id="L1219" class="blob-num js-line-number" data-line-number="1219"></td>
        <td id="LC1219" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> rule <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">past</span>;</td>
      </tr>
      <tr>
        <td id="L1220" class="blob-num js-line-number" data-line-number="1220"></td>
        <td id="LC1220" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>) <span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">methods</span>.<span class="pl-en">_dateToString</span>(pdate) <span class="pl-k">+</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1221" class="blob-num js-line-number" data-line-number="1221"></td>
        <td id="LC1221" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">methods</span>.<span class="pl-en">_dateToString</span>(pdate);</td>
      </tr>
      <tr>
        <td id="L1222" class="blob-num js-line-number" data-line-number="1222"></td>
        <td id="LC1222" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1223" class="blob-num js-line-number" data-line-number="1223"></td>
        <td id="LC1223" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1224" class="blob-num js-line-number" data-line-number="1224"></td>
        <td id="LC1224" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1225" class="blob-num js-line-number" data-line-number="1225"></td>
        <td id="LC1225" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Checks date is in the future</span></td>
      </tr>
      <tr>
        <td id="L1226" class="blob-num js-line-number" data-line-number="1226"></td>
        <td id="LC1226" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1227" class="blob-num js-line-number" data-line-number="1227"></td>
        <td id="LC1227" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1228" class="blob-num js-line-number" data-line-number="1228"></td>
        <td id="LC1228" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1229" class="blob-num js-line-number" data-line-number="1229"></td>
        <td id="LC1229" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1230" class="blob-num js-line-number" data-line-number="1230"></td>
        <td id="LC1230" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1231" class="blob-num js-line-number" data-line-number="1231"></td>
        <td id="LC1231" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1232" class="blob-num js-line-number" data-line-number="1232"></td>
        <td id="LC1232" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1233" class="blob-num js-line-number" data-line-number="1233"></td>
        <td id="LC1233" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1234" class="blob-num js-line-number" data-line-number="1234"></td>
        <td id="LC1234" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_future</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">form</span>, <span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1235" class="blob-num js-line-number" data-line-number="1235"></td>
        <td id="LC1235" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1236" class="blob-num js-line-number" data-line-number="1236"></td>
        <td id="LC1236" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> p<span class="pl-k">=</span>rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1237" class="blob-num js-line-number" data-line-number="1237"></td>
        <td id="LC1237" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fieldAlt <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>*[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">p</span>.<span class="pl-c1">replace</span>(<span class="pl-sr"><span class="pl-pds">/</span><span class="pl-k">^</span>#<span class="pl-k">+</span><span class="pl-pds">/</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>) <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L1238" class="blob-num js-line-number" data-line-number="1238"></td>
        <td id="LC1238" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> pdate;</td>
      </tr>
      <tr>
        <td id="L1239" class="blob-num js-line-number" data-line-number="1239"></td>
        <td id="LC1239" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1240" class="blob-num js-line-number" data-line-number="1240"></td>
        <td id="LC1240" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">p</span>.<span class="pl-c1">toLowerCase</span>() <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>now<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1241" class="blob-num js-line-number" data-line-number="1241"></td>
        <td id="LC1241" class="blob-code blob-code-inner js-file-line">				pdate <span class="pl-k">=</span> <span class="pl-k">new</span> <span class="pl-en">Date</span>();</td>
      </tr>
      <tr>
        <td id="L1242" class="blob-num js-line-number" data-line-number="1242"></td>
        <td id="LC1242" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-c1">undefined</span> <span class="pl-k">!=</span> <span class="pl-smi">fieldAlt</span>.<span class="pl-en">val</span>()) {</td>
      </tr>
      <tr>
        <td id="L1243" class="blob-num js-line-number" data-line-number="1243"></td>
        <td id="LC1243" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">fieldAlt</span>.<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:disabled<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1244" class="blob-num js-line-number" data-line-number="1244"></td>
        <td id="LC1244" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span>;</td>
      </tr>
      <tr>
        <td id="L1245" class="blob-num js-line-number" data-line-number="1245"></td>
        <td id="LC1245" class="blob-code blob-code-inner js-file-line">				pdate <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_parseDate</span>(<span class="pl-smi">fieldAlt</span>.<span class="pl-en">val</span>());</td>
      </tr>
      <tr>
        <td id="L1246" class="blob-num js-line-number" data-line-number="1246"></td>
        <td id="LC1246" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1247" class="blob-num js-line-number" data-line-number="1247"></td>
        <td id="LC1247" class="blob-code blob-code-inner js-file-line">				pdate <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_parseDate</span>(p);</td>
      </tr>
      <tr>
        <td id="L1248" class="blob-num js-line-number" data-line-number="1248"></td>
        <td id="LC1248" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1249" class="blob-num js-line-number" data-line-number="1249"></td>
        <td id="LC1249" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> vdate <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_parseDate</span>(<span class="pl-smi">field</span>.<span class="pl-en">val</span>());</td>
      </tr>
      <tr>
        <td id="L1250" class="blob-num js-line-number" data-line-number="1250"></td>
        <td id="LC1250" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1251" class="blob-num js-line-number" data-line-number="1251"></td>
        <td id="LC1251" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (vdate <span class="pl-k">&lt;</span> pdate ) {</td>
      </tr>
      <tr>
        <td id="L1252" class="blob-num js-line-number" data-line-number="1252"></td>
        <td id="LC1252" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> rule <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">future</span>;</td>
      </tr>
      <tr>
        <td id="L1253" class="blob-num js-line-number" data-line-number="1253"></td>
        <td id="LC1253" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>)</td>
      </tr>
      <tr>
        <td id="L1254" class="blob-num js-line-number" data-line-number="1254"></td>
        <td id="LC1254" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">methods</span>.<span class="pl-en">_dateToString</span>(pdate) <span class="pl-k">+</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1255" class="blob-num js-line-number" data-line-number="1255"></td>
        <td id="LC1255" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">methods</span>.<span class="pl-en">_dateToString</span>(pdate);</td>
      </tr>
      <tr>
        <td id="L1256" class="blob-num js-line-number" data-line-number="1256"></td>
        <td id="LC1256" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1257" class="blob-num js-line-number" data-line-number="1257"></td>
        <td id="LC1257" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1258" class="blob-num js-line-number" data-line-number="1258"></td>
        <td id="LC1258" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1259" class="blob-num js-line-number" data-line-number="1259"></td>
        <td id="LC1259" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Checks if valid date</span></td>
      </tr>
      <tr>
        <td id="L1260" class="blob-num js-line-number" data-line-number="1260"></td>
        <td id="LC1260" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1261" class="blob-num js-line-number" data-line-number="1261"></td>
        <td id="LC1261" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{string}</span> <span class="pl-smi">date</span> string</span></td>
      </tr>
      <tr>
        <td id="L1262" class="blob-num js-line-number" data-line-number="1262"></td>
        <td id="LC1262" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> a bool based on determination of valid date</span></td>
      </tr>
      <tr>
        <td id="L1263" class="blob-num js-line-number" data-line-number="1263"></td>
        <td id="LC1263" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1264" class="blob-num js-line-number" data-line-number="1264"></td>
        <td id="LC1264" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_isDate</span><span class="pl-k">:</span> <span class="pl-k">function</span> (<span class="pl-smi">value</span>) {</td>
      </tr>
      <tr>
        <td id="L1265" class="blob-num js-line-number" data-line-number="1265"></td>
        <td id="LC1265" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> dateRegEx <span class="pl-k">=</span> <span class="pl-k">new</span> <span class="pl-en">RegExp</span>(<span class="pl-sr"><span class="pl-pds">/</span><span class="pl-k">^</span><span class="pl-c1">\d</span><span class="pl-k">{4}</span><span class="pl-c1">[<span class="pl-cce">\/\-</span>]</span>(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-k">|</span>1<span class="pl-c1">[012]</span>)<span class="pl-c1">[<span class="pl-cce">\/\-</span>]</span>(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-k">|</span><span class="pl-c1">[12][<span class="pl-c1">0-9</span>]</span><span class="pl-k">|</span>3<span class="pl-c1">[01]</span>)<span class="pl-k">$</span><span class="pl-k">|</span><span class="pl-k">^</span>(?:(?:(?:0<span class="pl-k">?</span><span class="pl-c1">[13578]</span><span class="pl-k">|</span>1<span class="pl-c1">[02]</span>)(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)31)<span class="pl-k">|</span>(?:(?:0<span class="pl-k">?</span><span class="pl-c1">[1,<span class="pl-c1">3-9</span>]</span><span class="pl-k">|</span>1<span class="pl-c1">[<span class="pl-c1">0-2</span>]</span>)(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)(?:29<span class="pl-k">|</span>30)))(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)(?:<span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d\d\d</span><span class="pl-k">|</span><span class="pl-c1">\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d\d</span><span class="pl-k">|</span><span class="pl-c1">\d\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d</span><span class="pl-k">|</span><span class="pl-c1">\d\d\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span>)<span class="pl-k">$</span><span class="pl-k">|</span><span class="pl-k">^</span>(?:(?:0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-k">|</span>1<span class="pl-c1">[<span class="pl-c1">0-2</span>]</span>)(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)(?:0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-k">|</span>1<span class="pl-c1">\d</span><span class="pl-k">|</span>2<span class="pl-c1">[<span class="pl-c1">0-8</span>]</span>))(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)(?:<span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d\d\d</span><span class="pl-k">|</span><span class="pl-c1">\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d\d</span><span class="pl-k">|</span><span class="pl-c1">\d\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d</span><span class="pl-k">|</span><span class="pl-c1">\d\d\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span>)<span class="pl-k">$</span><span class="pl-k">|</span><span class="pl-k">^</span>(0<span class="pl-k">?</span>2(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)29)(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)(?:(?:0<span class="pl-c1">[48]</span>00<span class="pl-k">|</span><span class="pl-c1">[13579][26]</span>00<span class="pl-k">|</span><span class="pl-c1">[2468][048]</span>00)<span class="pl-k">|</span>(?:<span class="pl-c1">\d\d</span>)<span class="pl-k">?</span>(?:0<span class="pl-c1">[48]</span><span class="pl-k">|</span><span class="pl-c1">[2468][048]</span><span class="pl-k">|</span><span class="pl-c1">[13579][26]</span>))<span class="pl-k">$</span><span class="pl-pds">/</span></span>);</td>
      </tr>
      <tr>
        <td id="L1266" class="blob-num js-line-number" data-line-number="1266"></td>
        <td id="LC1266" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-smi">dateRegEx</span>.<span class="pl-c1">test</span>(value);</td>
      </tr>
      <tr>
        <td id="L1267" class="blob-num js-line-number" data-line-number="1267"></td>
        <td id="LC1267" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1268" class="blob-num js-line-number" data-line-number="1268"></td>
        <td id="LC1268" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1269" class="blob-num js-line-number" data-line-number="1269"></td>
        <td id="LC1269" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Checks if valid date time</span></td>
      </tr>
      <tr>
        <td id="L1270" class="blob-num js-line-number" data-line-number="1270"></td>
        <td id="LC1270" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1271" class="blob-num js-line-number" data-line-number="1271"></td>
        <td id="LC1271" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{string}</span> <span class="pl-smi">date</span> string</span></td>
      </tr>
      <tr>
        <td id="L1272" class="blob-num js-line-number" data-line-number="1272"></td>
        <td id="LC1272" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> a bool based on determination of valid date time</span></td>
      </tr>
      <tr>
        <td id="L1273" class="blob-num js-line-number" data-line-number="1273"></td>
        <td id="LC1273" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1274" class="blob-num js-line-number" data-line-number="1274"></td>
        <td id="LC1274" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_isDateTime</span><span class="pl-k">:</span> <span class="pl-k">function</span> (<span class="pl-smi">value</span>){</td>
      </tr>
      <tr>
        <td id="L1275" class="blob-num js-line-number" data-line-number="1275"></td>
        <td id="LC1275" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> dateTimeRegEx <span class="pl-k">=</span> <span class="pl-k">new</span> <span class="pl-en">RegExp</span>(<span class="pl-sr"><span class="pl-pds">/</span><span class="pl-k">^</span><span class="pl-c1">\d</span><span class="pl-k">{4}</span><span class="pl-c1">[<span class="pl-cce">\/\-</span>]</span>(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-k">|</span>1<span class="pl-c1">[012]</span>)<span class="pl-c1">[<span class="pl-cce">\/\-</span>]</span>(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-k">|</span><span class="pl-c1">[12][<span class="pl-c1">0-9</span>]</span><span class="pl-k">|</span>3<span class="pl-c1">[01]</span>)<span class="pl-c1">\s</span><span class="pl-k">+</span>(1<span class="pl-c1">[012]</span><span class="pl-k">|</span>0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span>)<span class="pl-k">{1}</span>:(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-5</span>]</span><span class="pl-k">|</span><span class="pl-c1">[<span class="pl-c1">0-6</span>][<span class="pl-c1">0-9</span>]</span>)<span class="pl-k">{1}</span>:(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">0-6</span>]</span><span class="pl-k">|</span><span class="pl-c1">[<span class="pl-c1">0-6</span>][<span class="pl-c1">0-9</span>]</span>)<span class="pl-k">{1}</span><span class="pl-c1">\s</span><span class="pl-k">+</span>(am<span class="pl-k">|</span>pm<span class="pl-k">|</span>AM<span class="pl-k">|</span>PM)<span class="pl-k">{1}</span><span class="pl-k">$</span><span class="pl-k">|</span><span class="pl-k">^</span>(?:(?:(?:0<span class="pl-k">?</span><span class="pl-c1">[13578]</span><span class="pl-k">|</span>1<span class="pl-c1">[02]</span>)(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)31)<span class="pl-k">|</span>(?:(?:0<span class="pl-k">?</span><span class="pl-c1">[1,<span class="pl-c1">3-9</span>]</span><span class="pl-k">|</span>1<span class="pl-c1">[<span class="pl-c1">0-2</span>]</span>)(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)(?:29<span class="pl-k">|</span>30)))(<span class="pl-cce">\/</span><span class="pl-k">|</span>-)(?:<span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d\d\d</span><span class="pl-k">|</span><span class="pl-c1">\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d\d</span><span class="pl-k">|</span><span class="pl-c1">\d\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-c1">\d</span><span class="pl-k">|</span><span class="pl-c1">\d\d\d</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span>)<span class="pl-k">$</span><span class="pl-k">|</span><span class="pl-k">^</span>((1<span class="pl-c1">[012]</span><span class="pl-k">|</span>0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span>)<span class="pl-k">{1}</span><span class="pl-cce">\/</span>(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span><span class="pl-k">|</span><span class="pl-c1">[12][<span class="pl-c1">0-9</span>]</span><span class="pl-k">|</span>3<span class="pl-c1">[01]</span>)<span class="pl-k">{1}</span><span class="pl-cce">\/</span><span class="pl-c1">\d</span><span class="pl-k">{2,4}</span><span class="pl-c1">\s</span><span class="pl-k">+</span>(1<span class="pl-c1">[012]</span><span class="pl-k">|</span>0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-9</span>]</span>)<span class="pl-k">{1}</span>:(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">1-5</span>]</span><span class="pl-k">|</span><span class="pl-c1">[<span class="pl-c1">0-6</span>][<span class="pl-c1">0-9</span>]</span>)<span class="pl-k">{1}</span>:(0<span class="pl-k">?</span><span class="pl-c1">[<span class="pl-c1">0-6</span>]</span><span class="pl-k">|</span><span class="pl-c1">[<span class="pl-c1">0-6</span>][<span class="pl-c1">0-9</span>]</span>)<span class="pl-k">{1}</span><span class="pl-c1">\s</span><span class="pl-k">+</span>(am<span class="pl-k">|</span>pm<span class="pl-k">|</span>AM<span class="pl-k">|</span>PM)<span class="pl-k">{1}</span>)<span class="pl-k">$</span><span class="pl-pds">/</span></span>);</td>
      </tr>
      <tr>
        <td id="L1276" class="blob-num js-line-number" data-line-number="1276"></td>
        <td id="LC1276" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-smi">dateTimeRegEx</span>.<span class="pl-c1">test</span>(value);</td>
      </tr>
      <tr>
        <td id="L1277" class="blob-num js-line-number" data-line-number="1277"></td>
        <td id="LC1277" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1278" class="blob-num js-line-number" data-line-number="1278"></td>
        <td id="LC1278" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span>Checks if the start date is before the end date</span></td>
      </tr>
      <tr>
        <td id="L1279" class="blob-num js-line-number" data-line-number="1279"></td>
        <td id="LC1279" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span>returns true if end is later than start</span></td>
      </tr>
      <tr>
        <td id="L1280" class="blob-num js-line-number" data-line-number="1280"></td>
        <td id="LC1280" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_dateCompare</span><span class="pl-k">:</span> <span class="pl-k">function</span> (<span class="pl-smi">start</span>, <span class="pl-smi">end</span>) {</td>
      </tr>
      <tr>
        <td id="L1281" class="blob-num js-line-number" data-line-number="1281"></td>
        <td id="LC1281" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> (<span class="pl-k">new</span> <span class="pl-en">Date</span>(<span class="pl-smi">start</span>.<span class="pl-c1">toString</span>()) <span class="pl-k">&lt;</span> <span class="pl-k">new</span> <span class="pl-en">Date</span>(<span class="pl-smi">end</span>.<span class="pl-c1">toString</span>()));</td>
      </tr>
      <tr>
        <td id="L1282" class="blob-num js-line-number" data-line-number="1282"></td>
        <td id="LC1282" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1283" class="blob-num js-line-number" data-line-number="1283"></td>
        <td id="LC1283" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1284" class="blob-num js-line-number" data-line-number="1284"></td>
        <td id="LC1284" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Checks date range</span></td>
      </tr>
      <tr>
        <td id="L1285" class="blob-num js-line-number" data-line-number="1285"></td>
        <td id="LC1285" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1286" class="blob-num js-line-number" data-line-number="1286"></td>
        <td id="LC1286" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">first</span> field name</span></td>
      </tr>
      <tr>
        <td id="L1287" class="blob-num js-line-number" data-line-number="1287"></td>
        <td id="LC1287" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">second</span> field name</span></td>
      </tr>
      <tr>
        <td id="L1288" class="blob-num js-line-number" data-line-number="1288"></td>
        <td id="LC1288" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1289" class="blob-num js-line-number" data-line-number="1289"></td>
        <td id="LC1289" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1290" class="blob-num js-line-number" data-line-number="1290"></td>
        <td id="LC1290" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_dateRange</span><span class="pl-k">:</span> <span class="pl-k">function</span> (<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1291" class="blob-num js-line-number" data-line-number="1291"></td>
        <td id="LC1291" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>are not both populated</span></td>
      </tr>
      <tr>
        <td id="L1292" class="blob-num js-line-number" data-line-number="1292"></td>
        <td id="LC1292" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> ((<span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>) <span class="pl-k">||</span> (<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>)) {</td>
      </tr>
      <tr>
        <td id="L1293" class="blob-num js-line-number" data-line-number="1293"></td>
        <td id="LC1293" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1294" class="blob-num js-line-number" data-line-number="1294"></td>
        <td id="LC1294" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1295" class="blob-num js-line-number" data-line-number="1295"></td>
        <td id="LC1295" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1296" class="blob-num js-line-number" data-line-number="1296"></td>
        <td id="LC1296" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>are not both dates</span></td>
      </tr>
      <tr>
        <td id="L1297" class="blob-num js-line-number" data-line-number="1297"></td>
        <td id="LC1297" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">methods</span>.<span class="pl-en">_isDate</span>(<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>) <span class="pl-k">||</span> <span class="pl-k">!</span><span class="pl-smi">methods</span>.<span class="pl-en">_isDate</span>(<span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>)) {</td>
      </tr>
      <tr>
        <td id="L1298" class="blob-num js-line-number" data-line-number="1298"></td>
        <td id="LC1298" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1299" class="blob-num js-line-number" data-line-number="1299"></td>
        <td id="LC1299" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1300" class="blob-num js-line-number" data-line-number="1300"></td>
        <td id="LC1300" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1301" class="blob-num js-line-number" data-line-number="1301"></td>
        <td id="LC1301" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>are both dates but range is off</span></td>
      </tr>
      <tr>
        <td id="L1302" class="blob-num js-line-number" data-line-number="1302"></td>
        <td id="LC1302" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">methods</span>.<span class="pl-en">_dateCompare</span>(<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>, <span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>)) {</td>
      </tr>
      <tr>
        <td id="L1303" class="blob-num js-line-number" data-line-number="1303"></td>
        <td id="LC1303" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1304" class="blob-num js-line-number" data-line-number="1304"></td>
        <td id="LC1304" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1305" class="blob-num js-line-number" data-line-number="1305"></td>
        <td id="LC1305" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1306" class="blob-num js-line-number" data-line-number="1306"></td>
        <td id="LC1306" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1307" class="blob-num js-line-number" data-line-number="1307"></td>
        <td id="LC1307" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Checks date time range</span></td>
      </tr>
      <tr>
        <td id="L1308" class="blob-num js-line-number" data-line-number="1308"></td>
        <td id="LC1308" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1309" class="blob-num js-line-number" data-line-number="1309"></td>
        <td id="LC1309" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">first</span> field name</span></td>
      </tr>
      <tr>
        <td id="L1310" class="blob-num js-line-number" data-line-number="1310"></td>
        <td id="LC1310" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">second</span> field name</span></td>
      </tr>
      <tr>
        <td id="L1311" class="blob-num js-line-number" data-line-number="1311"></td>
        <td id="LC1311" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1312" class="blob-num js-line-number" data-line-number="1312"></td>
        <td id="LC1312" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1313" class="blob-num js-line-number" data-line-number="1313"></td>
        <td id="LC1313" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_dateTimeRange</span><span class="pl-k">:</span> <span class="pl-k">function</span> (<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1314" class="blob-num js-line-number" data-line-number="1314"></td>
        <td id="LC1314" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>are not both populated</span></td>
      </tr>
      <tr>
        <td id="L1315" class="blob-num js-line-number" data-line-number="1315"></td>
        <td id="LC1315" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> ((<span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>) <span class="pl-k">||</span> (<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>)) {</td>
      </tr>
      <tr>
        <td id="L1316" class="blob-num js-line-number" data-line-number="1316"></td>
        <td id="LC1316" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1317" class="blob-num js-line-number" data-line-number="1317"></td>
        <td id="LC1317" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1318" class="blob-num js-line-number" data-line-number="1318"></td>
        <td id="LC1318" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>are not both dates</span></td>
      </tr>
      <tr>
        <td id="L1319" class="blob-num js-line-number" data-line-number="1319"></td>
        <td id="LC1319" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">methods</span>.<span class="pl-en">_isDateTime</span>(<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>) <span class="pl-k">||</span> <span class="pl-k">!</span><span class="pl-smi">methods</span>.<span class="pl-en">_isDateTime</span>(<span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>)) {</td>
      </tr>
      <tr>
        <td id="L1320" class="blob-num js-line-number" data-line-number="1320"></td>
        <td id="LC1320" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1321" class="blob-num js-line-number" data-line-number="1321"></td>
        <td id="LC1321" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1322" class="blob-num js-line-number" data-line-number="1322"></td>
        <td id="LC1322" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>are both dates but range is off</span></td>
      </tr>
      <tr>
        <td id="L1323" class="blob-num js-line-number" data-line-number="1323"></td>
        <td id="LC1323" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">methods</span>.<span class="pl-en">_dateCompare</span>(<span class="pl-smi">options</span>.<span class="pl-smi">firstOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>, <span class="pl-smi">options</span>.<span class="pl-smi">secondOfGroup</span>[<span class="pl-c1">0</span>].<span class="pl-c1">value</span>)) {</td>
      </tr>
      <tr>
        <td id="L1324" class="blob-num js-line-number" data-line-number="1324"></td>
        <td id="LC1324" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[rules[i]].<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1325" class="blob-num js-line-number" data-line-number="1325"></td>
        <td id="LC1325" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1326" class="blob-num js-line-number" data-line-number="1326"></td>
        <td id="LC1326" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1327" class="blob-num js-line-number" data-line-number="1327"></td>
        <td id="LC1327" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1328" class="blob-num js-line-number" data-line-number="1328"></td>
        <td id="LC1328" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Max number of checkbox selected</span></td>
      </tr>
      <tr>
        <td id="L1329" class="blob-num js-line-number" data-line-number="1329"></td>
        <td id="LC1329" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1330" class="blob-num js-line-number" data-line-number="1330"></td>
        <td id="LC1330" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1331" class="blob-num js-line-number" data-line-number="1331"></td>
        <td id="LC1331" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1332" class="blob-num js-line-number" data-line-number="1332"></td>
        <td id="LC1332" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1333" class="blob-num js-line-number" data-line-number="1333"></td>
        <td id="LC1333" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1334" class="blob-num js-line-number" data-line-number="1334"></td>
        <td id="LC1334" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1335" class="blob-num js-line-number" data-line-number="1335"></td>
        <td id="LC1335" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1336" class="blob-num js-line-number" data-line-number="1336"></td>
        <td id="LC1336" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1337" class="blob-num js-line-number" data-line-number="1337"></td>
        <td id="LC1337" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_maxCheckbox</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">form</span>, <span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1338" class="blob-num js-line-number" data-line-number="1338"></td>
        <td id="LC1338" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1339" class="blob-num js-line-number" data-line-number="1339"></td>
        <td id="LC1339" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> nbCheck <span class="pl-k">=</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1340" class="blob-num js-line-number" data-line-number="1340"></td>
        <td id="LC1340" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> groupname <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>name<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1341" class="blob-num js-line-number" data-line-number="1341"></td>
        <td id="LC1341" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> groupSize <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> groupname <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]:checked<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">length</span>;</td>
      </tr>
      <tr>
        <td id="L1342" class="blob-num js-line-number" data-line-number="1342"></td>
        <td id="LC1342" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (groupSize <span class="pl-k">&gt;</span> nbCheck) {</td>
      </tr>
      <tr>
        <td id="L1343" class="blob-num js-line-number" data-line-number="1343"></td>
        <td id="LC1343" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L1344" class="blob-num js-line-number" data-line-number="1344"></td>
        <td id="LC1344" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">maxCheckbox</span>.<span class="pl-smi">alertText2</span>)</td>
      </tr>
      <tr>
        <td id="L1345" class="blob-num js-line-number" data-line-number="1345"></td>
        <td id="LC1345" class="blob-code blob-code-inner js-file-line">					 <span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">maxCheckbox</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> nbCheck <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">maxCheckbox</span>.<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1346" class="blob-num js-line-number" data-line-number="1346"></td>
        <td id="LC1346" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">maxCheckbox</span>.<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L1347" class="blob-num js-line-number" data-line-number="1347"></td>
        <td id="LC1347" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1348" class="blob-num js-line-number" data-line-number="1348"></td>
        <td id="LC1348" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1349" class="blob-num js-line-number" data-line-number="1349"></td>
        <td id="LC1349" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1350" class="blob-num js-line-number" data-line-number="1350"></td>
        <td id="LC1350" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Min number of checkbox selected</span></td>
      </tr>
      <tr>
        <td id="L1351" class="blob-num js-line-number" data-line-number="1351"></td>
        <td id="LC1351" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1352" class="blob-num js-line-number" data-line-number="1352"></td>
        <td id="LC1352" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1353" class="blob-num js-line-number" data-line-number="1353"></td>
        <td id="LC1353" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1354" class="blob-num js-line-number" data-line-number="1354"></td>
        <td id="LC1354" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1355" class="blob-num js-line-number" data-line-number="1355"></td>
        <td id="LC1355" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1356" class="blob-num js-line-number" data-line-number="1356"></td>
        <td id="LC1356" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1357" class="blob-num js-line-number" data-line-number="1357"></td>
        <td id="LC1357" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1358" class="blob-num js-line-number" data-line-number="1358"></td>
        <td id="LC1358" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1359" class="blob-num js-line-number" data-line-number="1359"></td>
        <td id="LC1359" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_minCheckbox</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">form</span>, <span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1360" class="blob-num js-line-number" data-line-number="1360"></td>
        <td id="LC1360" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1361" class="blob-num js-line-number" data-line-number="1361"></td>
        <td id="LC1361" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> nbCheck <span class="pl-k">=</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1362" class="blob-num js-line-number" data-line-number="1362"></td>
        <td id="LC1362" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> groupname <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>name<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1363" class="blob-num js-line-number" data-line-number="1363"></td>
        <td id="LC1363" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> groupSize <span class="pl-k">=</span> <span class="pl-smi">form</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>input[name=&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> groupname <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;]:checked<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">length</span>;</td>
      </tr>
      <tr>
        <td id="L1364" class="blob-num js-line-number" data-line-number="1364"></td>
        <td id="LC1364" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (groupSize <span class="pl-k">&lt;</span> nbCheck) {</td>
      </tr>
      <tr>
        <td id="L1365" class="blob-num js-line-number" data-line-number="1365"></td>
        <td id="LC1365" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span> <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L1366" class="blob-num js-line-number" data-line-number="1366"></td>
        <td id="LC1366" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">minCheckbox</span>.<span class="pl-smi">alertText</span> <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> nbCheck <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">minCheckbox</span>.<span class="pl-smi">alertText2</span>;</td>
      </tr>
      <tr>
        <td id="L1367" class="blob-num js-line-number" data-line-number="1367"></td>
        <td id="LC1367" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1368" class="blob-num js-line-number" data-line-number="1368"></td>
        <td id="LC1368" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1369" class="blob-num js-line-number" data-line-number="1369"></td>
        <td id="LC1369" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1370" class="blob-num js-line-number" data-line-number="1370"></td>
        <td id="LC1370" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Checks that it is a valid credit card number according to the</span></td>
      </tr>
      <tr>
        <td id="L1371" class="blob-num js-line-number" data-line-number="1371"></td>
        <td id="LC1371" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Luhn checksum algorithm.</span></td>
      </tr>
      <tr>
        <td id="L1372" class="blob-num js-line-number" data-line-number="1372"></td>
        <td id="LC1372" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1373" class="blob-num js-line-number" data-line-number="1373"></td>
        <td id="LC1373" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1374" class="blob-num js-line-number" data-line-number="1374"></td>
        <td id="LC1374" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1375" class="blob-num js-line-number" data-line-number="1375"></td>
        <td id="LC1375" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1376" class="blob-num js-line-number" data-line-number="1376"></td>
        <td id="LC1376" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1377" class="blob-num js-line-number" data-line-number="1377"></td>
        <td id="LC1377" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1378" class="blob-num js-line-number" data-line-number="1378"></td>
        <td id="LC1378" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L1379" class="blob-num js-line-number" data-line-number="1379"></td>
        <td id="LC1379" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1380" class="blob-num js-line-number" data-line-number="1380"></td>
        <td id="LC1380" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_creditCard</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1381" class="blob-num js-line-number" data-line-number="1381"></td>
        <td id="LC1381" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>spaces and dashes may be valid characters, but must be stripped to calculate the checksum.</span></td>
      </tr>
      <tr>
        <td id="L1382" class="blob-num js-line-number" data-line-number="1382"></td>
        <td id="LC1382" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> valid <span class="pl-k">=</span> <span class="pl-c1">false</span>, cardNumber <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">val</span>().<span class="pl-c1">replace</span>(<span class="pl-sr"><span class="pl-pds">/</span> <span class="pl-k">+</span><span class="pl-pds">/</span>g</span>, <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>).<span class="pl-c1">replace</span>(<span class="pl-sr"><span class="pl-pds">/</span>-<span class="pl-k">+</span><span class="pl-pds">/</span>g</span>, <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1383" class="blob-num js-line-number" data-line-number="1383"></td>
        <td id="LC1383" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1384" class="blob-num js-line-number" data-line-number="1384"></td>
        <td id="LC1384" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> numDigits <span class="pl-k">=</span> <span class="pl-smi">cardNumber</span>.<span class="pl-c1">length</span>;</td>
      </tr>
      <tr>
        <td id="L1385" class="blob-num js-line-number" data-line-number="1385"></td>
        <td id="LC1385" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (numDigits <span class="pl-k">&gt;=</span> <span class="pl-c1">14</span> <span class="pl-k">&amp;&amp;</span> numDigits <span class="pl-k">&lt;=</span> <span class="pl-c1">16</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-c1">parseInt</span>(cardNumber) <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>) {</td>
      </tr>
      <tr>
        <td id="L1386" class="blob-num js-line-number" data-line-number="1386"></td>
        <td id="LC1386" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1387" class="blob-num js-line-number" data-line-number="1387"></td>
        <td id="LC1387" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> sum <span class="pl-k">=</span> <span class="pl-c1">0</span>, i <span class="pl-k">=</span> numDigits <span class="pl-k">-</span> <span class="pl-c1">1</span>, pos <span class="pl-k">=</span> <span class="pl-c1">1</span>, digit, luhn <span class="pl-k">=</span> <span class="pl-k">new</span> <span class="pl-en">String</span>();</td>
      </tr>
      <tr>
        <td id="L1388" class="blob-num js-line-number" data-line-number="1388"></td>
        <td id="LC1388" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">do</span> {</td>
      </tr>
      <tr>
        <td id="L1389" class="blob-num js-line-number" data-line-number="1389"></td>
        <td id="LC1389" class="blob-code blob-code-inner js-file-line">					digit <span class="pl-k">=</span> <span class="pl-c1">parseInt</span>(<span class="pl-smi">cardNumber</span>.<span class="pl-c1">charAt</span>(i));</td>
      </tr>
      <tr>
        <td id="L1390" class="blob-num js-line-number" data-line-number="1390"></td>
        <td id="LC1390" class="blob-code blob-code-inner js-file-line">					luhn <span class="pl-k">+=</span> (pos<span class="pl-k">++</span> <span class="pl-k">%</span> <span class="pl-c1">2</span> <span class="pl-k">==</span> <span class="pl-c1">0</span>) <span class="pl-k">?</span> digit <span class="pl-k">*</span> <span class="pl-c1">2</span> <span class="pl-k">:</span> digit;</td>
      </tr>
      <tr>
        <td id="L1391" class="blob-num js-line-number" data-line-number="1391"></td>
        <td id="LC1391" class="blob-code blob-code-inner js-file-line">				} <span class="pl-k">while</span> (<span class="pl-k">--</span>i <span class="pl-k">&gt;=</span> <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L1392" class="blob-num js-line-number" data-line-number="1392"></td>
        <td id="LC1392" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1393" class="blob-num js-line-number" data-line-number="1393"></td>
        <td id="LC1393" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">for</span> (i <span class="pl-k">=</span> <span class="pl-c1">0</span>; i <span class="pl-k">&lt;</span> <span class="pl-smi">luhn</span>.<span class="pl-c1">length</span>; i<span class="pl-k">++</span>) {</td>
      </tr>
      <tr>
        <td id="L1394" class="blob-num js-line-number" data-line-number="1394"></td>
        <td id="LC1394" class="blob-code blob-code-inner js-file-line">					sum <span class="pl-k">+=</span> <span class="pl-c1">parseInt</span>(<span class="pl-smi">luhn</span>.<span class="pl-c1">charAt</span>(i));</td>
      </tr>
      <tr>
        <td id="L1395" class="blob-num js-line-number" data-line-number="1395"></td>
        <td id="LC1395" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1396" class="blob-num js-line-number" data-line-number="1396"></td>
        <td id="LC1396" class="blob-code blob-code-inner js-file-line">				valid <span class="pl-k">=</span> sum <span class="pl-k">%</span> <span class="pl-c1">10</span> <span class="pl-k">==</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1397" class="blob-num js-line-number" data-line-number="1397"></td>
        <td id="LC1397" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1398" class="blob-num js-line-number" data-line-number="1398"></td>
        <td id="LC1398" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">!</span>valid) <span class="pl-k">return</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>.<span class="pl-smi">creditCard</span>.<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L1399" class="blob-num js-line-number" data-line-number="1399"></td>
        <td id="LC1399" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1400" class="blob-num js-line-number" data-line-number="1400"></td>
        <td id="LC1400" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1401" class="blob-num js-line-number" data-line-number="1401"></td>
        <td id="LC1401" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Ajax field validation</span></td>
      </tr>
      <tr>
        <td id="L1402" class="blob-num js-line-number" data-line-number="1402"></td>
        <td id="LC1402" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1403" class="blob-num js-line-number" data-line-number="1403"></td>
        <td id="LC1403" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1404" class="blob-num js-line-number" data-line-number="1404"></td>
        <td id="LC1404" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L1405" class="blob-num js-line-number" data-line-number="1405"></td>
        <td id="LC1405" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L1406" class="blob-num js-line-number" data-line-number="1406"></td>
        <td id="LC1406" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1407" class="blob-num js-line-number" data-line-number="1407"></td>
        <td id="LC1407" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            user options</span></td>
      </tr>
      <tr>
        <td id="L1408" class="blob-num js-line-number" data-line-number="1408"></td>
        <td id="LC1408" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> nothing! the ajax validator handles the prompts itself</span></td>
      </tr>
      <tr>
        <td id="L1409" class="blob-num js-line-number" data-line-number="1409"></td>
        <td id="LC1409" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1410" class="blob-num js-line-number" data-line-number="1410"></td>
        <td id="LC1410" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">_ajax</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1411" class="blob-num js-line-number" data-line-number="1411"></td>
        <td id="LC1411" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1412" class="blob-num js-line-number" data-line-number="1412"></td>
        <td id="LC1412" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> errorSelector <span class="pl-k">=</span> rules[i <span class="pl-k">+</span> <span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1413" class="blob-num js-line-number" data-line-number="1413"></td>
        <td id="LC1413" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> rule <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[errorSelector];</td>
      </tr>
      <tr>
        <td id="L1414" class="blob-num js-line-number" data-line-number="1414"></td>
        <td id="LC1414" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> extraData <span class="pl-k">=</span> <span class="pl-smi">rule</span>.<span class="pl-smi">extraData</span>;</td>
      </tr>
      <tr>
        <td id="L1415" class="blob-num js-line-number" data-line-number="1415"></td>
        <td id="LC1415" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> extraDataDynamic <span class="pl-k">=</span> <span class="pl-smi">rule</span>.<span class="pl-smi">extraDataDynamic</span>;</td>
      </tr>
      <tr>
        <td id="L1416" class="blob-num js-line-number" data-line-number="1416"></td>
        <td id="LC1416" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> data <span class="pl-k">=</span> {</td>
      </tr>
      <tr>
        <td id="L1417" class="blob-num js-line-number" data-line-number="1417"></td>
        <td id="LC1417" class="blob-code blob-code-inner js-file-line">				<span class="pl-s"><span class="pl-pds">&quot;</span>fieldId<span class="pl-pds">&quot;</span></span> <span class="pl-k">:</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>),</td>
      </tr>
      <tr>
        <td id="L1418" class="blob-num js-line-number" data-line-number="1418"></td>
        <td id="LC1418" class="blob-code blob-code-inner js-file-line">				<span class="pl-s"><span class="pl-pds">&quot;</span>fieldValue<span class="pl-pds">&quot;</span></span> <span class="pl-k">:</span> <span class="pl-smi">field</span>.<span class="pl-en">val</span>()</td>
      </tr>
      <tr>
        <td id="L1419" class="blob-num js-line-number" data-line-number="1419"></td>
        <td id="LC1419" class="blob-code blob-code-inner js-file-line">			 };</td>
      </tr>
      <tr>
        <td id="L1420" class="blob-num js-line-number" data-line-number="1420"></td>
        <td id="LC1420" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1421" class="blob-num js-line-number" data-line-number="1421"></td>
        <td id="LC1421" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (<span class="pl-k">typeof</span> extraData <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&quot;</span>object<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1422" class="blob-num js-line-number" data-line-number="1422"></td>
        <td id="LC1422" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">$</span>.<span class="pl-en">extend</span>(data, extraData);</td>
      </tr>
      <tr>
        <td id="L1423" class="blob-num js-line-number" data-line-number="1423"></td>
        <td id="LC1423" class="blob-code blob-code-inner js-file-line">			 } <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-k">typeof</span> extraData <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&quot;</span>string<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1424" class="blob-num js-line-number" data-line-number="1424"></td>
        <td id="LC1424" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> tempData <span class="pl-k">=</span> <span class="pl-smi">extraData</span>.<span class="pl-c1">split</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>&amp;<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1425" class="blob-num js-line-number" data-line-number="1425"></td>
        <td id="LC1425" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">for</span>(<span class="pl-k">var</span> i <span class="pl-k">=</span> <span class="pl-c1">0</span>; i <span class="pl-k">&lt;</span> <span class="pl-smi">tempData</span>.<span class="pl-c1">length</span>; i<span class="pl-k">++</span>) {</td>
      </tr>
      <tr>
        <td id="L1426" class="blob-num js-line-number" data-line-number="1426"></td>
        <td id="LC1426" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> values <span class="pl-k">=</span> tempData[i].<span class="pl-c1">split</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>=<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1427" class="blob-num js-line-number" data-line-number="1427"></td>
        <td id="LC1427" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (values[<span class="pl-c1">0</span>] <span class="pl-k">&amp;&amp;</span> values[<span class="pl-c1">0</span>]) {</td>
      </tr>
      <tr>
        <td id="L1428" class="blob-num js-line-number" data-line-number="1428"></td>
        <td id="LC1428" class="blob-code blob-code-inner js-file-line">						data[values[<span class="pl-c1">0</span>]] <span class="pl-k">=</span> values[<span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1429" class="blob-num js-line-number" data-line-number="1429"></td>
        <td id="LC1429" class="blob-code blob-code-inner js-file-line">					}</td>
      </tr>
      <tr>
        <td id="L1430" class="blob-num js-line-number" data-line-number="1430"></td>
        <td id="LC1430" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1431" class="blob-num js-line-number" data-line-number="1431"></td>
        <td id="LC1431" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L1432" class="blob-num js-line-number" data-line-number="1432"></td>
        <td id="LC1432" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1433" class="blob-num js-line-number" data-line-number="1433"></td>
        <td id="LC1433" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (extraDataDynamic) {</td>
      </tr>
      <tr>
        <td id="L1434" class="blob-num js-line-number" data-line-number="1434"></td>
        <td id="LC1434" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">var</span> tmpData <span class="pl-k">=</span> [];</td>
      </tr>
      <tr>
        <td id="L1435" class="blob-num js-line-number" data-line-number="1435"></td>
        <td id="LC1435" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">var</span> domIds <span class="pl-k">=</span> <span class="pl-c1">String</span>(extraDataDynamic).<span class="pl-c1">split</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>,<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1436" class="blob-num js-line-number" data-line-number="1436"></td>
        <td id="LC1436" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">for</span> (<span class="pl-k">var</span> i <span class="pl-k">=</span> <span class="pl-c1">0</span>; i <span class="pl-k">&lt;</span> <span class="pl-smi">domIds</span>.<span class="pl-c1">length</span>; i<span class="pl-k">++</span>) {</td>
      </tr>
      <tr>
        <td id="L1437" class="blob-num js-line-number" data-line-number="1437"></td>
        <td id="LC1437" class="blob-code blob-code-inner js-file-line">					 <span class="pl-k">var</span> id <span class="pl-k">=</span> domIds[i];</td>
      </tr>
      <tr>
        <td id="L1438" class="blob-num js-line-number" data-line-number="1438"></td>
        <td id="LC1438" class="blob-code blob-code-inner js-file-line">					 <span class="pl-k">if</span> (<span class="pl-en">$</span>(id).<span class="pl-c1">length</span>) {</td>
      </tr>
      <tr>
        <td id="L1439" class="blob-num js-line-number" data-line-number="1439"></td>
        <td id="LC1439" class="blob-code blob-code-inner js-file-line">						 <span class="pl-k">var</span> inputValue <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>form, .validationEngineContainer<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">find</span>(id).<span class="pl-en">val</span>();</td>
      </tr>
      <tr>
        <td id="L1440" class="blob-num js-line-number" data-line-number="1440"></td>
        <td id="LC1440" class="blob-code blob-code-inner js-file-line">						 <span class="pl-k">var</span> keyValue <span class="pl-k">=</span> <span class="pl-smi">id</span>.<span class="pl-c1">replace</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>#<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>) <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&#39;</span>=<span class="pl-pds">&#39;</span></span> <span class="pl-k">+</span> <span class="pl-c1">escape</span>(inputValue);</td>
      </tr>
      <tr>
        <td id="L1441" class="blob-num js-line-number" data-line-number="1441"></td>
        <td id="LC1441" class="blob-code blob-code-inner js-file-line">						 data[<span class="pl-smi">id</span>.<span class="pl-c1">replace</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>#<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>)] <span class="pl-k">=</span> inputValue;</td>
      </tr>
      <tr>
        <td id="L1442" class="blob-num js-line-number" data-line-number="1442"></td>
        <td id="LC1442" class="blob-code blob-code-inner js-file-line">					 }</td>
      </tr>
      <tr>
        <td id="L1443" class="blob-num js-line-number" data-line-number="1443"></td>
        <td id="LC1443" class="blob-code blob-code-inner js-file-line">				 }</td>
      </tr>
      <tr>
        <td id="L1444" class="blob-num js-line-number" data-line-number="1444"></td>
        <td id="LC1444" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L1445" class="blob-num js-line-number" data-line-number="1445"></td>
        <td id="LC1445" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1446" class="blob-num js-line-number" data-line-number="1446"></td>
        <td id="LC1446" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> If a field change event triggered this we want to clear the cache for this ID</span></td>
      </tr>
      <tr>
        <td id="L1447" class="blob-num js-line-number" data-line-number="1447"></td>
        <td id="LC1447" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">eventTrigger</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>field<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1448" class="blob-num js-line-number" data-line-number="1448"></td>
        <td id="LC1448" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">delete</span>(<span class="pl-smi">options</span>.<span class="pl-smi">ajaxValidCache</span>[<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>)]);</td>
      </tr>
      <tr>
        <td id="L1449" class="blob-num js-line-number" data-line-number="1449"></td>
        <td id="LC1449" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L1450" class="blob-num js-line-number" data-line-number="1450"></td>
        <td id="LC1450" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1451" class="blob-num js-line-number" data-line-number="1451"></td>
        <td id="LC1451" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> If there is an error or if the the field is already validated, do not re-execute AJAX</span></td>
      </tr>
      <tr>
        <td id="L1452" class="blob-num js-line-number" data-line-number="1452"></td>
        <td id="LC1452" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (<span class="pl-k">!</span><span class="pl-smi">options</span>.<span class="pl-smi">isError</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-k">!</span><span class="pl-smi">methods</span>.<span class="pl-en">_checkAjaxFieldStatus</span>(<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>), options)) {</td>
      </tr>
      <tr>
        <td id="L1453" class="blob-num js-line-number" data-line-number="1453"></td>
        <td id="LC1453" class="blob-code blob-code-inner js-file-line">				 <span class="pl-smi">$</span>.<span class="pl-en">ajax</span>({</td>
      </tr>
      <tr>
        <td id="L1454" class="blob-num js-line-number" data-line-number="1454"></td>
        <td id="LC1454" class="blob-code blob-code-inner js-file-line">					 type<span class="pl-k">:</span> <span class="pl-smi">options</span>.<span class="pl-smi">ajaxFormValidationMethod</span>,</td>
      </tr>
      <tr>
        <td id="L1455" class="blob-num js-line-number" data-line-number="1455"></td>
        <td id="LC1455" class="blob-code blob-code-inner js-file-line">					 url<span class="pl-k">:</span> <span class="pl-smi">rule</span>.<span class="pl-smi">url</span>,</td>
      </tr>
      <tr>
        <td id="L1456" class="blob-num js-line-number" data-line-number="1456"></td>
        <td id="LC1456" class="blob-code blob-code-inner js-file-line">					 cache<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L1457" class="blob-num js-line-number" data-line-number="1457"></td>
        <td id="LC1457" class="blob-code blob-code-inner js-file-line">					 dataType<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>json<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1458" class="blob-num js-line-number" data-line-number="1458"></td>
        <td id="LC1458" class="blob-code blob-code-inner js-file-line">					 data<span class="pl-k">:</span> data,</td>
      </tr>
      <tr>
        <td id="L1459" class="blob-num js-line-number" data-line-number="1459"></td>
        <td id="LC1459" class="blob-code blob-code-inner js-file-line">					 field<span class="pl-k">:</span> field,</td>
      </tr>
      <tr>
        <td id="L1460" class="blob-num js-line-number" data-line-number="1460"></td>
        <td id="LC1460" class="blob-code blob-code-inner js-file-line">					 rule<span class="pl-k">:</span> rule,</td>
      </tr>
      <tr>
        <td id="L1461" class="blob-num js-line-number" data-line-number="1461"></td>
        <td id="LC1461" class="blob-code blob-code-inner js-file-line">					 methods<span class="pl-k">:</span> methods,</td>
      </tr>
      <tr>
        <td id="L1462" class="blob-num js-line-number" data-line-number="1462"></td>
        <td id="LC1462" class="blob-code blob-code-inner js-file-line">					 options<span class="pl-k">:</span> options,</td>
      </tr>
      <tr>
        <td id="L1463" class="blob-num js-line-number" data-line-number="1463"></td>
        <td id="LC1463" class="blob-code blob-code-inner js-file-line">					 <span class="pl-en">beforeSend</span><span class="pl-k">:</span> <span class="pl-k">function</span>() {},</td>
      </tr>
      <tr>
        <td id="L1464" class="blob-num js-line-number" data-line-number="1464"></td>
        <td id="LC1464" class="blob-code blob-code-inner js-file-line">					 <span class="pl-en">error</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">data</span>, <span class="pl-smi">transport</span>) {</td>
      </tr>
      <tr>
        <td id="L1465" class="blob-num js-line-number" data-line-number="1465"></td>
        <td id="LC1465" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">onFailure</span>) {</td>
      </tr>
      <tr>
        <td id="L1466" class="blob-num js-line-number" data-line-number="1466"></td>
        <td id="LC1466" class="blob-code blob-code-inner js-file-line">							<span class="pl-smi">options</span>.<span class="pl-en">onFailure</span>(data, transport);</td>
      </tr>
      <tr>
        <td id="L1467" class="blob-num js-line-number" data-line-number="1467"></td>
        <td id="LC1467" class="blob-code blob-code-inner js-file-line">						} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1468" class="blob-num js-line-number" data-line-number="1468"></td>
        <td id="LC1468" class="blob-code blob-code-inner js-file-line">							<span class="pl-smi">methods</span>.<span class="pl-en">_ajaxError</span>(data, transport);</td>
      </tr>
      <tr>
        <td id="L1469" class="blob-num js-line-number" data-line-number="1469"></td>
        <td id="LC1469" class="blob-code blob-code-inner js-file-line">						}</td>
      </tr>
      <tr>
        <td id="L1470" class="blob-num js-line-number" data-line-number="1470"></td>
        <td id="LC1470" class="blob-code blob-code-inner js-file-line">					 },</td>
      </tr>
      <tr>
        <td id="L1471" class="blob-num js-line-number" data-line-number="1471"></td>
        <td id="LC1471" class="blob-code blob-code-inner js-file-line">					 <span class="pl-en">success</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">json</span>) {</td>
      </tr>
      <tr>
        <td id="L1472" class="blob-num js-line-number" data-line-number="1472"></td>
        <td id="LC1472" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1473" class="blob-num js-line-number" data-line-number="1473"></td>
        <td id="LC1473" class="blob-code blob-code-inner js-file-line">						 <span class="pl-c"><span class="pl-c">//</span> asynchronously called on success, data is the json answer from the server</span></td>
      </tr>
      <tr>
        <td id="L1474" class="blob-num js-line-number" data-line-number="1474"></td>
        <td id="LC1474" class="blob-code blob-code-inner js-file-line">						 <span class="pl-k">var</span> errorFieldId <span class="pl-k">=</span> json[<span class="pl-c1">0</span>];</td>
      </tr>
      <tr>
        <td id="L1475" class="blob-num js-line-number" data-line-number="1475"></td>
        <td id="LC1475" class="blob-code blob-code-inner js-file-line">						 <span class="pl-c"><span class="pl-c">//</span>var errorField = $($(&quot;#&quot; + errorFieldId)[0]);</span></td>
      </tr>
      <tr>
        <td id="L1476" class="blob-num js-line-number" data-line-number="1476"></td>
        <td id="LC1476" class="blob-code blob-code-inner js-file-line">						 <span class="pl-k">var</span> errorField <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span> errorFieldId).<span class="pl-en">eq</span>(<span class="pl-c1">0</span>);</td>
      </tr>
      <tr>
        <td id="L1477" class="blob-num js-line-number" data-line-number="1477"></td>
        <td id="LC1477" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1478" class="blob-num js-line-number" data-line-number="1478"></td>
        <td id="LC1478" class="blob-code blob-code-inner js-file-line">						 <span class="pl-c"><span class="pl-c">//</span> make sure we found the element</span></td>
      </tr>
      <tr>
        <td id="L1479" class="blob-num js-line-number" data-line-number="1479"></td>
        <td id="LC1479" class="blob-code blob-code-inner js-file-line">						 <span class="pl-k">if</span> (<span class="pl-smi">errorField</span>.<span class="pl-c1">length</span> <span class="pl-k">==</span> <span class="pl-c1">1</span>) {</td>
      </tr>
      <tr>
        <td id="L1480" class="blob-num js-line-number" data-line-number="1480"></td>
        <td id="LC1480" class="blob-code blob-code-inner js-file-line">							 <span class="pl-k">var</span> status <span class="pl-k">=</span> json[<span class="pl-c1">1</span>];</td>
      </tr>
      <tr>
        <td id="L1481" class="blob-num js-line-number" data-line-number="1481"></td>
        <td id="LC1481" class="blob-code blob-code-inner js-file-line">							 <span class="pl-c"><span class="pl-c">//</span> read the optional msg from the server</span></td>
      </tr>
      <tr>
        <td id="L1482" class="blob-num js-line-number" data-line-number="1482"></td>
        <td id="LC1482" class="blob-code blob-code-inner js-file-line">							 <span class="pl-k">var</span> msg <span class="pl-k">=</span> json[<span class="pl-c1">2</span>];</td>
      </tr>
      <tr>
        <td id="L1483" class="blob-num js-line-number" data-line-number="1483"></td>
        <td id="LC1483" class="blob-code blob-code-inner js-file-line">							 <span class="pl-k">if</span> (<span class="pl-k">!</span>status) {</td>
      </tr>
      <tr>
        <td id="L1484" class="blob-num js-line-number" data-line-number="1484"></td>
        <td id="LC1484" class="blob-code blob-code-inner js-file-line">								 <span class="pl-c"><span class="pl-c">//</span> Houston we got a problem - display an red prompt</span></td>
      </tr>
      <tr>
        <td id="L1485" class="blob-num js-line-number" data-line-number="1485"></td>
        <td id="LC1485" class="blob-code blob-code-inner js-file-line">								 <span class="pl-smi">options</span>.<span class="pl-smi">ajaxValidCache</span>[errorFieldId] <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L1486" class="blob-num js-line-number" data-line-number="1486"></td>
        <td id="LC1486" class="blob-code blob-code-inner js-file-line">								 <span class="pl-smi">options</span>.<span class="pl-smi">isError</span> <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L1487" class="blob-num js-line-number" data-line-number="1487"></td>
        <td id="LC1487" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1488" class="blob-num js-line-number" data-line-number="1488"></td>
        <td id="LC1488" class="blob-code blob-code-inner js-file-line">								 <span class="pl-c"><span class="pl-c">//</span> resolve the msg prompt</span></td>
      </tr>
      <tr>
        <td id="L1489" class="blob-num js-line-number" data-line-number="1489"></td>
        <td id="LC1489" class="blob-code blob-code-inner js-file-line">								 <span class="pl-k">if</span>(msg) {</td>
      </tr>
      <tr>
        <td id="L1490" class="blob-num js-line-number" data-line-number="1490"></td>
        <td id="LC1490" class="blob-code blob-code-inner js-file-line">									 <span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[msg]) {</td>
      </tr>
      <tr>
        <td id="L1491" class="blob-num js-line-number" data-line-number="1491"></td>
        <td id="LC1491" class="blob-code blob-code-inner js-file-line">										 <span class="pl-k">var</span> txt <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[msg].<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L1492" class="blob-num js-line-number" data-line-number="1492"></td>
        <td id="LC1492" class="blob-code blob-code-inner js-file-line">										 <span class="pl-k">if</span> (txt) {</td>
      </tr>
      <tr>
        <td id="L1493" class="blob-num js-line-number" data-line-number="1493"></td>
        <td id="LC1493" class="blob-code blob-code-inner js-file-line">											msg <span class="pl-k">=</span> txt;</td>
      </tr>
      <tr>
        <td id="L1494" class="blob-num js-line-number" data-line-number="1494"></td>
        <td id="LC1494" class="blob-code blob-code-inner js-file-line">							}</td>
      </tr>
      <tr>
        <td id="L1495" class="blob-num js-line-number" data-line-number="1495"></td>
        <td id="LC1495" class="blob-code blob-code-inner js-file-line">									 }</td>
      </tr>
      <tr>
        <td id="L1496" class="blob-num js-line-number" data-line-number="1496"></td>
        <td id="LC1496" class="blob-code blob-code-inner js-file-line">								 }</td>
      </tr>
      <tr>
        <td id="L1497" class="blob-num js-line-number" data-line-number="1497"></td>
        <td id="LC1497" class="blob-code blob-code-inner js-file-line">								 <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1498" class="blob-num js-line-number" data-line-number="1498"></td>
        <td id="LC1498" class="blob-code blob-code-inner js-file-line">									msg <span class="pl-k">=</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertText</span>;</td>
      </tr>
      <tr>
        <td id="L1499" class="blob-num js-line-number" data-line-number="1499"></td>
        <td id="LC1499" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1500" class="blob-num js-line-number" data-line-number="1500"></td>
        <td id="LC1500" class="blob-code blob-code-inner js-file-line">								 <span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">showPrompts</span>) <span class="pl-smi">methods</span>.<span class="pl-en">_showPrompt</span>(errorField, msg, <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>, <span class="pl-c1">true</span>, options);</td>
      </tr>
      <tr>
        <td id="L1501" class="blob-num js-line-number" data-line-number="1501"></td>
        <td id="LC1501" class="blob-code blob-code-inner js-file-line">							 } <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1502" class="blob-num js-line-number" data-line-number="1502"></td>
        <td id="LC1502" class="blob-code blob-code-inner js-file-line">								 <span class="pl-smi">options</span>.<span class="pl-smi">ajaxValidCache</span>[errorFieldId] <span class="pl-k">=</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L1503" class="blob-num js-line-number" data-line-number="1503"></td>
        <td id="LC1503" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1504" class="blob-num js-line-number" data-line-number="1504"></td>
        <td id="LC1504" class="blob-code blob-code-inner js-file-line">								 <span class="pl-c"><span class="pl-c">//</span> resolves the msg prompt</span></td>
      </tr>
      <tr>
        <td id="L1505" class="blob-num js-line-number" data-line-number="1505"></td>
        <td id="LC1505" class="blob-code blob-code-inner js-file-line">								 <span class="pl-k">if</span>(msg) {</td>
      </tr>
      <tr>
        <td id="L1506" class="blob-num js-line-number" data-line-number="1506"></td>
        <td id="LC1506" class="blob-code blob-code-inner js-file-line">									 <span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[msg]) {</td>
      </tr>
      <tr>
        <td id="L1507" class="blob-num js-line-number" data-line-number="1507"></td>
        <td id="LC1507" class="blob-code blob-code-inner js-file-line">										 <span class="pl-k">var</span> txt <span class="pl-k">=</span> <span class="pl-smi">options</span>.<span class="pl-smi">allrules</span>[msg].<span class="pl-smi">alertTextOk</span>;</td>
      </tr>
      <tr>
        <td id="L1508" class="blob-num js-line-number" data-line-number="1508"></td>
        <td id="LC1508" class="blob-code blob-code-inner js-file-line">										 <span class="pl-k">if</span> (txt) {</td>
      </tr>
      <tr>
        <td id="L1509" class="blob-num js-line-number" data-line-number="1509"></td>
        <td id="LC1509" class="blob-code blob-code-inner js-file-line">											msg <span class="pl-k">=</span> txt;</td>
      </tr>
      <tr>
        <td id="L1510" class="blob-num js-line-number" data-line-number="1510"></td>
        <td id="LC1510" class="blob-code blob-code-inner js-file-line">							}</td>
      </tr>
      <tr>
        <td id="L1511" class="blob-num js-line-number" data-line-number="1511"></td>
        <td id="LC1511" class="blob-code blob-code-inner js-file-line">									 }</td>
      </tr>
      <tr>
        <td id="L1512" class="blob-num js-line-number" data-line-number="1512"></td>
        <td id="LC1512" class="blob-code blob-code-inner js-file-line">								 }</td>
      </tr>
      <tr>
        <td id="L1513" class="blob-num js-line-number" data-line-number="1513"></td>
        <td id="LC1513" class="blob-code blob-code-inner js-file-line">								 <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1514" class="blob-num js-line-number" data-line-number="1514"></td>
        <td id="LC1514" class="blob-code blob-code-inner js-file-line">								 msg <span class="pl-k">=</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertTextOk</span>;</td>
      </tr>
      <tr>
        <td id="L1515" class="blob-num js-line-number" data-line-number="1515"></td>
        <td id="LC1515" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1516" class="blob-num js-line-number" data-line-number="1516"></td>
        <td id="LC1516" class="blob-code blob-code-inner js-file-line">								 <span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">showPrompts</span>) {</td>
      </tr>
      <tr>
        <td id="L1517" class="blob-num js-line-number" data-line-number="1517"></td>
        <td id="LC1517" class="blob-code blob-code-inner js-file-line">									 <span class="pl-c"><span class="pl-c">//</span> see if we should display a green prompt</span></td>
      </tr>
      <tr>
        <td id="L1518" class="blob-num js-line-number" data-line-number="1518"></td>
        <td id="LC1518" class="blob-code blob-code-inner js-file-line">									 <span class="pl-k">if</span> (msg)</td>
      </tr>
      <tr>
        <td id="L1519" class="blob-num js-line-number" data-line-number="1519"></td>
        <td id="LC1519" class="blob-code blob-code-inner js-file-line">										<span class="pl-smi">methods</span>.<span class="pl-en">_showPrompt</span>(errorField, msg, <span class="pl-s"><span class="pl-pds">&quot;</span>pass<span class="pl-pds">&quot;</span></span>, <span class="pl-c1">true</span>, options);</td>
      </tr>
      <tr>
        <td id="L1520" class="blob-num js-line-number" data-line-number="1520"></td>
        <td id="LC1520" class="blob-code blob-code-inner js-file-line">									 <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1521" class="blob-num js-line-number" data-line-number="1521"></td>
        <td id="LC1521" class="blob-code blob-code-inner js-file-line">										<span class="pl-smi">methods</span>.<span class="pl-en">_closePrompt</span>(errorField);</td>
      </tr>
      <tr>
        <td id="L1522" class="blob-num js-line-number" data-line-number="1522"></td>
        <td id="LC1522" class="blob-code blob-code-inner js-file-line">								}</td>
      </tr>
      <tr>
        <td id="L1523" class="blob-num js-line-number" data-line-number="1523"></td>
        <td id="LC1523" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1524" class="blob-num js-line-number" data-line-number="1524"></td>
        <td id="LC1524" class="blob-code blob-code-inner js-file-line">								 <span class="pl-c"><span class="pl-c">//</span> If a submit form triggered this, we want to re-submit the form</span></td>
      </tr>
      <tr>
        <td id="L1525" class="blob-num js-line-number" data-line-number="1525"></td>
        <td id="LC1525" class="blob-code blob-code-inner js-file-line">								 <span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">eventTrigger</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>submit<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1526" class="blob-num js-line-number" data-line-number="1526"></td>
        <td id="LC1526" class="blob-code blob-code-inner js-file-line">									<span class="pl-smi">field</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>form<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">submit</span>();</td>
      </tr>
      <tr>
        <td id="L1527" class="blob-num js-line-number" data-line-number="1527"></td>
        <td id="LC1527" class="blob-code blob-code-inner js-file-line">							 }</td>
      </tr>
      <tr>
        <td id="L1528" class="blob-num js-line-number" data-line-number="1528"></td>
        <td id="LC1528" class="blob-code blob-code-inner js-file-line">						 }</td>
      </tr>
      <tr>
        <td id="L1529" class="blob-num js-line-number" data-line-number="1529"></td>
        <td id="LC1529" class="blob-code blob-code-inner js-file-line">						 <span class="pl-smi">errorField</span>.<span class="pl-en">trigger</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv.field.result<span class="pl-pds">&quot;</span></span>, [errorField, <span class="pl-smi">options</span>.<span class="pl-smi">isError</span>, msg]);</td>
      </tr>
      <tr>
        <td id="L1530" class="blob-num js-line-number" data-line-number="1530"></td>
        <td id="LC1530" class="blob-code blob-code-inner js-file-line">					 }</td>
      </tr>
      <tr>
        <td id="L1531" class="blob-num js-line-number" data-line-number="1531"></td>
        <td id="LC1531" class="blob-code blob-code-inner js-file-line">				 });</td>
      </tr>
      <tr>
        <td id="L1532" class="blob-num js-line-number" data-line-number="1532"></td>
        <td id="LC1532" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1533" class="blob-num js-line-number" data-line-number="1533"></td>
        <td id="LC1533" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">return</span> <span class="pl-smi">rule</span>.<span class="pl-smi">alertTextLoad</span>;</td>
      </tr>
      <tr>
        <td id="L1534" class="blob-num js-line-number" data-line-number="1534"></td>
        <td id="LC1534" class="blob-code blob-code-inner js-file-line">			 }</td>
      </tr>
      <tr>
        <td id="L1535" class="blob-num js-line-number" data-line-number="1535"></td>
        <td id="LC1535" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L1536" class="blob-num js-line-number" data-line-number="1536"></td>
        <td id="LC1536" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1537" class="blob-num js-line-number" data-line-number="1537"></td>
        <td id="LC1537" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Common method to handle ajax errors</span></td>
      </tr>
      <tr>
        <td id="L1538" class="blob-num js-line-number" data-line-number="1538"></td>
        <td id="LC1538" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1539" class="blob-num js-line-number" data-line-number="1539"></td>
        <td id="LC1539" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Object}</span> <span class="pl-smi">data</span></span></td>
      </tr>
      <tr>
        <td id="L1540" class="blob-num js-line-number" data-line-number="1540"></td>
        <td id="LC1540" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Object}</span> <span class="pl-smi">transport</span></span></td>
      </tr>
      <tr>
        <td id="L1541" class="blob-num js-line-number" data-line-number="1541"></td>
        <td id="LC1541" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1542" class="blob-num js-line-number" data-line-number="1542"></td>
        <td id="LC1542" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_ajaxError</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">data</span>, <span class="pl-smi">transport</span>) {</td>
      </tr>
      <tr>
        <td id="L1543" class="blob-num js-line-number" data-line-number="1543"></td>
        <td id="LC1543" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">data</span>.<span class="pl-c1">status</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">&amp;&amp;</span> transport <span class="pl-k">==</span> <span class="pl-c1">null</span>)</td>
      </tr>
      <tr>
        <td id="L1544" class="blob-num js-line-number" data-line-number="1544"></td>
        <td id="LC1544" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">alert</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>The page is not served from a server! ajax call failed<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1545" class="blob-num js-line-number" data-line-number="1545"></td>
        <td id="LC1545" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">else</span> <span class="pl-k">if</span>(<span class="pl-k">typeof</span> <span class="pl-en">console</span> <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>undefined<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1546" class="blob-num js-line-number" data-line-number="1546"></td>
        <td id="LC1546" class="blob-code blob-code-inner js-file-line">				<span class="pl-en">console</span>.<span class="pl-c1">log</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>Ajax error: <span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">data</span>.<span class="pl-c1">status</span> <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> transport);</td>
      </tr>
      <tr>
        <td id="L1547" class="blob-num js-line-number" data-line-number="1547"></td>
        <td id="LC1547" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1548" class="blob-num js-line-number" data-line-number="1548"></td>
        <td id="LC1548" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1549" class="blob-num js-line-number" data-line-number="1549"></td>
        <td id="LC1549" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* date -&gt; string</span></td>
      </tr>
      <tr>
        <td id="L1550" class="blob-num js-line-number" data-line-number="1550"></td>
        <td id="LC1550" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1551" class="blob-num js-line-number" data-line-number="1551"></td>
        <td id="LC1551" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Object}</span> <span class="pl-smi">date</span></span></td>
      </tr>
      <tr>
        <td id="L1552" class="blob-num js-line-number" data-line-number="1552"></td>
        <td id="LC1552" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1553" class="blob-num js-line-number" data-line-number="1553"></td>
        <td id="LC1553" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_dateToString</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">date</span>) {</td>
      </tr>
      <tr>
        <td id="L1554" class="blob-num js-line-number" data-line-number="1554"></td>
        <td id="LC1554" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-smi">date</span>.<span class="pl-c1">getFullYear</span>()<span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>-<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span>(<span class="pl-smi">date</span>.<span class="pl-c1">getMonth</span>()<span class="pl-k">+</span><span class="pl-c1">1</span>)<span class="pl-k">+</span><span class="pl-s"><span class="pl-pds">&quot;</span>-<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">date</span>.<span class="pl-c1">getDate</span>();</td>
      </tr>
      <tr>
        <td id="L1555" class="blob-num js-line-number" data-line-number="1555"></td>
        <td id="LC1555" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1556" class="blob-num js-line-number" data-line-number="1556"></td>
        <td id="LC1556" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1557" class="blob-num js-line-number" data-line-number="1557"></td>
        <td id="LC1557" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Parses an ISO date</span></td>
      </tr>
      <tr>
        <td id="L1558" class="blob-num js-line-number" data-line-number="1558"></td>
        <td id="LC1558" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">d</span></span></td>
      </tr>
      <tr>
        <td id="L1559" class="blob-num js-line-number" data-line-number="1559"></td>
        <td id="LC1559" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1560" class="blob-num js-line-number" data-line-number="1560"></td>
        <td id="LC1560" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_parseDate</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">d</span>) {</td>
      </tr>
      <tr>
        <td id="L1561" class="blob-num js-line-number" data-line-number="1561"></td>
        <td id="LC1561" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1562" class="blob-num js-line-number" data-line-number="1562"></td>
        <td id="LC1562" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> dateParts <span class="pl-k">=</span> <span class="pl-smi">d</span>.<span class="pl-c1">split</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>-<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1563" class="blob-num js-line-number" data-line-number="1563"></td>
        <td id="LC1563" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(dateParts<span class="pl-k">==</span>d)</td>
      </tr>
      <tr>
        <td id="L1564" class="blob-num js-line-number" data-line-number="1564"></td>
        <td id="LC1564" class="blob-code blob-code-inner js-file-line">				dateParts <span class="pl-k">=</span> <span class="pl-smi">d</span>.<span class="pl-c1">split</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>/<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1565" class="blob-num js-line-number" data-line-number="1565"></td>
        <td id="LC1565" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(dateParts<span class="pl-k">==</span>d) {</td>
      </tr>
      <tr>
        <td id="L1566" class="blob-num js-line-number" data-line-number="1566"></td>
        <td id="LC1566" class="blob-code blob-code-inner js-file-line">				dateParts <span class="pl-k">=</span> <span class="pl-smi">d</span>.<span class="pl-c1">split</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>.<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1567" class="blob-num js-line-number" data-line-number="1567"></td>
        <td id="LC1567" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">return</span> <span class="pl-k">new</span> <span class="pl-en">Date</span>(dateParts[<span class="pl-c1">2</span>], (dateParts[<span class="pl-c1">1</span>] <span class="pl-k">-</span> <span class="pl-c1">1</span>), dateParts[<span class="pl-c1">0</span>]);</td>
      </tr>
      <tr>
        <td id="L1568" class="blob-num js-line-number" data-line-number="1568"></td>
        <td id="LC1568" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1569" class="blob-num js-line-number" data-line-number="1569"></td>
        <td id="LC1569" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-k">new</span> <span class="pl-en">Date</span>(dateParts[<span class="pl-c1">0</span>], (dateParts[<span class="pl-c1">1</span>] <span class="pl-k">-</span> <span class="pl-c1">1</span>) ,dateParts[<span class="pl-c1">2</span>]);</td>
      </tr>
      <tr>
        <td id="L1570" class="blob-num js-line-number" data-line-number="1570"></td>
        <td id="LC1570" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1571" class="blob-num js-line-number" data-line-number="1571"></td>
        <td id="LC1571" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1572" class="blob-num js-line-number" data-line-number="1572"></td>
        <td id="LC1572" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Builds or updates a prompt with the given information</span></td>
      </tr>
      <tr>
        <td id="L1573" class="blob-num js-line-number" data-line-number="1573"></td>
        <td id="LC1573" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1574" class="blob-num js-line-number" data-line-number="1574"></td>
        <td id="LC1574" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1575" class="blob-num js-line-number" data-line-number="1575"></td>
        <td id="LC1575" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">promptText</span> html text to display type</span></td>
      </tr>
      <tr>
        <td id="L1576" class="blob-num js-line-number" data-line-number="1576"></td>
        <td id="LC1576" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">type</span> the type of bubble: &#39;pass&#39; (green), &#39;load&#39; (black) anything else (red)</span></td>
      </tr>
      <tr>
        <td id="L1577" class="blob-num js-line-number" data-line-number="1577"></td>
        <td id="LC1577" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{boolean}</span> <span class="pl-smi">ajaxed</span> - use to mark fields than being validated with ajax</span></td>
      </tr>
      <tr>
        <td id="L1578" class="blob-num js-line-number" data-line-number="1578"></td>
        <td id="LC1578" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span> <span class="pl-smi">options</span> user options</span></td>
      </tr>
      <tr>
        <td id="L1579" class="blob-num js-line-number" data-line-number="1579"></td>
        <td id="LC1579" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1580" class="blob-num js-line-number" data-line-number="1580"></td>
        <td id="LC1580" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">_showPrompt</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">promptText</span>, <span class="pl-smi">type</span>, <span class="pl-smi">ajaxed</span>, <span class="pl-smi">options</span>, <span class="pl-smi">ajaxform</span>) {</td>
      </tr>
      <tr>
        <td id="L1581" class="blob-num js-line-number" data-line-number="1581"></td>
        <td id="LC1581" class="blob-code blob-code-inner js-file-line">		 	<span class="pl-c"><span class="pl-c">//</span>Check if we need to adjust what element to show the prompt on</span></td>
      </tr>
      <tr>
        <td id="L1582" class="blob-num js-line-number" data-line-number="1582"></td>
        <td id="LC1582" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(<span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv-prompt-at<span class="pl-pds">&#39;</span></span>) <span class="pl-k">instanceof</span> jQuery ){</td>
      </tr>
      <tr>
        <td id="L1583" class="blob-num js-line-number" data-line-number="1583"></td>
        <td id="LC1583" class="blob-code blob-code-inner js-file-line">				field <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv-prompt-at<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1584" class="blob-num js-line-number" data-line-number="1584"></td>
        <td id="LC1584" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> <span class="pl-k">if</span>(<span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv-prompt-at<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L1585" class="blob-num js-line-number" data-line-number="1585"></td>
        <td id="LC1585" class="blob-code blob-code-inner js-file-line">				field <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv-prompt-at<span class="pl-pds">&#39;</span></span>));</td>
      </tr>
      <tr>
        <td id="L1586" class="blob-num js-line-number" data-line-number="1586"></td>
        <td id="LC1586" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1587" class="blob-num js-line-number" data-line-number="1587"></td>
        <td id="LC1587" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1588" class="blob-num js-line-number" data-line-number="1588"></td>
        <td id="LC1588" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> prompt <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getPrompt</span>(field);</td>
      </tr>
      <tr>
        <td id="L1589" class="blob-num js-line-number" data-line-number="1589"></td>
        <td id="LC1589" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> The ajax submit errors are not see has an error in the form,</span></td>
      </tr>
      <tr>
        <td id="L1590" class="blob-num js-line-number" data-line-number="1590"></td>
        <td id="LC1590" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> When the form errors are returned, the engine see 2 bubbles, but those are ebing closed by the engine at the same time</span></td>
      </tr>
      <tr>
        <td id="L1591" class="blob-num js-line-number" data-line-number="1591"></td>
        <td id="LC1591" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> Because no error was found befor submitting</span></td>
      </tr>
      <tr>
        <td id="L1592" class="blob-num js-line-number" data-line-number="1592"></td>
        <td id="LC1592" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span>(ajaxform) prompt <span class="pl-k">=</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L1593" class="blob-num js-line-number" data-line-number="1593"></td>
        <td id="LC1593" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> Check that there is indded text</span></td>
      </tr>
      <tr>
        <td id="L1594" class="blob-num js-line-number" data-line-number="1594"></td>
        <td id="LC1594" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span>(<span class="pl-smi">$</span>.<span class="pl-en">trim</span>(promptText)){</td>
      </tr>
      <tr>
        <td id="L1595" class="blob-num js-line-number" data-line-number="1595"></td>
        <td id="LC1595" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">if</span> (prompt)</td>
      </tr>
      <tr>
        <td id="L1596" class="blob-num js-line-number" data-line-number="1596"></td>
        <td id="LC1596" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">methods</span>.<span class="pl-en">_updatePrompt</span>(field, prompt, promptText, type, ajaxed, options);</td>
      </tr>
      <tr>
        <td id="L1597" class="blob-num js-line-number" data-line-number="1597"></td>
        <td id="LC1597" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1598" class="blob-num js-line-number" data-line-number="1598"></td>
        <td id="LC1598" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">methods</span>.<span class="pl-en">_buildPrompt</span>(field, promptText, type, ajaxed, options);</td>
      </tr>
      <tr>
        <td id="L1599" class="blob-num js-line-number" data-line-number="1599"></td>
        <td id="LC1599" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1600" class="blob-num js-line-number" data-line-number="1600"></td>
        <td id="LC1600" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L1601" class="blob-num js-line-number" data-line-number="1601"></td>
        <td id="LC1601" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1602" class="blob-num js-line-number" data-line-number="1602"></td>
        <td id="LC1602" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Builds and shades a prompt for the given field.</span></td>
      </tr>
      <tr>
        <td id="L1603" class="blob-num js-line-number" data-line-number="1603"></td>
        <td id="LC1603" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1604" class="blob-num js-line-number" data-line-number="1604"></td>
        <td id="LC1604" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1605" class="blob-num js-line-number" data-line-number="1605"></td>
        <td id="LC1605" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">promptText</span> html text to display type</span></td>
      </tr>
      <tr>
        <td id="L1606" class="blob-num js-line-number" data-line-number="1606"></td>
        <td id="LC1606" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">type</span> the type of bubble: &#39;pass&#39; (green), &#39;load&#39; (black) anything else (red)</span></td>
      </tr>
      <tr>
        <td id="L1607" class="blob-num js-line-number" data-line-number="1607"></td>
        <td id="LC1607" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{boolean}</span> <span class="pl-smi">ajaxed</span> - use to mark fields than being validated with ajax</span></td>
      </tr>
      <tr>
        <td id="L1608" class="blob-num js-line-number" data-line-number="1608"></td>
        <td id="LC1608" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span> <span class="pl-smi">options</span> user options</span></td>
      </tr>
      <tr>
        <td id="L1609" class="blob-num js-line-number" data-line-number="1609"></td>
        <td id="LC1609" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1610" class="blob-num js-line-number" data-line-number="1610"></td>
        <td id="LC1610" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_buildPrompt</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">promptText</span>, <span class="pl-smi">type</span>, <span class="pl-smi">ajaxed</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1611" class="blob-num js-line-number" data-line-number="1611"></td>
        <td id="LC1611" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1612" class="blob-num js-line-number" data-line-number="1612"></td>
        <td id="LC1612" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> create the prompt</span></td>
      </tr>
      <tr>
        <td id="L1613" class="blob-num js-line-number" data-line-number="1613"></td>
        <td id="LC1613" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> prompt <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>&lt;div&gt;<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1614" class="blob-num js-line-number" data-line-number="1614"></td>
        <td id="LC1614" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-smi">methods</span>.<span class="pl-en">_getClassName</span>(<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>)) <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>formError<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1615" class="blob-num js-line-number" data-line-number="1615"></td>
        <td id="LC1615" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> add a class name to identify the parent form of the prompt</span></td>
      </tr>
      <tr>
        <td id="L1616" class="blob-num js-line-number" data-line-number="1616"></td>
        <td id="LC1616" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>parentForm<span class="pl-pds">&quot;</span></span><span class="pl-k">+</span><span class="pl-smi">methods</span>.<span class="pl-en">_getClassName</span>(<span class="pl-smi">field</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form, .validationEngineContainer<span class="pl-pds">&#39;</span></span>).<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>)));</td>
      </tr>
      <tr>
        <td id="L1617" class="blob-num js-line-number" data-line-number="1617"></td>
        <td id="LC1617" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>formError<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1618" class="blob-num js-line-number" data-line-number="1618"></td>
        <td id="LC1618" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1619" class="blob-num js-line-number" data-line-number="1619"></td>
        <td id="LC1619" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">switch</span> (type) {</td>
      </tr>
      <tr>
        <td id="L1620" class="blob-num js-line-number" data-line-number="1620"></td>
        <td id="LC1620" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>pass<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1621" class="blob-num js-line-number" data-line-number="1621"></td>
        <td id="LC1621" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>greenPopup<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1622" class="blob-num js-line-number" data-line-number="1622"></td>
        <td id="LC1622" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1623" class="blob-num js-line-number" data-line-number="1623"></td>
        <td id="LC1623" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>load<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1624" class="blob-num js-line-number" data-line-number="1624"></td>
        <td id="LC1624" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>blackPopup<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1625" class="blob-num js-line-number" data-line-number="1625"></td>
        <td id="LC1625" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1626" class="blob-num js-line-number" data-line-number="1626"></td>
        <td id="LC1626" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">default</span>:</td>
      </tr>
      <tr>
        <td id="L1627" class="blob-num js-line-number" data-line-number="1627"></td>
        <td id="LC1627" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">/*</span> it has error  <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1628" class="blob-num js-line-number" data-line-number="1628"></td>
        <td id="LC1628" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span>alert(&quot;unknown popup type:&quot;+type);</span></td>
      </tr>
      <tr>
        <td id="L1629" class="blob-num js-line-number" data-line-number="1629"></td>
        <td id="LC1629" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1630" class="blob-num js-line-number" data-line-number="1630"></td>
        <td id="LC1630" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (ajaxed)</td>
      </tr>
      <tr>
        <td id="L1631" class="blob-num js-line-number" data-line-number="1631"></td>
        <td id="LC1631" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>ajaxed<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1632" class="blob-num js-line-number" data-line-number="1632"></td>
        <td id="LC1632" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1633" class="blob-num js-line-number" data-line-number="1633"></td>
        <td id="LC1633" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> create the prompt content</span></td>
      </tr>
      <tr>
        <td id="L1634" class="blob-num js-line-number" data-line-number="1634"></td>
        <td id="LC1634" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> promptContent <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>&lt;div&gt;<span class="pl-pds">&#39;</span></span>).<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>formErrorContent<span class="pl-pds">&quot;</span></span>).<span class="pl-en">html</span>(promptText).<span class="pl-en">appendTo</span>(prompt);</td>
      </tr>
      <tr>
        <td id="L1635" class="blob-num js-line-number" data-line-number="1635"></td>
        <td id="LC1635" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1636" class="blob-num js-line-number" data-line-number="1636"></td>
        <td id="LC1636" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> determine position type</span></td>
      </tr>
      <tr>
        <td id="L1637" class="blob-num js-line-number" data-line-number="1637"></td>
        <td id="LC1637" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> positionType<span class="pl-k">=</span><span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>promptPosition<span class="pl-pds">&quot;</span></span>) <span class="pl-k">||</span> <span class="pl-smi">options</span>.<span class="pl-smi">promptPosition</span>;</td>
      </tr>
      <tr>
        <td id="L1638" class="blob-num js-line-number" data-line-number="1638"></td>
        <td id="LC1638" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1639" class="blob-num js-line-number" data-line-number="1639"></td>
        <td id="LC1639" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> create the css arrow pointing at the field</span></td>
      </tr>
      <tr>
        <td id="L1640" class="blob-num js-line-number" data-line-number="1640"></td>
        <td id="LC1640" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> note that there is no triangle on max-checkbox and radio</span></td>
      </tr>
      <tr>
        <td id="L1641" class="blob-num js-line-number" data-line-number="1641"></td>
        <td id="LC1641" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">showArrow</span>) {</td>
      </tr>
      <tr>
        <td id="L1642" class="blob-num js-line-number" data-line-number="1642"></td>
        <td id="LC1642" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> arrow <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>&lt;div&gt;<span class="pl-pds">&#39;</span></span>).<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>formErrorArrow<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1643" class="blob-num js-line-number" data-line-number="1643"></td>
        <td id="LC1643" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1644" class="blob-num js-line-number" data-line-number="1644"></td>
        <td id="LC1644" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span>prompt positioning adjustment support. Usage: positionType:Xshift,Yshift (for ex.: bottomLeft:+20 or bottomLeft:-20,+10)</span></td>
      </tr>
      <tr>
        <td id="L1645" class="blob-num js-line-number" data-line-number="1645"></td>
        <td id="LC1645" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-k">typeof</span>(positionType)<span class="pl-k">==</span><span class="pl-s"><span class="pl-pds">&#39;</span>string<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1646" class="blob-num js-line-number" data-line-number="1646"></td>
        <td id="LC1646" class="blob-code blob-code-inner js-file-line">				{</td>
      </tr>
      <tr>
        <td id="L1647" class="blob-num js-line-number" data-line-number="1647"></td>
        <td id="LC1647" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> pos<span class="pl-k">=</span><span class="pl-smi">positionType</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1648" class="blob-num js-line-number" data-line-number="1648"></td>
        <td id="LC1648" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span>(pos<span class="pl-k">!=</span><span class="pl-k">-</span><span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1649" class="blob-num js-line-number" data-line-number="1649"></td>
        <td id="LC1649" class="blob-code blob-code-inner js-file-line">						positionType<span class="pl-k">=</span><span class="pl-smi">positionType</span>.<span class="pl-c1">substring</span>(<span class="pl-c1">0</span>,pos);</td>
      </tr>
      <tr>
        <td id="L1650" class="blob-num js-line-number" data-line-number="1650"></td>
        <td id="LC1650" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1651" class="blob-num js-line-number" data-line-number="1651"></td>
        <td id="LC1651" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1652" class="blob-num js-line-number" data-line-number="1652"></td>
        <td id="LC1652" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">switch</span> (positionType) {</td>
      </tr>
      <tr>
        <td id="L1653" class="blob-num js-line-number" data-line-number="1653"></td>
        <td id="LC1653" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>bottomLeft<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1654" class="blob-num js-line-number" data-line-number="1654"></td>
        <td id="LC1654" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>bottomRight<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1655" class="blob-num js-line-number" data-line-number="1655"></td>
        <td id="LC1655" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">prompt</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>.formErrorContent<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">before</span>(arrow);</td>
      </tr>
      <tr>
        <td id="L1656" class="blob-num js-line-number" data-line-number="1656"></td>
        <td id="LC1656" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">arrow</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>formErrorArrowBottom<span class="pl-pds">&quot;</span></span>).<span class="pl-en">html</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>&lt;div class=&quot;line1&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line2&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line3&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line4&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line5&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line6&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line7&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line8&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line9&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line10&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1657" class="blob-num js-line-number" data-line-number="1657"></td>
        <td id="LC1657" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1658" class="blob-num js-line-number" data-line-number="1658"></td>
        <td id="LC1658" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>topLeft<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1659" class="blob-num js-line-number" data-line-number="1659"></td>
        <td id="LC1659" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>topRight<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1660" class="blob-num js-line-number" data-line-number="1660"></td>
        <td id="LC1660" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">arrow</span>.<span class="pl-en">html</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>&lt;div class=&quot;line10&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line9&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line8&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line7&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line6&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line5&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line4&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line3&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line2&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;&lt;div class=&quot;line1&quot;&gt;&lt;!-- --&gt;&lt;/div&gt;<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1661" class="blob-num js-line-number" data-line-number="1661"></td>
        <td id="LC1661" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">prompt</span>.<span class="pl-c1">append</span>(arrow);</td>
      </tr>
      <tr>
        <td id="L1662" class="blob-num js-line-number" data-line-number="1662"></td>
        <td id="LC1662" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1663" class="blob-num js-line-number" data-line-number="1663"></td>
        <td id="LC1663" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1664" class="blob-num js-line-number" data-line-number="1664"></td>
        <td id="LC1664" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1665" class="blob-num js-line-number" data-line-number="1665"></td>
        <td id="LC1665" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> Add custom prompt class</span></td>
      </tr>
      <tr>
        <td id="L1666" class="blob-num js-line-number" data-line-number="1666"></td>
        <td id="LC1666" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">addPromptClass</span>)</td>
      </tr>
      <tr>
        <td id="L1667" class="blob-num js-line-number" data-line-number="1667"></td>
        <td id="LC1667" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-smi">options</span>.<span class="pl-smi">addPromptClass</span>);</td>
      </tr>
      <tr>
        <td id="L1668" class="blob-num js-line-number" data-line-number="1668"></td>
        <td id="LC1668" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1669" class="blob-num js-line-number" data-line-number="1669"></td>
        <td id="LC1669" class="blob-code blob-code-inner js-file-line">            <span class="pl-c"><span class="pl-c">//</span> Add custom prompt class defined in element</span></td>
      </tr>
      <tr>
        <td id="L1670" class="blob-num js-line-number" data-line-number="1670"></td>
        <td id="LC1670" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">var</span> requiredOverride <span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>data-required-class<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1671" class="blob-num js-line-number" data-line-number="1671"></td>
        <td id="LC1671" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">if</span>(requiredOverride <span class="pl-k">!==</span> <span class="pl-c1">undefined</span>) {</td>
      </tr>
      <tr>
        <td id="L1672" class="blob-num js-line-number" data-line-number="1672"></td>
        <td id="LC1672" class="blob-code blob-code-inner js-file-line">                <span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(requiredOverride);</td>
      </tr>
      <tr>
        <td id="L1673" class="blob-num js-line-number" data-line-number="1673"></td>
        <td id="LC1673" class="blob-code blob-code-inner js-file-line">            } <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1674" class="blob-num js-line-number" data-line-number="1674"></td>
        <td id="LC1674" class="blob-code blob-code-inner js-file-line">                <span class="pl-k">if</span>(<span class="pl-smi">options</span>.<span class="pl-smi">prettySelect</span>) {</td>
      </tr>
      <tr>
        <td id="L1675" class="blob-num js-line-number" data-line-number="1675"></td>
        <td id="LC1675" class="blob-code blob-code-inner js-file-line">                    <span class="pl-k">if</span>(<span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>#<span class="pl-pds">&#39;</span></span> <span class="pl-k">+</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>id<span class="pl-pds">&#39;</span></span>)).<span class="pl-c1">next</span>().<span class="pl-en">is</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>select<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L1676" class="blob-num js-line-number" data-line-number="1676"></td>
        <td id="LC1676" class="blob-code blob-code-inner js-file-line">                        <span class="pl-k">var</span> prettyOverrideClass <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>#<span class="pl-pds">&#39;</span></span> <span class="pl-k">+</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>id<span class="pl-pds">&#39;</span></span>).<span class="pl-c1">substr</span>(<span class="pl-smi">options</span>.<span class="pl-smi">usePrefix</span>.<span class="pl-c1">length</span>).<span class="pl-c1">substring</span>(<span class="pl-smi">options</span>.<span class="pl-smi">useSuffix</span>.<span class="pl-c1">length</span>)).<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>data-required-class<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1677" class="blob-num js-line-number" data-line-number="1677"></td>
        <td id="LC1677" class="blob-code blob-code-inner js-file-line">                        <span class="pl-k">if</span>(prettyOverrideClass <span class="pl-k">!==</span> <span class="pl-c1">undefined</span>) {</td>
      </tr>
      <tr>
        <td id="L1678" class="blob-num js-line-number" data-line-number="1678"></td>
        <td id="LC1678" class="blob-code blob-code-inner js-file-line">                            <span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(prettyOverrideClass);</td>
      </tr>
      <tr>
        <td id="L1679" class="blob-num js-line-number" data-line-number="1679"></td>
        <td id="LC1679" class="blob-code blob-code-inner js-file-line">                        }</td>
      </tr>
      <tr>
        <td id="L1680" class="blob-num js-line-number" data-line-number="1680"></td>
        <td id="LC1680" class="blob-code blob-code-inner js-file-line">                    }</td>
      </tr>
      <tr>
        <td id="L1681" class="blob-num js-line-number" data-line-number="1681"></td>
        <td id="LC1681" class="blob-code blob-code-inner js-file-line">                }</td>
      </tr>
      <tr>
        <td id="L1682" class="blob-num js-line-number" data-line-number="1682"></td>
        <td id="LC1682" class="blob-code blob-code-inner js-file-line">            }</td>
      </tr>
      <tr>
        <td id="L1683" class="blob-num js-line-number" data-line-number="1683"></td>
        <td id="LC1683" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1684" class="blob-num js-line-number" data-line-number="1684"></td>
        <td id="LC1684" class="blob-code blob-code-inner js-file-line">			<span class="pl-smi">prompt</span>.<span class="pl-en">css</span>({</td>
      </tr>
      <tr>
        <td id="L1685" class="blob-num js-line-number" data-line-number="1685"></td>
        <td id="LC1685" class="blob-code blob-code-inner js-file-line">				<span class="pl-s"><span class="pl-pds">&quot;</span>opacity<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span></td>
      </tr>
      <tr>
        <td id="L1686" class="blob-num js-line-number" data-line-number="1686"></td>
        <td id="LC1686" class="blob-code blob-code-inner js-file-line">			});</td>
      </tr>
      <tr>
        <td id="L1687" class="blob-num js-line-number" data-line-number="1687"></td>
        <td id="LC1687" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span>(positionType <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&#39;</span>inline<span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1688" class="blob-num js-line-number" data-line-number="1688"></td>
        <td id="LC1688" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>inline<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1689" class="blob-num js-line-number" data-line-number="1689"></td>
        <td id="LC1689" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span>(<span class="pl-k">typeof</span> <span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>data-prompt-target<span class="pl-pds">&#39;</span></span>) <span class="pl-k">!==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>undefined<span class="pl-pds">&#39;</span></span> <span class="pl-k">&amp;&amp;</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>#<span class="pl-pds">&#39;</span></span><span class="pl-k">+</span><span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>data-prompt-target<span class="pl-pds">&#39;</span></span>)).<span class="pl-c1">length</span> <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>) {</td>
      </tr>
      <tr>
        <td id="L1690" class="blob-num js-line-number" data-line-number="1690"></td>
        <td id="LC1690" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">prompt</span>.<span class="pl-en">appendTo</span>(<span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>#<span class="pl-pds">&#39;</span></span><span class="pl-k">+</span><span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>data-prompt-target<span class="pl-pds">&#39;</span></span>)));</td>
      </tr>
      <tr>
        <td id="L1691" class="blob-num js-line-number" data-line-number="1691"></td>
        <td id="LC1691" class="blob-code blob-code-inner js-file-line">				} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1692" class="blob-num js-line-number" data-line-number="1692"></td>
        <td id="LC1692" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">field</span>.<span class="pl-c1">after</span>(prompt);</td>
      </tr>
      <tr>
        <td id="L1693" class="blob-num js-line-number" data-line-number="1693"></td>
        <td id="LC1693" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1694" class="blob-num js-line-number" data-line-number="1694"></td>
        <td id="LC1694" class="blob-code blob-code-inner js-file-line">			} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1695" class="blob-num js-line-number" data-line-number="1695"></td>
        <td id="LC1695" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">field</span>.<span class="pl-c1">before</span>(prompt);</td>
      </tr>
      <tr>
        <td id="L1696" class="blob-num js-line-number" data-line-number="1696"></td>
        <td id="LC1696" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1697" class="blob-num js-line-number" data-line-number="1697"></td>
        <td id="LC1697" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1698" class="blob-num js-line-number" data-line-number="1698"></td>
        <td id="LC1698" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> pos <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_calculatePosition</span>(field, prompt, options);</td>
      </tr>
      <tr>
        <td id="L1699" class="blob-num js-line-number" data-line-number="1699"></td>
        <td id="LC1699" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> Support RTL layouts by @yasser_lotfy ( Yasser Lotfy )</span></td>
      </tr>
      <tr>
        <td id="L1700" class="blob-num js-line-number" data-line-number="1700"></td>
        <td id="LC1700" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>body<span class="pl-pds">&#39;</span></span>).<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>rtl<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L1701" class="blob-num js-line-number" data-line-number="1701"></td>
        <td id="LC1701" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">prompt</span>.<span class="pl-en">css</span>({</td>
      </tr>
      <tr>
        <td id="L1702" class="blob-num js-line-number" data-line-number="1702"></td>
        <td id="LC1702" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&#39;</span>position<span class="pl-pds">&#39;</span></span><span class="pl-k">:</span> positionType <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&#39;</span>inline<span class="pl-pds">&#39;</span></span> <span class="pl-k">?</span> <span class="pl-s"><span class="pl-pds">&#39;</span>relative<span class="pl-pds">&#39;</span></span> <span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&#39;</span>absolute<span class="pl-pds">&#39;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1703" class="blob-num js-line-number" data-line-number="1703"></td>
        <td id="LC1703" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>top<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">callerTopPosition</span>,</td>
      </tr>
      <tr>
        <td id="L1704" class="blob-num js-line-number" data-line-number="1704"></td>
        <td id="LC1704" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>left<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>initial<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1705" class="blob-num js-line-number" data-line-number="1705"></td>
        <td id="LC1705" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>right<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">callerleftPosition</span>,</td>
      </tr>
      <tr>
        <td id="L1706" class="blob-num js-line-number" data-line-number="1706"></td>
        <td id="LC1706" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>marginTop<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">marginTopSize</span>,</td>
      </tr>
      <tr>
        <td id="L1707" class="blob-num js-line-number" data-line-number="1707"></td>
        <td id="LC1707" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>opacity<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span></td>
      </tr>
      <tr>
        <td id="L1708" class="blob-num js-line-number" data-line-number="1708"></td>
        <td id="LC1708" class="blob-code blob-code-inner js-file-line">				}).<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>callerField<span class="pl-pds">&quot;</span></span>, field);</td>
      </tr>
      <tr>
        <td id="L1709" class="blob-num js-line-number" data-line-number="1709"></td>
        <td id="LC1709" class="blob-code blob-code-inner js-file-line">		    	} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1710" class="blob-num js-line-number" data-line-number="1710"></td>
        <td id="LC1710" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">prompt</span>.<span class="pl-en">css</span>({</td>
      </tr>
      <tr>
        <td id="L1711" class="blob-num js-line-number" data-line-number="1711"></td>
        <td id="LC1711" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&#39;</span>position<span class="pl-pds">&#39;</span></span><span class="pl-k">:</span> positionType <span class="pl-k">===</span> <span class="pl-s"><span class="pl-pds">&#39;</span>inline<span class="pl-pds">&#39;</span></span> <span class="pl-k">?</span> <span class="pl-s"><span class="pl-pds">&#39;</span>relative<span class="pl-pds">&#39;</span></span> <span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&#39;</span>absolute<span class="pl-pds">&#39;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1712" class="blob-num js-line-number" data-line-number="1712"></td>
        <td id="LC1712" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>top<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">callerTopPosition</span>,</td>
      </tr>
      <tr>
        <td id="L1713" class="blob-num js-line-number" data-line-number="1713"></td>
        <td id="LC1713" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>left<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">callerleftPosition</span>,</td>
      </tr>
      <tr>
        <td id="L1714" class="blob-num js-line-number" data-line-number="1714"></td>
        <td id="LC1714" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>right<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>initial<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1715" class="blob-num js-line-number" data-line-number="1715"></td>
        <td id="LC1715" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>marginTop<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">marginTopSize</span>,</td>
      </tr>
      <tr>
        <td id="L1716" class="blob-num js-line-number" data-line-number="1716"></td>
        <td id="LC1716" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>opacity<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span></td>
      </tr>
      <tr>
        <td id="L1717" class="blob-num js-line-number" data-line-number="1717"></td>
        <td id="LC1717" class="blob-code blob-code-inner js-file-line">				}).<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>callerField<span class="pl-pds">&quot;</span></span>, field);</td>
      </tr>
      <tr>
        <td id="L1718" class="blob-num js-line-number" data-line-number="1718"></td>
        <td id="LC1718" class="blob-code blob-code-inner js-file-line">		    	}</td>
      </tr>
      <tr>
        <td id="L1719" class="blob-num js-line-number" data-line-number="1719"></td>
        <td id="LC1719" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1720" class="blob-num js-line-number" data-line-number="1720"></td>
        <td id="LC1720" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1721" class="blob-num js-line-number" data-line-number="1721"></td>
        <td id="LC1721" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-smi">options</span>.<span class="pl-smi">autoHidePrompt</span>) {</td>
      </tr>
      <tr>
        <td id="L1722" class="blob-num js-line-number" data-line-number="1722"></td>
        <td id="LC1722" class="blob-code blob-code-inner js-file-line">				<span class="pl-c1">setTimeout</span>(<span class="pl-k">function</span>(){</td>
      </tr>
      <tr>
        <td id="L1723" class="blob-num js-line-number" data-line-number="1723"></td>
        <td id="LC1723" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">prompt</span>.<span class="pl-c1">animate</span>({</td>
      </tr>
      <tr>
        <td id="L1724" class="blob-num js-line-number" data-line-number="1724"></td>
        <td id="LC1724" class="blob-code blob-code-inner js-file-line">						<span class="pl-s"><span class="pl-pds">&quot;</span>opacity<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span></td>
      </tr>
      <tr>
        <td id="L1725" class="blob-num js-line-number" data-line-number="1725"></td>
        <td id="LC1725" class="blob-code blob-code-inner js-file-line">					},<span class="pl-k">function</span>(){</td>
      </tr>
      <tr>
        <td id="L1726" class="blob-num js-line-number" data-line-number="1726"></td>
        <td id="LC1726" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">prompt</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.formError<span class="pl-pds">&#39;</span></span>).<span class="pl-c1">remove</span>();</td>
      </tr>
      <tr>
        <td id="L1727" class="blob-num js-line-number" data-line-number="1727"></td>
        <td id="LC1727" class="blob-code blob-code-inner js-file-line">					});</td>
      </tr>
      <tr>
        <td id="L1728" class="blob-num js-line-number" data-line-number="1728"></td>
        <td id="LC1728" class="blob-code blob-code-inner js-file-line">				}, <span class="pl-smi">options</span>.<span class="pl-smi">autoHideDelay</span>);</td>
      </tr>
      <tr>
        <td id="L1729" class="blob-num js-line-number" data-line-number="1729"></td>
        <td id="LC1729" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1730" class="blob-num js-line-number" data-line-number="1730"></td>
        <td id="LC1730" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-smi">prompt</span>.<span class="pl-c1">animate</span>({</td>
      </tr>
      <tr>
        <td id="L1731" class="blob-num js-line-number" data-line-number="1731"></td>
        <td id="LC1731" class="blob-code blob-code-inner js-file-line">				<span class="pl-s"><span class="pl-pds">&quot;</span>opacity<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">0.87</span></td>
      </tr>
      <tr>
        <td id="L1732" class="blob-num js-line-number" data-line-number="1732"></td>
        <td id="LC1732" class="blob-code blob-code-inner js-file-line">			});</td>
      </tr>
      <tr>
        <td id="L1733" class="blob-num js-line-number" data-line-number="1733"></td>
        <td id="LC1733" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1734" class="blob-num js-line-number" data-line-number="1734"></td>
        <td id="LC1734" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1735" class="blob-num js-line-number" data-line-number="1735"></td>
        <td id="LC1735" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Updates the prompt text field - the field for which the prompt</span></td>
      </tr>
      <tr>
        <td id="L1736" class="blob-num js-line-number" data-line-number="1736"></td>
        <td id="LC1736" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1737" class="blob-num js-line-number" data-line-number="1737"></td>
        <td id="LC1737" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">promptText</span> html text to display type</span></td>
      </tr>
      <tr>
        <td id="L1738" class="blob-num js-line-number" data-line-number="1738"></td>
        <td id="LC1738" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">type</span> the type of bubble: &#39;pass&#39; (green), &#39;load&#39; (black) anything else (red)</span></td>
      </tr>
      <tr>
        <td id="L1739" class="blob-num js-line-number" data-line-number="1739"></td>
        <td id="LC1739" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{boolean}</span> <span class="pl-smi">ajaxed</span> - use to mark fields than being validated with ajax</span></td>
      </tr>
      <tr>
        <td id="L1740" class="blob-num js-line-number" data-line-number="1740"></td>
        <td id="LC1740" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span> <span class="pl-smi">options</span> user options</span></td>
      </tr>
      <tr>
        <td id="L1741" class="blob-num js-line-number" data-line-number="1741"></td>
        <td id="LC1741" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1742" class="blob-num js-line-number" data-line-number="1742"></td>
        <td id="LC1742" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_updatePrompt</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">prompt</span>, <span class="pl-smi">promptText</span>, <span class="pl-smi">type</span>, <span class="pl-smi">ajaxed</span>, <span class="pl-smi">options</span>, <span class="pl-smi">noAnimation</span>) {</td>
      </tr>
      <tr>
        <td id="L1743" class="blob-num js-line-number" data-line-number="1743"></td>
        <td id="LC1743" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1744" class="blob-num js-line-number" data-line-number="1744"></td>
        <td id="LC1744" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (prompt) {</td>
      </tr>
      <tr>
        <td id="L1745" class="blob-num js-line-number" data-line-number="1745"></td>
        <td id="LC1745" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-k">typeof</span> type <span class="pl-k">!==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>undefined<span class="pl-pds">&quot;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1746" class="blob-num js-line-number" data-line-number="1746"></td>
        <td id="LC1746" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (type <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>pass<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1747" class="blob-num js-line-number" data-line-number="1747"></td>
        <td id="LC1747" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>greenPopup<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1748" class="blob-num js-line-number" data-line-number="1748"></td>
        <td id="LC1748" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1749" class="blob-num js-line-number" data-line-number="1749"></td>
        <td id="LC1749" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">prompt</span>.<span class="pl-en">removeClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>greenPopup<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1750" class="blob-num js-line-number" data-line-number="1750"></td>
        <td id="LC1750" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1751" class="blob-num js-line-number" data-line-number="1751"></td>
        <td id="LC1751" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (type <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>load<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1752" class="blob-num js-line-number" data-line-number="1752"></td>
        <td id="LC1752" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>blackPopup<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1753" class="blob-num js-line-number" data-line-number="1753"></td>
        <td id="LC1753" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1754" class="blob-num js-line-number" data-line-number="1754"></td>
        <td id="LC1754" class="blob-code blob-code-inner js-file-line">						<span class="pl-smi">prompt</span>.<span class="pl-en">removeClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>blackPopup<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1755" class="blob-num js-line-number" data-line-number="1755"></td>
        <td id="LC1755" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1756" class="blob-num js-line-number" data-line-number="1756"></td>
        <td id="LC1756" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (ajaxed)</td>
      </tr>
      <tr>
        <td id="L1757" class="blob-num js-line-number" data-line-number="1757"></td>
        <td id="LC1757" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">prompt</span>.<span class="pl-en">addClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>ajaxed<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1758" class="blob-num js-line-number" data-line-number="1758"></td>
        <td id="LC1758" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1759" class="blob-num js-line-number" data-line-number="1759"></td>
        <td id="LC1759" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">prompt</span>.<span class="pl-en">removeClass</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>ajaxed<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1760" class="blob-num js-line-number" data-line-number="1760"></td>
        <td id="LC1760" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1761" class="blob-num js-line-number" data-line-number="1761"></td>
        <td id="LC1761" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">prompt</span>.<span class="pl-c1">find</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>.formErrorContent<span class="pl-pds">&quot;</span></span>).<span class="pl-en">html</span>(promptText);</td>
      </tr>
      <tr>
        <td id="L1762" class="blob-num js-line-number" data-line-number="1762"></td>
        <td id="LC1762" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1763" class="blob-num js-line-number" data-line-number="1763"></td>
        <td id="LC1763" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> pos <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_calculatePosition</span>(field, prompt, options);</td>
      </tr>
      <tr>
        <td id="L1764" class="blob-num js-line-number" data-line-number="1764"></td>
        <td id="LC1764" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span> Support RTL layouts by @yasser_lotfy ( Yasser Lotfy )</span></td>
      </tr>
      <tr>
        <td id="L1765" class="blob-num js-line-number" data-line-number="1765"></td>
        <td id="LC1765" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>body<span class="pl-pds">&#39;</span></span>).<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>rtl<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L1766" class="blob-num js-line-number" data-line-number="1766"></td>
        <td id="LC1766" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> css <span class="pl-k">=</span> {<span class="pl-s"><span class="pl-pds">&quot;</span>top<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">callerTopPosition</span>,</td>
      </tr>
      <tr>
        <td id="L1767" class="blob-num js-line-number" data-line-number="1767"></td>
        <td id="LC1767" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>left<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>initial<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1768" class="blob-num js-line-number" data-line-number="1768"></td>
        <td id="LC1768" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>right<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">callerleftPosition</span>,</td>
      </tr>
      <tr>
        <td id="L1769" class="blob-num js-line-number" data-line-number="1769"></td>
        <td id="LC1769" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>marginTop<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">marginTopSize</span>,</td>
      </tr>
      <tr>
        <td id="L1770" class="blob-num js-line-number" data-line-number="1770"></td>
        <td id="LC1770" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>opacity<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">0.87</span>};</td>
      </tr>
      <tr>
        <td id="L1771" class="blob-num js-line-number" data-line-number="1771"></td>
        <td id="LC1771" class="blob-code blob-code-inner js-file-line">				} <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L1772" class="blob-num js-line-number" data-line-number="1772"></td>
        <td id="LC1772" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">var</span> css <span class="pl-k">=</span> {<span class="pl-s"><span class="pl-pds">&quot;</span>top<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">callerTopPosition</span>,</td>
      </tr>
      <tr>
        <td id="L1773" class="blob-num js-line-number" data-line-number="1773"></td>
        <td id="LC1773" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>left<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">callerleftPosition</span>,</td>
      </tr>
      <tr>
        <td id="L1774" class="blob-num js-line-number" data-line-number="1774"></td>
        <td id="LC1774" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>right<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>initial<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1775" class="blob-num js-line-number" data-line-number="1775"></td>
        <td id="LC1775" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>marginTop<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-smi">pos</span>.<span class="pl-smi">marginTopSize</span>,</td>
      </tr>
      <tr>
        <td id="L1776" class="blob-num js-line-number" data-line-number="1776"></td>
        <td id="LC1776" class="blob-code blob-code-inner js-file-line">					<span class="pl-s"><span class="pl-pds">&quot;</span>opacity<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">0.87</span>};</td>
      </tr>
      <tr>
        <td id="L1777" class="blob-num js-line-number" data-line-number="1777"></td>
        <td id="LC1777" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L1778" class="blob-num js-line-number" data-line-number="1778"></td>
        <td id="LC1778" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1779" class="blob-num js-line-number" data-line-number="1779"></td>
        <td id="LC1779" class="blob-code blob-code-inner js-file-line">                <span class="pl-smi">prompt</span>.<span class="pl-en">css</span>({</td>
      </tr>
      <tr>
        <td id="L1780" class="blob-num js-line-number" data-line-number="1780"></td>
        <td id="LC1780" class="blob-code blob-code-inner js-file-line">                    <span class="pl-s"><span class="pl-pds">&quot;</span>opacity<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span>,</td>
      </tr>
      <tr>
        <td id="L1781" class="blob-num js-line-number" data-line-number="1781"></td>
        <td id="LC1781" class="blob-code blob-code-inner js-file-line">                    <span class="pl-s"><span class="pl-pds">&quot;</span>display<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>block<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1782" class="blob-num js-line-number" data-line-number="1782"></td>
        <td id="LC1782" class="blob-code blob-code-inner js-file-line">                });</td>
      </tr>
      <tr>
        <td id="L1783" class="blob-num js-line-number" data-line-number="1783"></td>
        <td id="LC1783" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1784" class="blob-num js-line-number" data-line-number="1784"></td>
        <td id="LC1784" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (noAnimation)</td>
      </tr>
      <tr>
        <td id="L1785" class="blob-num js-line-number" data-line-number="1785"></td>
        <td id="LC1785" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">prompt</span>.<span class="pl-en">css</span>(css);</td>
      </tr>
      <tr>
        <td id="L1786" class="blob-num js-line-number" data-line-number="1786"></td>
        <td id="LC1786" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1787" class="blob-num js-line-number" data-line-number="1787"></td>
        <td id="LC1787" class="blob-code blob-code-inner js-file-line">					<span class="pl-smi">prompt</span>.<span class="pl-c1">animate</span>(css);</td>
      </tr>
      <tr>
        <td id="L1788" class="blob-num js-line-number" data-line-number="1788"></td>
        <td id="LC1788" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L1789" class="blob-num js-line-number" data-line-number="1789"></td>
        <td id="LC1789" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1790" class="blob-num js-line-number" data-line-number="1790"></td>
        <td id="LC1790" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1791" class="blob-num js-line-number" data-line-number="1791"></td>
        <td id="LC1791" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Closes the prompt associated with the given field</span></td>
      </tr>
      <tr>
        <td id="L1792" class="blob-num js-line-number" data-line-number="1792"></td>
        <td id="LC1792" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1793" class="blob-num js-line-number" data-line-number="1793"></td>
        <td id="LC1793" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L1794" class="blob-num js-line-number" data-line-number="1794"></td>
        <td id="LC1794" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            field</span></td>
      </tr>
      <tr>
        <td id="L1795" class="blob-num js-line-number" data-line-number="1795"></td>
        <td id="LC1795" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1796" class="blob-num js-line-number" data-line-number="1796"></td>
        <td id="LC1796" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">_closePrompt</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>) {</td>
      </tr>
      <tr>
        <td id="L1797" class="blob-num js-line-number" data-line-number="1797"></td>
        <td id="LC1797" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> prompt <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getPrompt</span>(field);</td>
      </tr>
      <tr>
        <td id="L1798" class="blob-num js-line-number" data-line-number="1798"></td>
        <td id="LC1798" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (prompt)</td>
      </tr>
      <tr>
        <td id="L1799" class="blob-num js-line-number" data-line-number="1799"></td>
        <td id="LC1799" class="blob-code blob-code-inner js-file-line">				 <span class="pl-smi">prompt</span>.<span class="pl-en">fadeTo</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>fast<span class="pl-pds">&quot;</span></span>, <span class="pl-c1">0</span>, <span class="pl-k">function</span>() {</td>
      </tr>
      <tr>
        <td id="L1800" class="blob-num js-line-number" data-line-number="1800"></td>
        <td id="LC1800" class="blob-code blob-code-inner js-file-line">					 <span class="pl-smi">prompt</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>.formError<span class="pl-pds">&#39;</span></span>).<span class="pl-c1">remove</span>();</td>
      </tr>
      <tr>
        <td id="L1801" class="blob-num js-line-number" data-line-number="1801"></td>
        <td id="LC1801" class="blob-code blob-code-inner js-file-line">				 });</td>
      </tr>
      <tr>
        <td id="L1802" class="blob-num js-line-number" data-line-number="1802"></td>
        <td id="LC1802" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L1803" class="blob-num js-line-number" data-line-number="1803"></td>
        <td id="LC1803" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">closePrompt</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>) {</td>
      </tr>
      <tr>
        <td id="L1804" class="blob-num js-line-number" data-line-number="1804"></td>
        <td id="LC1804" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">return</span> <span class="pl-smi">methods</span>.<span class="pl-en">_closePrompt</span>(field);</td>
      </tr>
      <tr>
        <td id="L1805" class="blob-num js-line-number" data-line-number="1805"></td>
        <td id="LC1805" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L1806" class="blob-num js-line-number" data-line-number="1806"></td>
        <td id="LC1806" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1807" class="blob-num js-line-number" data-line-number="1807"></td>
        <td id="LC1807" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Returns the error prompt matching the field if any</span></td>
      </tr>
      <tr>
        <td id="L1808" class="blob-num js-line-number" data-line-number="1808"></td>
        <td id="LC1808" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1809" class="blob-num js-line-number" data-line-number="1809"></td>
        <td id="LC1809" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L1810" class="blob-num js-line-number" data-line-number="1810"></td>
        <td id="LC1810" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            field</span></td>
      </tr>
      <tr>
        <td id="L1811" class="blob-num js-line-number" data-line-number="1811"></td>
        <td id="LC1811" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> undefined or the error prompt (jqObject)</span></td>
      </tr>
      <tr>
        <td id="L1812" class="blob-num js-line-number" data-line-number="1812"></td>
        <td id="LC1812" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1813" class="blob-num js-line-number" data-line-number="1813"></td>
        <td id="LC1813" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_getPrompt</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>) {</td>
      </tr>
      <tr>
        <td id="L1814" class="blob-num js-line-number" data-line-number="1814"></td>
        <td id="LC1814" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> formId <span class="pl-k">=</span> <span class="pl-en">$</span>(field).<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form, .validationEngineContainer<span class="pl-pds">&#39;</span></span>).<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>id<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1815" class="blob-num js-line-number" data-line-number="1815"></td>
        <td id="LC1815" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> className <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getClassName</span>(<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>)) <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>formError<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L1816" class="blob-num js-line-number" data-line-number="1816"></td>
        <td id="LC1816" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">var</span> match <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>.<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> <span class="pl-smi">methods</span>.<span class="pl-en">_escapeExpression</span>(className) <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&#39;</span>.parentForm<span class="pl-pds">&#39;</span></span> <span class="pl-k">+</span> <span class="pl-smi">methods</span>.<span class="pl-en">_getClassName</span>(formId))[<span class="pl-c1">0</span>];</td>
      </tr>
      <tr>
        <td id="L1817" class="blob-num js-line-number" data-line-number="1817"></td>
        <td id="LC1817" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (match)</td>
      </tr>
      <tr>
        <td id="L1818" class="blob-num js-line-number" data-line-number="1818"></td>
        <td id="LC1818" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-en">$</span>(match);</td>
      </tr>
      <tr>
        <td id="L1819" class="blob-num js-line-number" data-line-number="1819"></td>
        <td id="LC1819" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1820" class="blob-num js-line-number" data-line-number="1820"></td>
        <td id="LC1820" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1821" class="blob-num js-line-number" data-line-number="1821"></td>
        <td id="LC1821" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * Returns the escapade classname</span></td>
      </tr>
      <tr>
        <td id="L1822" class="blob-num js-line-number" data-line-number="1822"></td>
        <td id="LC1822" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  *</span></td>
      </tr>
      <tr>
        <td id="L1823" class="blob-num js-line-number" data-line-number="1823"></td>
        <td id="LC1823" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  * <span class="pl-k">@param</span> <span class="pl-en">{selector}</span></span></td>
      </tr>
      <tr>
        <td id="L1824" class="blob-num js-line-number" data-line-number="1824"></td>
        <td id="LC1824" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  *            className</span></td>
      </tr>
      <tr>
        <td id="L1825" class="blob-num js-line-number" data-line-number="1825"></td>
        <td id="LC1825" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		  <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1826" class="blob-num js-line-number" data-line-number="1826"></td>
        <td id="LC1826" class="blob-code blob-code-inner js-file-line">		  <span class="pl-en">_escapeExpression</span><span class="pl-k">:</span> <span class="pl-k">function</span> (<span class="pl-smi">selector</span>) {</td>
      </tr>
      <tr>
        <td id="L1827" class="blob-num js-line-number" data-line-number="1827"></td>
        <td id="LC1827" class="blob-code blob-code-inner js-file-line">			  <span class="pl-k">return</span> <span class="pl-smi">selector</span>.<span class="pl-c1">replace</span>(<span class="pl-sr"><span class="pl-pds">/</span>(<span class="pl-c1">[#;&amp;,<span class="pl-cce">\.\+\*\~</span>&#39;:&quot;<span class="pl-cce">\!\^</span>$<span class="pl-cce">\[\]\(\)</span>=&gt;<span class="pl-cce">\|</span>]</span>)<span class="pl-pds">/</span>g</span>, <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>$1<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1828" class="blob-num js-line-number" data-line-number="1828"></td>
        <td id="LC1828" class="blob-code blob-code-inner js-file-line">		  },</td>
      </tr>
      <tr>
        <td id="L1829" class="blob-num js-line-number" data-line-number="1829"></td>
        <td id="LC1829" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1830" class="blob-num js-line-number" data-line-number="1830"></td>
        <td id="LC1830" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 * returns true if we are in a RTLed document</span></td>
      </tr>
      <tr>
        <td id="L1831" class="blob-num js-line-number" data-line-number="1831"></td>
        <td id="LC1831" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 *</span></td>
      </tr>
      <tr>
        <td id="L1832" class="blob-num js-line-number" data-line-number="1832"></td>
        <td id="LC1832" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 * <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L1833" class="blob-num js-line-number" data-line-number="1833"></td>
        <td id="LC1833" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1834" class="blob-num js-line-number" data-line-number="1834"></td>
        <td id="LC1834" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">isRTL</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>)</td>
      </tr>
      <tr>
        <td id="L1835" class="blob-num js-line-number" data-line-number="1835"></td>
        <td id="LC1835" class="blob-code blob-code-inner js-file-line">		{</td>
      </tr>
      <tr>
        <td id="L1836" class="blob-num js-line-number" data-line-number="1836"></td>
        <td id="LC1836" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> $document <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">document</span>);</td>
      </tr>
      <tr>
        <td id="L1837" class="blob-num js-line-number" data-line-number="1837"></td>
        <td id="LC1837" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> $body <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>body<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1838" class="blob-num js-line-number" data-line-number="1838"></td>
        <td id="LC1838" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> rtl <span class="pl-k">=</span></td>
      </tr>
      <tr>
        <td id="L1839" class="blob-num js-line-number" data-line-number="1839"></td>
        <td id="LC1839" class="blob-code blob-code-inner js-file-line">				(field <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">field</span>.<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>rtl<span class="pl-pds">&#39;</span></span>)) <span class="pl-k">||</span></td>
      </tr>
      <tr>
        <td id="L1840" class="blob-num js-line-number" data-line-number="1840"></td>
        <td id="LC1840" class="blob-code blob-code-inner js-file-line">				(field <span class="pl-k">&amp;&amp;</span> (<span class="pl-smi">field</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>dir<span class="pl-pds">&#39;</span></span>) <span class="pl-k">||</span> <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>).<span class="pl-c1">toLowerCase</span>()<span class="pl-k">===</span><span class="pl-s"><span class="pl-pds">&#39;</span>rtl<span class="pl-pds">&#39;</span></span>) <span class="pl-k">||</span></td>
      </tr>
      <tr>
        <td id="L1841" class="blob-num js-line-number" data-line-number="1841"></td>
        <td id="LC1841" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">$document</span>.<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>rtl<span class="pl-pds">&#39;</span></span>) <span class="pl-k">||</span></td>
      </tr>
      <tr>
        <td id="L1842" class="blob-num js-line-number" data-line-number="1842"></td>
        <td id="LC1842" class="blob-code blob-code-inner js-file-line">				(<span class="pl-smi">$document</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>dir<span class="pl-pds">&#39;</span></span>) <span class="pl-k">||</span> <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>).<span class="pl-c1">toLowerCase</span>()<span class="pl-k">===</span><span class="pl-s"><span class="pl-pds">&#39;</span>rtl<span class="pl-pds">&#39;</span></span> <span class="pl-k">||</span></td>
      </tr>
      <tr>
        <td id="L1843" class="blob-num js-line-number" data-line-number="1843"></td>
        <td id="LC1843" class="blob-code blob-code-inner js-file-line">				<span class="pl-smi">$body</span>.<span class="pl-en">hasClass</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>rtl<span class="pl-pds">&#39;</span></span>) <span class="pl-k">||</span></td>
      </tr>
      <tr>
        <td id="L1844" class="blob-num js-line-number" data-line-number="1844"></td>
        <td id="LC1844" class="blob-code blob-code-inner js-file-line">				(<span class="pl-smi">$body</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>dir<span class="pl-pds">&#39;</span></span>) <span class="pl-k">||</span> <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>).<span class="pl-c1">toLowerCase</span>()<span class="pl-k">===</span><span class="pl-s"><span class="pl-pds">&#39;</span>rtl<span class="pl-pds">&#39;</span></span>;</td>
      </tr>
      <tr>
        <td id="L1845" class="blob-num js-line-number" data-line-number="1845"></td>
        <td id="LC1845" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-c1">Boolean</span>(rtl);</td>
      </tr>
      <tr>
        <td id="L1846" class="blob-num js-line-number" data-line-number="1846"></td>
        <td id="LC1846" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1847" class="blob-num js-line-number" data-line-number="1847"></td>
        <td id="LC1847" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1848" class="blob-num js-line-number" data-line-number="1848"></td>
        <td id="LC1848" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Calculates prompt position</span></td>
      </tr>
      <tr>
        <td id="L1849" class="blob-num js-line-number" data-line-number="1849"></td>
        <td id="LC1849" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1850" class="blob-num js-line-number" data-line-number="1850"></td>
        <td id="LC1850" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L1851" class="blob-num js-line-number" data-line-number="1851"></td>
        <td id="LC1851" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            field</span></td>
      </tr>
      <tr>
        <td id="L1852" class="blob-num js-line-number" data-line-number="1852"></td>
        <td id="LC1852" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L1853" class="blob-num js-line-number" data-line-number="1853"></td>
        <td id="LC1853" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            the prompt</span></td>
      </tr>
      <tr>
        <td id="L1854" class="blob-num js-line-number" data-line-number="1854"></td>
        <td id="LC1854" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1855" class="blob-num js-line-number" data-line-number="1855"></td>
        <td id="LC1855" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            options</span></td>
      </tr>
      <tr>
        <td id="L1856" class="blob-num js-line-number" data-line-number="1856"></td>
        <td id="LC1856" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> positions</span></td>
      </tr>
      <tr>
        <td id="L1857" class="blob-num js-line-number" data-line-number="1857"></td>
        <td id="LC1857" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1858" class="blob-num js-line-number" data-line-number="1858"></td>
        <td id="LC1858" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_calculatePosition</span><span class="pl-k">:</span> <span class="pl-k">function</span> (<span class="pl-smi">field</span>, <span class="pl-smi">promptElmt</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1859" class="blob-num js-line-number" data-line-number="1859"></td>
        <td id="LC1859" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1860" class="blob-num js-line-number" data-line-number="1860"></td>
        <td id="LC1860" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> promptTopPosition, promptleftPosition, marginTopSize;</td>
      </tr>
      <tr>
        <td id="L1861" class="blob-num js-line-number" data-line-number="1861"></td>
        <td id="LC1861" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fieldWidth 	<span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-c1">width</span>();</td>
      </tr>
      <tr>
        <td id="L1862" class="blob-num js-line-number" data-line-number="1862"></td>
        <td id="LC1862" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fieldLeft 	<span class="pl-k">=</span> <span class="pl-smi">field</span>.<span class="pl-en">position</span>().<span class="pl-c1">left</span>;</td>
      </tr>
      <tr>
        <td id="L1863" class="blob-num js-line-number" data-line-number="1863"></td>
        <td id="LC1863" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fieldTop 	<span class="pl-k">=</span>  <span class="pl-smi">field</span>.<span class="pl-en">position</span>().<span class="pl-c1">top</span>;</td>
      </tr>
      <tr>
        <td id="L1864" class="blob-num js-line-number" data-line-number="1864"></td>
        <td id="LC1864" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> fieldHeight 	<span class="pl-k">=</span>  <span class="pl-smi">field</span>.<span class="pl-c1">height</span>();</td>
      </tr>
      <tr>
        <td id="L1865" class="blob-num js-line-number" data-line-number="1865"></td>
        <td id="LC1865" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> promptHeight <span class="pl-k">=</span> <span class="pl-smi">promptElmt</span>.<span class="pl-c1">height</span>();</td>
      </tr>
      <tr>
        <td id="L1866" class="blob-num js-line-number" data-line-number="1866"></td>
        <td id="LC1866" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1867" class="blob-num js-line-number" data-line-number="1867"></td>
        <td id="LC1867" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1868" class="blob-num js-line-number" data-line-number="1868"></td>
        <td id="LC1868" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> is the form contained in an overflown container?</span></td>
      </tr>
      <tr>
        <td id="L1869" class="blob-num js-line-number" data-line-number="1869"></td>
        <td id="LC1869" class="blob-code blob-code-inner js-file-line">			promptTopPosition <span class="pl-k">=</span> promptleftPosition <span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1870" class="blob-num js-line-number" data-line-number="1870"></td>
        <td id="LC1870" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span> compensation for the arrow</span></td>
      </tr>
      <tr>
        <td id="L1871" class="blob-num js-line-number" data-line-number="1871"></td>
        <td id="LC1871" class="blob-code blob-code-inner js-file-line">			marginTopSize <span class="pl-k">=</span> <span class="pl-k">-</span>promptHeight;</td>
      </tr>
      <tr>
        <td id="L1872" class="blob-num js-line-number" data-line-number="1872"></td>
        <td id="LC1872" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1873" class="blob-num js-line-number" data-line-number="1873"></td>
        <td id="LC1873" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1874" class="blob-num js-line-number" data-line-number="1874"></td>
        <td id="LC1874" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>prompt positioning adjustment support</span></td>
      </tr>
      <tr>
        <td id="L1875" class="blob-num js-line-number" data-line-number="1875"></td>
        <td id="LC1875" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>now you can adjust prompt position</span></td>
      </tr>
      <tr>
        <td id="L1876" class="blob-num js-line-number" data-line-number="1876"></td>
        <td id="LC1876" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>usage: positionType:Xshift,Yshift</span></td>
      </tr>
      <tr>
        <td id="L1877" class="blob-num js-line-number" data-line-number="1877"></td>
        <td id="LC1877" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>for example:</span></td>
      </tr>
      <tr>
        <td id="L1878" class="blob-num js-line-number" data-line-number="1878"></td>
        <td id="LC1878" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>   bottomLeft:+20 means bottomLeft position shifted by 20 pixels right horizontally</span></td>
      </tr>
      <tr>
        <td id="L1879" class="blob-num js-line-number" data-line-number="1879"></td>
        <td id="LC1879" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>   topRight:20, -15 means topRight position shifted by 20 pixels to right and 15 pixels to top</span></td>
      </tr>
      <tr>
        <td id="L1880" class="blob-num js-line-number" data-line-number="1880"></td>
        <td id="LC1880" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>You can use +pixels, - pixels. If no sign is provided than + is default.</span></td>
      </tr>
      <tr>
        <td id="L1881" class="blob-num js-line-number" data-line-number="1881"></td>
        <td id="LC1881" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> positionType<span class="pl-k">=</span><span class="pl-smi">field</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>promptPosition<span class="pl-pds">&quot;</span></span>) <span class="pl-k">||</span> <span class="pl-smi">options</span>.<span class="pl-smi">promptPosition</span>;</td>
      </tr>
      <tr>
        <td id="L1882" class="blob-num js-line-number" data-line-number="1882"></td>
        <td id="LC1882" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> shift1<span class="pl-k">=</span><span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L1883" class="blob-num js-line-number" data-line-number="1883"></td>
        <td id="LC1883" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> shift2<span class="pl-k">=</span><span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L1884" class="blob-num js-line-number" data-line-number="1884"></td>
        <td id="LC1884" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> shiftX<span class="pl-k">=</span><span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1885" class="blob-num js-line-number" data-line-number="1885"></td>
        <td id="LC1885" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> shiftY<span class="pl-k">=</span><span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1886" class="blob-num js-line-number" data-line-number="1886"></td>
        <td id="LC1886" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">if</span> (<span class="pl-k">typeof</span>(positionType)<span class="pl-k">==</span><span class="pl-s"><span class="pl-pds">&#39;</span>string<span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L1887" class="blob-num js-line-number" data-line-number="1887"></td>
        <td id="LC1887" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">//</span>do we have any position adjustments ?</span></td>
      </tr>
      <tr>
        <td id="L1888" class="blob-num js-line-number" data-line-number="1888"></td>
        <td id="LC1888" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">positionType</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span>)<span class="pl-k">!=</span><span class="pl-k">-</span><span class="pl-c1">1</span>) {</td>
      </tr>
      <tr>
        <td id="L1889" class="blob-num js-line-number" data-line-number="1889"></td>
        <td id="LC1889" class="blob-code blob-code-inner js-file-line">					shift1<span class="pl-k">=</span><span class="pl-smi">positionType</span>.<span class="pl-c1">substring</span>(<span class="pl-smi">positionType</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span>)<span class="pl-k">+</span><span class="pl-c1">1</span>);</td>
      </tr>
      <tr>
        <td id="L1890" class="blob-num js-line-number" data-line-number="1890"></td>
        <td id="LC1890" class="blob-code blob-code-inner js-file-line">					positionType<span class="pl-k">=</span><span class="pl-smi">positionType</span>.<span class="pl-c1">substring</span>(<span class="pl-c1">0</span>,<span class="pl-smi">positionType</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L1891" class="blob-num js-line-number" data-line-number="1891"></td>
        <td id="LC1891" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1892" class="blob-num js-line-number" data-line-number="1892"></td>
        <td id="LC1892" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span>if any advanced positioning will be needed (percents or something else) - parser should be added here</span></td>
      </tr>
      <tr>
        <td id="L1893" class="blob-num js-line-number" data-line-number="1893"></td>
        <td id="LC1893" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span>for now we use simple parseInt()</span></td>
      </tr>
      <tr>
        <td id="L1894" class="blob-num js-line-number" data-line-number="1894"></td>
        <td id="LC1894" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1895" class="blob-num js-line-number" data-line-number="1895"></td>
        <td id="LC1895" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">//</span>do we have second parameter?</span></td>
      </tr>
      <tr>
        <td id="L1896" class="blob-num js-line-number" data-line-number="1896"></td>
        <td id="LC1896" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-smi">shift1</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>,<span class="pl-pds">&quot;</span></span>) <span class="pl-k">!=</span><span class="pl-k">-</span><span class="pl-c1">1</span>) {</td>
      </tr>
      <tr>
        <td id="L1897" class="blob-num js-line-number" data-line-number="1897"></td>
        <td id="LC1897" class="blob-code blob-code-inner js-file-line">						shift2<span class="pl-k">=</span><span class="pl-smi">shift1</span>.<span class="pl-c1">substring</span>(<span class="pl-smi">shift1</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>,<span class="pl-pds">&quot;</span></span>) <span class="pl-k">+</span><span class="pl-c1">1</span>);</td>
      </tr>
      <tr>
        <td id="L1898" class="blob-num js-line-number" data-line-number="1898"></td>
        <td id="LC1898" class="blob-code blob-code-inner js-file-line">						shift1<span class="pl-k">=</span><span class="pl-smi">shift1</span>.<span class="pl-c1">substring</span>(<span class="pl-c1">0</span>,<span class="pl-smi">shift1</span>.<span class="pl-c1">indexOf</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>,<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L1899" class="blob-num js-line-number" data-line-number="1899"></td>
        <td id="LC1899" class="blob-code blob-code-inner js-file-line">						shiftY<span class="pl-k">=</span><span class="pl-c1">parseInt</span>(shift2);</td>
      </tr>
      <tr>
        <td id="L1900" class="blob-num js-line-number" data-line-number="1900"></td>
        <td id="LC1900" class="blob-code blob-code-inner js-file-line">						<span class="pl-k">if</span> (<span class="pl-c1">isNaN</span>(shiftY)) shiftY<span class="pl-k">=</span><span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1901" class="blob-num js-line-number" data-line-number="1901"></td>
        <td id="LC1901" class="blob-code blob-code-inner js-file-line">					};</td>
      </tr>
      <tr>
        <td id="L1902" class="blob-num js-line-number" data-line-number="1902"></td>
        <td id="LC1902" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1903" class="blob-num js-line-number" data-line-number="1903"></td>
        <td id="LC1903" class="blob-code blob-code-inner js-file-line">					shiftX<span class="pl-k">=</span><span class="pl-c1">parseInt</span>(shift1);</td>
      </tr>
      <tr>
        <td id="L1904" class="blob-num js-line-number" data-line-number="1904"></td>
        <td id="LC1904" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">if</span> (<span class="pl-c1">isNaN</span>(shift1)) shift1<span class="pl-k">=</span><span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1905" class="blob-num js-line-number" data-line-number="1905"></td>
        <td id="LC1905" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1906" class="blob-num js-line-number" data-line-number="1906"></td>
        <td id="LC1906" class="blob-code blob-code-inner js-file-line">				};</td>
      </tr>
      <tr>
        <td id="L1907" class="blob-num js-line-number" data-line-number="1907"></td>
        <td id="LC1907" class="blob-code blob-code-inner js-file-line">			};</td>
      </tr>
      <tr>
        <td id="L1908" class="blob-num js-line-number" data-line-number="1908"></td>
        <td id="LC1908" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1909" class="blob-num js-line-number" data-line-number="1909"></td>
        <td id="LC1909" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1910" class="blob-num js-line-number" data-line-number="1910"></td>
        <td id="LC1910" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">switch</span> (positionType) {</td>
      </tr>
      <tr>
        <td id="L1911" class="blob-num js-line-number" data-line-number="1911"></td>
        <td id="LC1911" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">default</span>:</td>
      </tr>
      <tr>
        <td id="L1912" class="blob-num js-line-number" data-line-number="1912"></td>
        <td id="LC1912" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>topRight<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1913" class="blob-num js-line-number" data-line-number="1913"></td>
        <td id="LC1913" class="blob-code blob-code-inner js-file-line">					promptleftPosition <span class="pl-k">+=</span>  fieldLeft <span class="pl-k">+</span> fieldWidth <span class="pl-k">-</span> <span class="pl-c1">27</span>;</td>
      </tr>
      <tr>
        <td id="L1914" class="blob-num js-line-number" data-line-number="1914"></td>
        <td id="LC1914" class="blob-code blob-code-inner js-file-line">					promptTopPosition <span class="pl-k">+=</span>  fieldTop;</td>
      </tr>
      <tr>
        <td id="L1915" class="blob-num js-line-number" data-line-number="1915"></td>
        <td id="LC1915" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1916" class="blob-num js-line-number" data-line-number="1916"></td>
        <td id="LC1916" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1917" class="blob-num js-line-number" data-line-number="1917"></td>
        <td id="LC1917" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>topLeft<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1918" class="blob-num js-line-number" data-line-number="1918"></td>
        <td id="LC1918" class="blob-code blob-code-inner js-file-line">					promptTopPosition <span class="pl-k">+=</span>  fieldTop;</td>
      </tr>
      <tr>
        <td id="L1919" class="blob-num js-line-number" data-line-number="1919"></td>
        <td id="LC1919" class="blob-code blob-code-inner js-file-line">					promptleftPosition <span class="pl-k">+=</span> fieldLeft;</td>
      </tr>
      <tr>
        <td id="L1920" class="blob-num js-line-number" data-line-number="1920"></td>
        <td id="LC1920" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1921" class="blob-num js-line-number" data-line-number="1921"></td>
        <td id="LC1921" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1922" class="blob-num js-line-number" data-line-number="1922"></td>
        <td id="LC1922" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>centerRight<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1923" class="blob-num js-line-number" data-line-number="1923"></td>
        <td id="LC1923" class="blob-code blob-code-inner js-file-line">					promptTopPosition <span class="pl-k">=</span> fieldTop<span class="pl-k">+</span><span class="pl-c1">4</span>;</td>
      </tr>
      <tr>
        <td id="L1924" class="blob-num js-line-number" data-line-number="1924"></td>
        <td id="LC1924" class="blob-code blob-code-inner js-file-line">					marginTopSize <span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1925" class="blob-num js-line-number" data-line-number="1925"></td>
        <td id="LC1925" class="blob-code blob-code-inner js-file-line">					promptleftPosition<span class="pl-k">=</span> fieldLeft <span class="pl-k">+</span> <span class="pl-smi">field</span>.<span class="pl-c1">outerWidth</span>(<span class="pl-c1">true</span>)<span class="pl-k">+</span><span class="pl-c1">5</span>;</td>
      </tr>
      <tr>
        <td id="L1926" class="blob-num js-line-number" data-line-number="1926"></td>
        <td id="LC1926" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1927" class="blob-num js-line-number" data-line-number="1927"></td>
        <td id="LC1927" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>centerLeft<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1928" class="blob-num js-line-number" data-line-number="1928"></td>
        <td id="LC1928" class="blob-code blob-code-inner js-file-line">					promptleftPosition <span class="pl-k">=</span> fieldLeft <span class="pl-k">-</span> (<span class="pl-smi">promptElmt</span>.<span class="pl-c1">width</span>() <span class="pl-k">+</span> <span class="pl-c1">2</span>);</td>
      </tr>
      <tr>
        <td id="L1929" class="blob-num js-line-number" data-line-number="1929"></td>
        <td id="LC1929" class="blob-code blob-code-inner js-file-line">					promptTopPosition <span class="pl-k">=</span> fieldTop<span class="pl-k">+</span><span class="pl-c1">4</span>;</td>
      </tr>
      <tr>
        <td id="L1930" class="blob-num js-line-number" data-line-number="1930"></td>
        <td id="LC1930" class="blob-code blob-code-inner js-file-line">					marginTopSize <span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1931" class="blob-num js-line-number" data-line-number="1931"></td>
        <td id="LC1931" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1932" class="blob-num js-line-number" data-line-number="1932"></td>
        <td id="LC1932" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1933" class="blob-num js-line-number" data-line-number="1933"></td>
        <td id="LC1933" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1934" class="blob-num js-line-number" data-line-number="1934"></td>
        <td id="LC1934" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>bottomLeft<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1935" class="blob-num js-line-number" data-line-number="1935"></td>
        <td id="LC1935" class="blob-code blob-code-inner js-file-line">					promptTopPosition <span class="pl-k">=</span> fieldTop <span class="pl-k">+</span> <span class="pl-smi">field</span>.<span class="pl-c1">height</span>() <span class="pl-k">+</span> <span class="pl-c1">5</span>;</td>
      </tr>
      <tr>
        <td id="L1936" class="blob-num js-line-number" data-line-number="1936"></td>
        <td id="LC1936" class="blob-code blob-code-inner js-file-line">					marginTopSize <span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1937" class="blob-num js-line-number" data-line-number="1937"></td>
        <td id="LC1937" class="blob-code blob-code-inner js-file-line">					promptleftPosition <span class="pl-k">=</span> fieldLeft;</td>
      </tr>
      <tr>
        <td id="L1938" class="blob-num js-line-number" data-line-number="1938"></td>
        <td id="LC1938" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1939" class="blob-num js-line-number" data-line-number="1939"></td>
        <td id="LC1939" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>bottomRight<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1940" class="blob-num js-line-number" data-line-number="1940"></td>
        <td id="LC1940" class="blob-code blob-code-inner js-file-line">					promptleftPosition <span class="pl-k">=</span> fieldLeft <span class="pl-k">+</span> fieldWidth <span class="pl-k">-</span> <span class="pl-c1">27</span>;</td>
      </tr>
      <tr>
        <td id="L1941" class="blob-num js-line-number" data-line-number="1941"></td>
        <td id="LC1941" class="blob-code blob-code-inner js-file-line">					promptTopPosition <span class="pl-k">=</span>  fieldTop <span class="pl-k">+</span>  <span class="pl-smi">field</span>.<span class="pl-c1">height</span>() <span class="pl-k">+</span> <span class="pl-c1">5</span>;</td>
      </tr>
      <tr>
        <td id="L1942" class="blob-num js-line-number" data-line-number="1942"></td>
        <td id="LC1942" class="blob-code blob-code-inner js-file-line">					marginTopSize <span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1943" class="blob-num js-line-number" data-line-number="1943"></td>
        <td id="LC1943" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">break</span>;</td>
      </tr>
      <tr>
        <td id="L1944" class="blob-num js-line-number" data-line-number="1944"></td>
        <td id="LC1944" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span>inline<span class="pl-pds">&quot;</span></span>:</td>
      </tr>
      <tr>
        <td id="L1945" class="blob-num js-line-number" data-line-number="1945"></td>
        <td id="LC1945" class="blob-code blob-code-inner js-file-line">					promptleftPosition <span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1946" class="blob-num js-line-number" data-line-number="1946"></td>
        <td id="LC1946" class="blob-code blob-code-inner js-file-line">					promptTopPosition <span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1947" class="blob-num js-line-number" data-line-number="1947"></td>
        <td id="LC1947" class="blob-code blob-code-inner js-file-line">					marginTopSize <span class="pl-k">=</span> <span class="pl-c1">0</span>;</td>
      </tr>
      <tr>
        <td id="L1948" class="blob-num js-line-number" data-line-number="1948"></td>
        <td id="LC1948" class="blob-code blob-code-inner js-file-line">			};</td>
      </tr>
      <tr>
        <td id="L1949" class="blob-num js-line-number" data-line-number="1949"></td>
        <td id="LC1949" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1950" class="blob-num js-line-number" data-line-number="1950"></td>
        <td id="LC1950" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1951" class="blob-num js-line-number" data-line-number="1951"></td>
        <td id="LC1951" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1952" class="blob-num js-line-number" data-line-number="1952"></td>
        <td id="LC1952" class="blob-code blob-code-inner js-file-line">			<span class="pl-c"><span class="pl-c">//</span>apply adjusments if any</span></td>
      </tr>
      <tr>
        <td id="L1953" class="blob-num js-line-number" data-line-number="1953"></td>
        <td id="LC1953" class="blob-code blob-code-inner js-file-line">			promptleftPosition <span class="pl-k">+=</span> shiftX;</td>
      </tr>
      <tr>
        <td id="L1954" class="blob-num js-line-number" data-line-number="1954"></td>
        <td id="LC1954" class="blob-code blob-code-inner js-file-line">			promptTopPosition  <span class="pl-k">+=</span> shiftY;</td>
      </tr>
      <tr>
        <td id="L1955" class="blob-num js-line-number" data-line-number="1955"></td>
        <td id="LC1955" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1956" class="blob-num js-line-number" data-line-number="1956"></td>
        <td id="LC1956" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> {</td>
      </tr>
      <tr>
        <td id="L1957" class="blob-num js-line-number" data-line-number="1957"></td>
        <td id="LC1957" class="blob-code blob-code-inner js-file-line">				<span class="pl-s"><span class="pl-pds">&quot;</span>callerTopPosition<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> promptTopPosition <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>px<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1958" class="blob-num js-line-number" data-line-number="1958"></td>
        <td id="LC1958" class="blob-code blob-code-inner js-file-line">				<span class="pl-s"><span class="pl-pds">&quot;</span>callerleftPosition<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> promptleftPosition <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>px<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L1959" class="blob-num js-line-number" data-line-number="1959"></td>
        <td id="LC1959" class="blob-code blob-code-inner js-file-line">				<span class="pl-s"><span class="pl-pds">&quot;</span>marginTopSize<span class="pl-pds">&quot;</span></span><span class="pl-k">:</span> marginTopSize <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&quot;</span>px<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1960" class="blob-num js-line-number" data-line-number="1960"></td>
        <td id="LC1960" class="blob-code blob-code-inner js-file-line">			};</td>
      </tr>
      <tr>
        <td id="L1961" class="blob-num js-line-number" data-line-number="1961"></td>
        <td id="LC1961" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L1962" class="blob-num js-line-number" data-line-number="1962"></td>
        <td id="LC1962" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1963" class="blob-num js-line-number" data-line-number="1963"></td>
        <td id="LC1963" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Saves the user options and variables in the form.data</span></td>
      </tr>
      <tr>
        <td id="L1964" class="blob-num js-line-number" data-line-number="1964"></td>
        <td id="LC1964" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L1965" class="blob-num js-line-number" data-line-number="1965"></td>
        <td id="LC1965" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span></span></td>
      </tr>
      <tr>
        <td id="L1966" class="blob-num js-line-number" data-line-number="1966"></td>
        <td id="LC1966" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            form - the form where the user option should be saved</span></td>
      </tr>
      <tr>
        <td id="L1967" class="blob-num js-line-number" data-line-number="1967"></td>
        <td id="LC1967" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L1968" class="blob-num js-line-number" data-line-number="1968"></td>
        <td id="LC1968" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*            options - the user options</span></td>
      </tr>
      <tr>
        <td id="L1969" class="blob-num js-line-number" data-line-number="1969"></td>
        <td id="LC1969" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> the user options (extended from the defaults)</span></td>
      </tr>
      <tr>
        <td id="L1970" class="blob-num js-line-number" data-line-number="1970"></td>
        <td id="LC1970" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1971" class="blob-num js-line-number" data-line-number="1971"></td>
        <td id="LC1971" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">_saveOptions</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">form</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L1972" class="blob-num js-line-number" data-line-number="1972"></td>
        <td id="LC1972" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1973" class="blob-num js-line-number" data-line-number="1973"></td>
        <td id="LC1973" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> is there a language localisation ?</span></td>
      </tr>
      <tr>
        <td id="L1974" class="blob-num js-line-number" data-line-number="1974"></td>
        <td id="LC1974" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span> (<span class="pl-smi">$</span>.<span class="pl-smi">validationEngineLanguage</span>)</td>
      </tr>
      <tr>
        <td id="L1975" class="blob-num js-line-number" data-line-number="1975"></td>
        <td id="LC1975" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> allRules <span class="pl-k">=</span> <span class="pl-smi">$</span>.<span class="pl-smi">validationEngineLanguage</span>.<span class="pl-smi">allRules</span>;</td>
      </tr>
      <tr>
        <td id="L1976" class="blob-num js-line-number" data-line-number="1976"></td>
        <td id="LC1976" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L1977" class="blob-num js-line-number" data-line-number="1977"></td>
        <td id="LC1977" class="blob-code blob-code-inner js-file-line">			 <span class="pl-smi">$</span>.<span class="pl-en">error</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jQuery.validationEngine rules are not loaded, plz add localization files to the page<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1978" class="blob-num js-line-number" data-line-number="1978"></td>
        <td id="LC1978" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> --- Internals DO NOT TOUCH or OVERLOAD ---</span></td>
      </tr>
      <tr>
        <td id="L1979" class="blob-num js-line-number" data-line-number="1979"></td>
        <td id="LC1979" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> validation rules and i18</span></td>
      </tr>
      <tr>
        <td id="L1980" class="blob-num js-line-number" data-line-number="1980"></td>
        <td id="LC1980" class="blob-code blob-code-inner js-file-line">			 <span class="pl-smi">$</span>.<span class="pl-smi">validationEngine</span>.<span class="pl-smi">defaults</span>.<span class="pl-smi">allrules</span> <span class="pl-k">=</span> allRules;</td>
      </tr>
      <tr>
        <td id="L1981" class="blob-num js-line-number" data-line-number="1981"></td>
        <td id="LC1981" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1982" class="blob-num js-line-number" data-line-number="1982"></td>
        <td id="LC1982" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">var</span> userOptions <span class="pl-k">=</span> <span class="pl-smi">$</span>.<span class="pl-en">extend</span>(<span class="pl-c1">true</span>,{},<span class="pl-smi">$</span>.<span class="pl-smi">validationEngine</span>.<span class="pl-smi">defaults</span>,options);</td>
      </tr>
      <tr>
        <td id="L1983" class="blob-num js-line-number" data-line-number="1983"></td>
        <td id="LC1983" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1984" class="blob-num js-line-number" data-line-number="1984"></td>
        <td id="LC1984" class="blob-code blob-code-inner js-file-line">			 <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>jqv<span class="pl-pds">&#39;</span></span>, userOptions);</td>
      </tr>
      <tr>
        <td id="L1985" class="blob-num js-line-number" data-line-number="1985"></td>
        <td id="LC1985" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">return</span> userOptions;</td>
      </tr>
      <tr>
        <td id="L1986" class="blob-num js-line-number" data-line-number="1986"></td>
        <td id="LC1986" class="blob-code blob-code-inner js-file-line">		 },</td>
      </tr>
      <tr>
        <td id="L1987" class="blob-num js-line-number" data-line-number="1987"></td>
        <td id="LC1987" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1988" class="blob-num js-line-number" data-line-number="1988"></td>
        <td id="LC1988" class="blob-code blob-code-inner js-file-line">		 <span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1989" class="blob-num js-line-number" data-line-number="1989"></td>
        <td id="LC1989" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 * Removes forbidden characters from class name</span></td>
      </tr>
      <tr>
        <td id="L1990" class="blob-num js-line-number" data-line-number="1990"></td>
        <td id="LC1990" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 * <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">className</span></span></td>
      </tr>
      <tr>
        <td id="L1991" class="blob-num js-line-number" data-line-number="1991"></td>
        <td id="LC1991" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L1992" class="blob-num js-line-number" data-line-number="1992"></td>
        <td id="LC1992" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">_getClassName</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">className</span>) {</td>
      </tr>
      <tr>
        <td id="L1993" class="blob-num js-line-number" data-line-number="1993"></td>
        <td id="LC1993" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span>(className)</td>
      </tr>
      <tr>
        <td id="L1994" class="blob-num js-line-number" data-line-number="1994"></td>
        <td id="LC1994" class="blob-code blob-code-inner js-file-line">				 <span class="pl-k">return</span> <span class="pl-smi">className</span>.<span class="pl-c1">replace</span>(<span class="pl-sr"><span class="pl-pds">/</span>:<span class="pl-pds">/</span>g</span>, <span class="pl-s"><span class="pl-pds">&quot;</span>_<span class="pl-pds">&quot;</span></span>).<span class="pl-c1">replace</span>(<span class="pl-sr"><span class="pl-pds">/</span><span class="pl-cce">\.</span><span class="pl-pds">/</span>g</span>, <span class="pl-s"><span class="pl-pds">&quot;</span>_<span class="pl-pds">&quot;</span></span>);</td>
      </tr>
      <tr>
        <td id="L1995" class="blob-num js-line-number" data-line-number="1995"></td>
        <td id="LC1995" class="blob-code blob-code-inner js-file-line">					  },</td>
      </tr>
      <tr>
        <td id="L1996" class="blob-num js-line-number" data-line-number="1996"></td>
        <td id="LC1996" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L1997" class="blob-num js-line-number" data-line-number="1997"></td>
        <td id="LC1997" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 * Escape special character for jQuery selector</span></td>
      </tr>
      <tr>
        <td id="L1998" class="blob-num js-line-number" data-line-number="1998"></td>
        <td id="LC1998" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 * http://totaldev.com/content/escaping-characters-get-valid-jquery-id</span></td>
      </tr>
      <tr>
        <td id="L1999" class="blob-num js-line-number" data-line-number="1999"></td>
        <td id="LC1999" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 * <span class="pl-k">@param</span> <span class="pl-en">{String}</span> <span class="pl-smi">selector</span></span></td>
      </tr>
      <tr>
        <td id="L2000" class="blob-num js-line-number" data-line-number="2000"></td>
        <td id="LC2000" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		 <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L2001" class="blob-num js-line-number" data-line-number="2001"></td>
        <td id="LC2001" class="blob-code blob-code-inner js-file-line">		 <span class="pl-en">_jqSelector</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">str</span>){</td>
      </tr>
      <tr>
        <td id="L2002" class="blob-num js-line-number" data-line-number="2002"></td>
        <td id="LC2002" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">return</span> <span class="pl-smi">str</span>.<span class="pl-c1">replace</span>(<span class="pl-sr"><span class="pl-pds">/</span>(<span class="pl-c1">[;&amp;,<span class="pl-cce">\.\+\*\~</span>&#39;:&quot;<span class="pl-cce">\!\^</span>#$%@<span class="pl-cce">\[\]\(\)</span>=&gt;<span class="pl-cce">\|</span>]</span>)<span class="pl-pds">/</span>g</span>, <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-cce">\\</span>$1<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L2003" class="blob-num js-line-number" data-line-number="2003"></td>
        <td id="LC2003" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L2004" class="blob-num js-line-number" data-line-number="2004"></td>
        <td id="LC2004" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L2005" class="blob-num js-line-number" data-line-number="2005"></td>
        <td id="LC2005" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* Conditionally required field</span></td>
      </tr>
      <tr>
        <td id="L2006" class="blob-num js-line-number" data-line-number="2006"></td>
        <td id="LC2006" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		*</span></td>
      </tr>
      <tr>
        <td id="L2007" class="blob-num js-line-number" data-line-number="2007"></td>
        <td id="LC2007" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{jqObject}</span> <span class="pl-smi">field</span></span></td>
      </tr>
      <tr>
        <td id="L2008" class="blob-num js-line-number" data-line-number="2008"></td>
        <td id="LC2008" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> {Array[String]} rules</span></td>
      </tr>
      <tr>
        <td id="L2009" class="blob-num js-line-number" data-line-number="2009"></td>
        <td id="LC2009" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{int}</span> <span class="pl-smi">i</span> rules index</span></td>
      </tr>
      <tr>
        <td id="L2010" class="blob-num js-line-number" data-line-number="2010"></td>
        <td id="LC2010" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@param</span> <span class="pl-en">{Map}</span></span></td>
      </tr>
      <tr>
        <td id="L2011" class="blob-num js-line-number" data-line-number="2011"></td>
        <td id="LC2011" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* user options</span></td>
      </tr>
      <tr>
        <td id="L2012" class="blob-num js-line-number" data-line-number="2012"></td>
        <td id="LC2012" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		* <span class="pl-k">@return</span> an error string if validation failed</span></td>
      </tr>
      <tr>
        <td id="L2013" class="blob-num js-line-number" data-line-number="2013"></td>
        <td id="LC2013" class="blob-code blob-code-inner js-file-line"><span class="pl-c">		<span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L2014" class="blob-num js-line-number" data-line-number="2014"></td>
        <td id="LC2014" class="blob-code blob-code-inner js-file-line">		<span class="pl-en">_condRequired</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-smi">field</span>, <span class="pl-smi">rules</span>, <span class="pl-smi">i</span>, <span class="pl-smi">options</span>) {</td>
      </tr>
      <tr>
        <td id="L2015" class="blob-num js-line-number" data-line-number="2015"></td>
        <td id="LC2015" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">var</span> idx, dependingField;</td>
      </tr>
      <tr>
        <td id="L2016" class="blob-num js-line-number" data-line-number="2016"></td>
        <td id="LC2016" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2017" class="blob-num js-line-number" data-line-number="2017"></td>
        <td id="LC2017" class="blob-code blob-code-inner js-file-line">			<span class="pl-k">for</span>(idx <span class="pl-k">=</span> (i <span class="pl-k">+</span> <span class="pl-c1">1</span>); idx <span class="pl-k">&lt;</span> <span class="pl-smi">rules</span>.<span class="pl-c1">length</span>; idx<span class="pl-k">++</span>) {</td>
      </tr>
      <tr>
        <td id="L2018" class="blob-num js-line-number" data-line-number="2018"></td>
        <td id="LC2018" class="blob-code blob-code-inner js-file-line">				dependingField <span class="pl-k">=</span> <span class="pl-en">jQuery</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span> <span class="pl-k">+</span> rules[idx]).<span class="pl-en">first</span>();</td>
      </tr>
      <tr>
        <td id="L2019" class="blob-num js-line-number" data-line-number="2019"></td>
        <td id="LC2019" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2020" class="blob-num js-line-number" data-line-number="2020"></td>
        <td id="LC2020" class="blob-code blob-code-inner js-file-line">				<span class="pl-c"><span class="pl-c">/*</span> Use _required for determining wether dependingField has a value.</span></td>
      </tr>
      <tr>
        <td id="L2021" class="blob-num js-line-number" data-line-number="2021"></td>
        <td id="LC2021" class="blob-code blob-code-inner js-file-line"><span class="pl-c">				 * There is logic there for handling all field types, and default value; so we won&#39;t replicate that here</span></td>
      </tr>
      <tr>
        <td id="L2022" class="blob-num js-line-number" data-line-number="2022"></td>
        <td id="LC2022" class="blob-code blob-code-inner js-file-line"><span class="pl-c">				 * Indicate this special use by setting the last parameter to true so we only validate the dependingField on chackboxes and radio buttons (#462)</span></td>
      </tr>
      <tr>
        <td id="L2023" class="blob-num js-line-number" data-line-number="2023"></td>
        <td id="LC2023" class="blob-code blob-code-inner js-file-line"><span class="pl-c">				 <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L2024" class="blob-num js-line-number" data-line-number="2024"></td>
        <td id="LC2024" class="blob-code blob-code-inner js-file-line">				<span class="pl-k">if</span> (<span class="pl-smi">dependingField</span>.<span class="pl-c1">length</span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">methods</span>.<span class="pl-en">_required</span>(dependingField, [<span class="pl-s"><span class="pl-pds">&quot;</span>required<span class="pl-pds">&quot;</span></span>], <span class="pl-c1">0</span>, options, <span class="pl-c1">true</span>) <span class="pl-k">==</span> <span class="pl-c1">undefined</span>) {</td>
      </tr>
      <tr>
        <td id="L2025" class="blob-num js-line-number" data-line-number="2025"></td>
        <td id="LC2025" class="blob-code blob-code-inner js-file-line">					<span class="pl-c"><span class="pl-c">/*</span> We now know any of the depending fields has a value,</span></td>
      </tr>
      <tr>
        <td id="L2026" class="blob-num js-line-number" data-line-number="2026"></td>
        <td id="LC2026" class="blob-code blob-code-inner js-file-line"><span class="pl-c">					 * so we can validate this field as per normal required code</span></td>
      </tr>
      <tr>
        <td id="L2027" class="blob-num js-line-number" data-line-number="2027"></td>
        <td id="LC2027" class="blob-code blob-code-inner js-file-line"><span class="pl-c">					 <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L2028" class="blob-num js-line-number" data-line-number="2028"></td>
        <td id="LC2028" class="blob-code blob-code-inner js-file-line">					<span class="pl-k">return</span> <span class="pl-smi">methods</span>.<span class="pl-en">_required</span>(field, [<span class="pl-s"><span class="pl-pds">&quot;</span>required<span class="pl-pds">&quot;</span></span>], <span class="pl-c1">0</span>, options);</td>
      </tr>
      <tr>
        <td id="L2029" class="blob-num js-line-number" data-line-number="2029"></td>
        <td id="LC2029" class="blob-code blob-code-inner js-file-line">				}</td>
      </tr>
      <tr>
        <td id="L2030" class="blob-num js-line-number" data-line-number="2030"></td>
        <td id="LC2030" class="blob-code blob-code-inner js-file-line">			}</td>
      </tr>
      <tr>
        <td id="L2031" class="blob-num js-line-number" data-line-number="2031"></td>
        <td id="LC2031" class="blob-code blob-code-inner js-file-line">		},</td>
      </tr>
      <tr>
        <td id="L2032" class="blob-num js-line-number" data-line-number="2032"></td>
        <td id="LC2032" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2033" class="blob-num js-line-number" data-line-number="2033"></td>
        <td id="LC2033" class="blob-code blob-code-inner js-file-line">	    <span class="pl-en">_submitButtonClick</span><span class="pl-k">:</span> <span class="pl-k">function</span>(<span class="pl-c1">event</span>) {</td>
      </tr>
      <tr>
        <td id="L2034" class="blob-num js-line-number" data-line-number="2034"></td>
        <td id="LC2034" class="blob-code blob-code-inner js-file-line">	        <span class="pl-k">var</span> button <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>);</td>
      </tr>
      <tr>
        <td id="L2035" class="blob-num js-line-number" data-line-number="2035"></td>
        <td id="LC2035" class="blob-code blob-code-inner js-file-line">	        <span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-smi">button</span>.<span class="pl-c1">closest</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>form, .validationEngineContainer<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L2036" class="blob-num js-line-number" data-line-number="2036"></td>
        <td id="LC2036" class="blob-code blob-code-inner js-file-line">	        <span class="pl-smi">form</span>.<span class="pl-c1">data</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>jqv_submitButton<span class="pl-pds">&quot;</span></span>, <span class="pl-smi">button</span>.<span class="pl-en">attr</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>id<span class="pl-pds">&quot;</span></span>));</td>
      </tr>
      <tr>
        <td id="L2037" class="blob-num js-line-number" data-line-number="2037"></td>
        <td id="LC2037" class="blob-code blob-code-inner js-file-line">	    }</td>
      </tr>
      <tr>
        <td id="L2038" class="blob-num js-line-number" data-line-number="2038"></td>
        <td id="LC2038" class="blob-code blob-code-inner js-file-line">		  };</td>
      </tr>
      <tr>
        <td id="L2039" class="blob-num js-line-number" data-line-number="2039"></td>
        <td id="LC2039" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2040" class="blob-num js-line-number" data-line-number="2040"></td>
        <td id="LC2040" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c"><span class="pl-c">/**</span></span></td>
      </tr>
      <tr>
        <td id="L2041" class="blob-num js-line-number" data-line-number="2041"></td>
        <td id="LC2041" class="blob-code blob-code-inner js-file-line"><span class="pl-c">	 * Plugin entry point.</span></td>
      </tr>
      <tr>
        <td id="L2042" class="blob-num js-line-number" data-line-number="2042"></td>
        <td id="LC2042" class="blob-code blob-code-inner js-file-line"><span class="pl-c">	 * You may pass an action as a parameter or a list of options.</span></td>
      </tr>
      <tr>
        <td id="L2043" class="blob-num js-line-number" data-line-number="2043"></td>
        <td id="LC2043" class="blob-code blob-code-inner js-file-line"><span class="pl-c">	 * if none, the init and attach methods are being called.</span></td>
      </tr>
      <tr>
        <td id="L2044" class="blob-num js-line-number" data-line-number="2044"></td>
        <td id="LC2044" class="blob-code blob-code-inner js-file-line"><span class="pl-c">	 * Remember: if you pass options, the attached method is NOT called automatically</span></td>
      </tr>
      <tr>
        <td id="L2045" class="blob-num js-line-number" data-line-number="2045"></td>
        <td id="LC2045" class="blob-code blob-code-inner js-file-line"><span class="pl-c">	 *</span></td>
      </tr>
      <tr>
        <td id="L2046" class="blob-num js-line-number" data-line-number="2046"></td>
        <td id="LC2046" class="blob-code blob-code-inner js-file-line"><span class="pl-c">	 * <span class="pl-k">@param</span> <span class="pl-en">{String}</span></span></td>
      </tr>
      <tr>
        <td id="L2047" class="blob-num js-line-number" data-line-number="2047"></td>
        <td id="LC2047" class="blob-code blob-code-inner js-file-line"><span class="pl-c">	 *            method (optional) action</span></td>
      </tr>
      <tr>
        <td id="L2048" class="blob-num js-line-number" data-line-number="2048"></td>
        <td id="LC2048" class="blob-code blob-code-inner js-file-line"><span class="pl-c">	 <span class="pl-c">*/</span></span></td>
      </tr>
      <tr>
        <td id="L2049" class="blob-num js-line-number" data-line-number="2049"></td>
        <td id="LC2049" class="blob-code blob-code-inner js-file-line">	 <span class="pl-smi">$</span>.<span class="pl-smi">fn</span>.<span class="pl-en">validationEngine</span> <span class="pl-k">=</span> <span class="pl-k">function</span>(<span class="pl-smi">method</span>) {</td>
      </tr>
      <tr>
        <td id="L2050" class="blob-num js-line-number" data-line-number="2050"></td>
        <td id="LC2050" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2051" class="blob-num js-line-number" data-line-number="2051"></td>
        <td id="LC2051" class="blob-code blob-code-inner js-file-line">		 <span class="pl-k">var</span> form <span class="pl-k">=</span> <span class="pl-en">$</span>(<span class="pl-c1">this</span>);</td>
      </tr>
      <tr>
        <td id="L2052" class="blob-num js-line-number" data-line-number="2052"></td>
        <td id="LC2052" class="blob-code blob-code-inner js-file-line">		 <span class="pl-k">if</span>(<span class="pl-k">!</span>form[<span class="pl-c1">0</span>]) <span class="pl-k">return</span> form;  <span class="pl-c"><span class="pl-c">//</span> stop here if the form does not exist</span></td>
      </tr>
      <tr>
        <td id="L2053" class="blob-num js-line-number" data-line-number="2053"></td>
        <td id="LC2053" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2054" class="blob-num js-line-number" data-line-number="2054"></td>
        <td id="LC2054" class="blob-code blob-code-inner js-file-line">		 <span class="pl-k">if</span> (<span class="pl-k">typeof</span>(method) <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>string<span class="pl-pds">&#39;</span></span> <span class="pl-k">&amp;&amp;</span> <span class="pl-smi">method</span>.<span class="pl-c1">charAt</span>(<span class="pl-c1">0</span>) <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&#39;</span>_<span class="pl-pds">&#39;</span></span> <span class="pl-k">&amp;&amp;</span> methods[method]) {</td>
      </tr>
      <tr>
        <td id="L2055" class="blob-num js-line-number" data-line-number="2055"></td>
        <td id="LC2055" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2056" class="blob-num js-line-number" data-line-number="2056"></td>
        <td id="LC2056" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> make sure init is called once</span></td>
      </tr>
      <tr>
        <td id="L2057" class="blob-num js-line-number" data-line-number="2057"></td>
        <td id="LC2057" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">if</span>(method <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>showPrompt<span class="pl-pds">&quot;</span></span> <span class="pl-k">&amp;&amp;</span> method <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>hide<span class="pl-pds">&quot;</span></span> <span class="pl-k">&amp;&amp;</span> method <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>hideAll<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2058" class="blob-num js-line-number" data-line-number="2058"></td>
        <td id="LC2058" class="blob-code blob-code-inner js-file-line">			 <span class="pl-smi">methods</span>.<span class="pl-smi">init</span>.<span class="pl-c1">apply</span>(form);</td>
      </tr>
      <tr>
        <td id="L2059" class="blob-num js-line-number" data-line-number="2059"></td>
        <td id="LC2059" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2060" class="blob-num js-line-number" data-line-number="2060"></td>
        <td id="LC2060" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">return</span> methods[method].<span class="pl-c1">apply</span>(form, <span class="pl-c1">Array</span>.<span class="pl-c1">prototype</span>.<span class="pl-smi">slice</span>.<span class="pl-c1">call</span>(<span class="pl-c1">arguments</span>, <span class="pl-c1">1</span>));</td>
      </tr>
      <tr>
        <td id="L2061" class="blob-num js-line-number" data-line-number="2061"></td>
        <td id="LC2061" class="blob-code blob-code-inner js-file-line">		 } <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-k">typeof</span> method <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>object<span class="pl-pds">&#39;</span></span> <span class="pl-k">||</span> <span class="pl-k">!</span>method) {</td>
      </tr>
      <tr>
        <td id="L2062" class="blob-num js-line-number" data-line-number="2062"></td>
        <td id="LC2062" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2063" class="blob-num js-line-number" data-line-number="2063"></td>
        <td id="LC2063" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c"><span class="pl-c">//</span> default constructor with or without arguments</span></td>
      </tr>
      <tr>
        <td id="L2064" class="blob-num js-line-number" data-line-number="2064"></td>
        <td id="LC2064" class="blob-code blob-code-inner js-file-line">			 <span class="pl-smi">methods</span>.<span class="pl-smi">init</span>.<span class="pl-c1">apply</span>(form, <span class="pl-c1">arguments</span>);</td>
      </tr>
      <tr>
        <td id="L2065" class="blob-num js-line-number" data-line-number="2065"></td>
        <td id="LC2065" class="blob-code blob-code-inner js-file-line">			 <span class="pl-k">return</span> <span class="pl-smi">methods</span>.<span class="pl-smi">attach</span>.<span class="pl-c1">apply</span>(form);</td>
      </tr>
      <tr>
        <td id="L2066" class="blob-num js-line-number" data-line-number="2066"></td>
        <td id="LC2066" class="blob-code blob-code-inner js-file-line">		 } <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L2067" class="blob-num js-line-number" data-line-number="2067"></td>
        <td id="LC2067" class="blob-code blob-code-inner js-file-line">			 <span class="pl-smi">$</span>.<span class="pl-en">error</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>Method <span class="pl-pds">&#39;</span></span> <span class="pl-k">+</span> method <span class="pl-k">+</span> <span class="pl-s"><span class="pl-pds">&#39;</span> does not exist in jQuery.validationEngine<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L2068" class="blob-num js-line-number" data-line-number="2068"></td>
        <td id="LC2068" class="blob-code blob-code-inner js-file-line">		 }</td>
      </tr>
      <tr>
        <td id="L2069" class="blob-num js-line-number" data-line-number="2069"></td>
        <td id="LC2069" class="blob-code blob-code-inner js-file-line">	};</td>
      </tr>
      <tr>
        <td id="L2070" class="blob-num js-line-number" data-line-number="2070"></td>
        <td id="LC2070" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2071" class="blob-num js-line-number" data-line-number="2071"></td>
        <td id="LC2071" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2072" class="blob-num js-line-number" data-line-number="2072"></td>
        <td id="LC2072" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2073" class="blob-num js-line-number" data-line-number="2073"></td>
        <td id="LC2073" class="blob-code blob-code-inner js-file-line">	<span class="pl-c"><span class="pl-c">//</span> LEAK GLOBAL OPTIONS</span></td>
      </tr>
      <tr>
        <td id="L2074" class="blob-num js-line-number" data-line-number="2074"></td>
        <td id="LC2074" class="blob-code blob-code-inner js-file-line">	<span class="pl-smi">$</span>.<span class="pl-smi">validationEngine</span><span class="pl-k">=</span> {fieldIdCounter<span class="pl-k">:</span> <span class="pl-c1">0</span>,defaults<span class="pl-k">:</span>{</td>
      </tr>
      <tr>
        <td id="L2075" class="blob-num js-line-number" data-line-number="2075"></td>
        <td id="LC2075" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2076" class="blob-num js-line-number" data-line-number="2076"></td>
        <td id="LC2076" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Name of the event triggering field validation</span></td>
      </tr>
      <tr>
        <td id="L2077" class="blob-num js-line-number" data-line-number="2077"></td>
        <td id="LC2077" class="blob-code blob-code-inner js-file-line">		validationEventTrigger<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>blur<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2078" class="blob-num js-line-number" data-line-number="2078"></td>
        <td id="LC2078" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Automatically scroll viewport to the first error</span></td>
      </tr>
      <tr>
        <td id="L2079" class="blob-num js-line-number" data-line-number="2079"></td>
        <td id="LC2079" class="blob-code blob-code-inner js-file-line">		scroll<span class="pl-k">:</span> <span class="pl-c1">true</span>,</td>
      </tr>
      <tr>
        <td id="L2080" class="blob-num js-line-number" data-line-number="2080"></td>
        <td id="LC2080" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Focus on the first input</span></td>
      </tr>
      <tr>
        <td id="L2081" class="blob-num js-line-number" data-line-number="2081"></td>
        <td id="LC2081" class="blob-code blob-code-inner js-file-line">		focusFirstField<span class="pl-k">:</span><span class="pl-c1">true</span>,</td>
      </tr>
      <tr>
        <td id="L2082" class="blob-num js-line-number" data-line-number="2082"></td>
        <td id="LC2082" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Show prompts, set to false to disable prompts</span></td>
      </tr>
      <tr>
        <td id="L2083" class="blob-num js-line-number" data-line-number="2083"></td>
        <td id="LC2083" class="blob-code blob-code-inner js-file-line">		showPrompts<span class="pl-k">:</span> <span class="pl-c1">true</span>,</td>
      </tr>
      <tr>
        <td id="L2084" class="blob-num js-line-number" data-line-number="2084"></td>
        <td id="LC2084" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Should we attempt to validate non-visible input fields contained in the form? (Useful in cases of tabbed containers, e.g. jQuery-UI tabs)</span></td>
      </tr>
      <tr>
        <td id="L2085" class="blob-num js-line-number" data-line-number="2085"></td>
        <td id="LC2085" class="blob-code blob-code-inner js-file-line">		validateNonVisibleFields<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2086" class="blob-num js-line-number" data-line-number="2086"></td>
        <td id="LC2086" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> ignore the validation for fields with this specific class (Useful in cases of tabbed containers AND hidden fields we don&#39;t want to validate)</span></td>
      </tr>
      <tr>
        <td id="L2087" class="blob-num js-line-number" data-line-number="2087"></td>
        <td id="LC2087" class="blob-code blob-code-inner js-file-line">		ignoreFieldsWithClass<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&#39;</span>ignoreMe<span class="pl-pds">&#39;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2088" class="blob-num js-line-number" data-line-number="2088"></td>
        <td id="LC2088" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Opening box position, possible locations are: topLeft,</span></td>
      </tr>
      <tr>
        <td id="L2089" class="blob-num js-line-number" data-line-number="2089"></td>
        <td id="LC2089" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> topRight, bottomLeft, centerRight, bottomRight, inline</span></td>
      </tr>
      <tr>
        <td id="L2090" class="blob-num js-line-number" data-line-number="2090"></td>
        <td id="LC2090" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> inline gets inserted after the validated field or into an element specified in data-prompt-target</span></td>
      </tr>
      <tr>
        <td id="L2091" class="blob-num js-line-number" data-line-number="2091"></td>
        <td id="LC2091" class="blob-code blob-code-inner js-file-line">		promptPosition<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>topRight<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2092" class="blob-num js-line-number" data-line-number="2092"></td>
        <td id="LC2092" class="blob-code blob-code-inner js-file-line">		bindMethod<span class="pl-k">:</span><span class="pl-s"><span class="pl-pds">&quot;</span>bind<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2093" class="blob-num js-line-number" data-line-number="2093"></td>
        <td id="LC2093" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> internal, automatically set to true when it parse a _ajax rule</span></td>
      </tr>
      <tr>
        <td id="L2094" class="blob-num js-line-number" data-line-number="2094"></td>
        <td id="LC2094" class="blob-code blob-code-inner js-file-line">		inlineAjax<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2095" class="blob-num js-line-number" data-line-number="2095"></td>
        <td id="LC2095" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> if set to true, the form data is sent asynchronously via ajax to the form.action url (get)</span></td>
      </tr>
      <tr>
        <td id="L2096" class="blob-num js-line-number" data-line-number="2096"></td>
        <td id="LC2096" class="blob-code blob-code-inner js-file-line">		ajaxFormValidation<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2097" class="blob-num js-line-number" data-line-number="2097"></td>
        <td id="LC2097" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> The url to send the submit ajax validation (default to action)</span></td>
      </tr>
      <tr>
        <td id="L2098" class="blob-num js-line-number" data-line-number="2098"></td>
        <td id="LC2098" class="blob-code blob-code-inner js-file-line">		ajaxFormValidationURL<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2099" class="blob-num js-line-number" data-line-number="2099"></td>
        <td id="LC2099" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> HTTP method used for ajax validation</span></td>
      </tr>
      <tr>
        <td id="L2100" class="blob-num js-line-number" data-line-number="2100"></td>
        <td id="LC2100" class="blob-code blob-code-inner js-file-line">		ajaxFormValidationMethod<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&#39;</span>get<span class="pl-pds">&#39;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2101" class="blob-num js-line-number" data-line-number="2101"></td>
        <td id="LC2101" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Ajax form validation callback method: boolean onComplete(form, status, errors, options)</span></td>
      </tr>
      <tr>
        <td id="L2102" class="blob-num js-line-number" data-line-number="2102"></td>
        <td id="LC2102" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> retuns false if the form.submit event needs to be canceled.</span></td>
      </tr>
      <tr>
        <td id="L2103" class="blob-num js-line-number" data-line-number="2103"></td>
        <td id="LC2103" class="blob-code blob-code-inner js-file-line">		onAjaxFormComplete<span class="pl-k">:</span> <span class="pl-smi">$</span>.<span class="pl-smi">noop</span>,</td>
      </tr>
      <tr>
        <td id="L2104" class="blob-num js-line-number" data-line-number="2104"></td>
        <td id="LC2104" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> called right before the ajax call, may return false to cancel</span></td>
      </tr>
      <tr>
        <td id="L2105" class="blob-num js-line-number" data-line-number="2105"></td>
        <td id="LC2105" class="blob-code blob-code-inner js-file-line">		onBeforeAjaxFormValidation<span class="pl-k">:</span> <span class="pl-smi">$</span>.<span class="pl-smi">noop</span>,</td>
      </tr>
      <tr>
        <td id="L2106" class="blob-num js-line-number" data-line-number="2106"></td>
        <td id="LC2106" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Stops form from submitting and execute function assiciated with it</span></td>
      </tr>
      <tr>
        <td id="L2107" class="blob-num js-line-number" data-line-number="2107"></td>
        <td id="LC2107" class="blob-code blob-code-inner js-file-line">		onValidationComplete<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2108" class="blob-num js-line-number" data-line-number="2108"></td>
        <td id="LC2108" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2109" class="blob-num js-line-number" data-line-number="2109"></td>
        <td id="LC2109" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Used when you have a form fields too close and the errors messages are on top of other disturbing viewing messages</span></td>
      </tr>
      <tr>
        <td id="L2110" class="blob-num js-line-number" data-line-number="2110"></td>
        <td id="LC2110" class="blob-code blob-code-inner js-file-line">		doNotShowAllErrosOnSubmit<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2111" class="blob-num js-line-number" data-line-number="2111"></td>
        <td id="LC2111" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Object where you store custom messages to override the default error messages</span></td>
      </tr>
      <tr>
        <td id="L2112" class="blob-num js-line-number" data-line-number="2112"></td>
        <td id="LC2112" class="blob-code blob-code-inner js-file-line">		custom_error_messages<span class="pl-k">:</span>{},</td>
      </tr>
      <tr>
        <td id="L2113" class="blob-num js-line-number" data-line-number="2113"></td>
        <td id="LC2113" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> true if you want to validate the input fields on blur event</span></td>
      </tr>
      <tr>
        <td id="L2114" class="blob-num js-line-number" data-line-number="2114"></td>
        <td id="LC2114" class="blob-code blob-code-inner js-file-line">		binded<span class="pl-k">:</span> <span class="pl-c1">true</span>,</td>
      </tr>
      <tr>
        <td id="L2115" class="blob-num js-line-number" data-line-number="2115"></td>
        <td id="LC2115" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> set to true if you want to validate the input fields on blur only if the field it&#39;s not empty</span></td>
      </tr>
      <tr>
        <td id="L2116" class="blob-num js-line-number" data-line-number="2116"></td>
        <td id="LC2116" class="blob-code blob-code-inner js-file-line">		notEmpty<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2117" class="blob-num js-line-number" data-line-number="2117"></td>
        <td id="LC2117" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> set to true, when the prompt arrow needs to be displayed</span></td>
      </tr>
      <tr>
        <td id="L2118" class="blob-num js-line-number" data-line-number="2118"></td>
        <td id="LC2118" class="blob-code blob-code-inner js-file-line">		showArrow<span class="pl-k">:</span> <span class="pl-c1">true</span>,</td>
      </tr>
      <tr>
        <td id="L2119" class="blob-num js-line-number" data-line-number="2119"></td>
        <td id="LC2119" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> set to false, determines if the prompt arrow should be displayed when validating</span></td>
      </tr>
      <tr>
        <td id="L2120" class="blob-num js-line-number" data-line-number="2120"></td>
        <td id="LC2120" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> checkboxes and radio buttons</span></td>
      </tr>
      <tr>
        <td id="L2121" class="blob-num js-line-number" data-line-number="2121"></td>
        <td id="LC2121" class="blob-code blob-code-inner js-file-line">		showArrowOnRadioAndCheckbox<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2122" class="blob-num js-line-number" data-line-number="2122"></td>
        <td id="LC2122" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> did one of the validation fail ? kept global to stop further ajax validations</span></td>
      </tr>
      <tr>
        <td id="L2123" class="blob-num js-line-number" data-line-number="2123"></td>
        <td id="LC2123" class="blob-code blob-code-inner js-file-line">		isError<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2124" class="blob-num js-line-number" data-line-number="2124"></td>
        <td id="LC2124" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Limit how many displayed errors a field can have</span></td>
      </tr>
      <tr>
        <td id="L2125" class="blob-num js-line-number" data-line-number="2125"></td>
        <td id="LC2125" class="blob-code blob-code-inner js-file-line">		maxErrorsPerField<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2126" class="blob-num js-line-number" data-line-number="2126"></td>
        <td id="LC2126" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2127" class="blob-num js-line-number" data-line-number="2127"></td>
        <td id="LC2127" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Caches field validation status, typically only bad status are created.</span></td>
      </tr>
      <tr>
        <td id="L2128" class="blob-num js-line-number" data-line-number="2128"></td>
        <td id="LC2128" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> the array is used during ajax form validation to detect issues early and prevent an expensive submit</span></td>
      </tr>
      <tr>
        <td id="L2129" class="blob-num js-line-number" data-line-number="2129"></td>
        <td id="LC2129" class="blob-code blob-code-inner js-file-line">		ajaxValidCache<span class="pl-k">:</span> {},</td>
      </tr>
      <tr>
        <td id="L2130" class="blob-num js-line-number" data-line-number="2130"></td>
        <td id="LC2130" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Auto update prompt position after window resize</span></td>
      </tr>
      <tr>
        <td id="L2131" class="blob-num js-line-number" data-line-number="2131"></td>
        <td id="LC2131" class="blob-code blob-code-inner js-file-line">		autoPositionUpdate<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2132" class="blob-num js-line-number" data-line-number="2132"></td>
        <td id="LC2132" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2133" class="blob-num js-line-number" data-line-number="2133"></td>
        <td id="LC2133" class="blob-code blob-code-inner js-file-line">		InvalidFields<span class="pl-k">:</span> [],</td>
      </tr>
      <tr>
        <td id="L2134" class="blob-num js-line-number" data-line-number="2134"></td>
        <td id="LC2134" class="blob-code blob-code-inner js-file-line">		onFieldSuccess<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2135" class="blob-num js-line-number" data-line-number="2135"></td>
        <td id="LC2135" class="blob-code blob-code-inner js-file-line">		onFieldFailure<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2136" class="blob-num js-line-number" data-line-number="2136"></td>
        <td id="LC2136" class="blob-code blob-code-inner js-file-line">		onSuccess<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2137" class="blob-num js-line-number" data-line-number="2137"></td>
        <td id="LC2137" class="blob-code blob-code-inner js-file-line">		onFailure<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2138" class="blob-num js-line-number" data-line-number="2138"></td>
        <td id="LC2138" class="blob-code blob-code-inner js-file-line">		validateAttribute<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span>class<span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2139" class="blob-num js-line-number" data-line-number="2139"></td>
        <td id="LC2139" class="blob-code blob-code-inner js-file-line">		addSuccessCssClassToField<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2140" class="blob-num js-line-number" data-line-number="2140"></td>
        <td id="LC2140" class="blob-code blob-code-inner js-file-line">		addFailureCssClassToField<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2141" class="blob-num js-line-number" data-line-number="2141"></td>
        <td id="LC2141" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2142" class="blob-num js-line-number" data-line-number="2142"></td>
        <td id="LC2142" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Auto-hide prompt</span></td>
      </tr>
      <tr>
        <td id="L2143" class="blob-num js-line-number" data-line-number="2143"></td>
        <td id="LC2143" class="blob-code blob-code-inner js-file-line">		autoHidePrompt<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2144" class="blob-num js-line-number" data-line-number="2144"></td>
        <td id="LC2144" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Delay before auto-hide</span></td>
      </tr>
      <tr>
        <td id="L2145" class="blob-num js-line-number" data-line-number="2145"></td>
        <td id="LC2145" class="blob-code blob-code-inner js-file-line">		autoHideDelay<span class="pl-k">:</span> <span class="pl-c1">10000</span>,</td>
      </tr>
      <tr>
        <td id="L2146" class="blob-num js-line-number" data-line-number="2146"></td>
        <td id="LC2146" class="blob-code blob-code-inner js-file-line">		<span class="pl-c"><span class="pl-c">//</span> Fade out duration while hiding the validations</span></td>
      </tr>
      <tr>
        <td id="L2147" class="blob-num js-line-number" data-line-number="2147"></td>
        <td id="LC2147" class="blob-code blob-code-inner js-file-line">		fadeDuration<span class="pl-k">:</span> <span class="pl-c1">300</span>,</td>
      </tr>
      <tr>
        <td id="L2148" class="blob-num js-line-number" data-line-number="2148"></td>
        <td id="LC2148" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c"><span class="pl-c">//</span> Use Prettify select library</span></td>
      </tr>
      <tr>
        <td id="L2149" class="blob-num js-line-number" data-line-number="2149"></td>
        <td id="LC2149" class="blob-code blob-code-inner js-file-line">	 prettySelect<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L2150" class="blob-num js-line-number" data-line-number="2150"></td>
        <td id="LC2150" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c"><span class="pl-c">//</span> Add css class on prompt</span></td>
      </tr>
      <tr>
        <td id="L2151" class="blob-num js-line-number" data-line-number="2151"></td>
        <td id="LC2151" class="blob-code blob-code-inner js-file-line">	 addPromptClass <span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2152" class="blob-num js-line-number" data-line-number="2152"></td>
        <td id="LC2152" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c"><span class="pl-c">//</span> Custom ID uses prefix</span></td>
      </tr>
      <tr>
        <td id="L2153" class="blob-num js-line-number" data-line-number="2153"></td>
        <td id="LC2153" class="blob-code blob-code-inner js-file-line">	 usePrefix<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2154" class="blob-num js-line-number" data-line-number="2154"></td>
        <td id="LC2154" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c"><span class="pl-c">//</span> Custom ID uses suffix</span></td>
      </tr>
      <tr>
        <td id="L2155" class="blob-num js-line-number" data-line-number="2155"></td>
        <td id="LC2155" class="blob-code blob-code-inner js-file-line">	 useSuffix<span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>,</td>
      </tr>
      <tr>
        <td id="L2156" class="blob-num js-line-number" data-line-number="2156"></td>
        <td id="LC2156" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c"><span class="pl-c">//</span> Only show one message per error prompt</span></td>
      </tr>
      <tr>
        <td id="L2157" class="blob-num js-line-number" data-line-number="2157"></td>
        <td id="LC2157" class="blob-code blob-code-inner js-file-line">	 showOneMessage<span class="pl-k">:</span> <span class="pl-c1">false</span></td>
      </tr>
      <tr>
        <td id="L2158" class="blob-num js-line-number" data-line-number="2158"></td>
        <td id="LC2158" class="blob-code blob-code-inner js-file-line">	}};</td>
      </tr>
      <tr>
        <td id="L2159" class="blob-num js-line-number" data-line-number="2159"></td>
        <td id="LC2159" class="blob-code blob-code-inner js-file-line">	<span class="pl-en">$</span>(<span class="pl-k">function</span>(){<span class="pl-smi">$</span>.<span class="pl-smi">validationEngine</span>.<span class="pl-smi">defaults</span>.<span class="pl-smi">promptPosition</span> <span class="pl-k">=</span> <span class="pl-smi">methods</span>.<span class="pl-en">isRTL</span>()<span class="pl-k">?</span><span class="pl-s"><span class="pl-pds">&#39;</span>topLeft<span class="pl-pds">&#39;</span></span><span class="pl-k">:</span><span class="pl-s"><span class="pl-pds">&quot;</span>topRight<span class="pl-pds">&quot;</span></span>});</td>
      </tr>
      <tr>
        <td id="L2160" class="blob-num js-line-number" data-line-number="2160"></td>
        <td id="LC2160" class="blob-code blob-code-inner js-file-line">})(jQuery);</td>
      </tr>
</table>

  </div>

</div>

<button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="d-none">Jump to Line</button>
<div id="jump-to-line" style="display:none">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>


    </div>
  </div>

  </div>

      <div class="container site-footer-container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links float-right">
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact GitHub</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage" class="site-footer-mark" title="GitHub">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2017 <span title="0.07672s from github-fe-acdc16e.cp1-iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



  

  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
    You can't perform that action at this time.
  </div>


    
    <script crossorigin="anonymous" integrity="sha256-UGFpyy/nYlS5IejJRN1AblyrLXGeZX6s6K2phIYjFHI=" src="https://assets-cdn.github.com/assets/frameworks-506169cb2fe76254b921e8c944dd406e5cab2d719e657eace8ada98486231472.js"></script>
    <script async="async" crossorigin="anonymous" integrity="sha256-OwUhccbldh6xvjQrpACcNSox8X9TPGhbNX6pNZGCWO4=" src="https://assets-cdn.github.com/assets/github-3b052171c6e5761eb1be342ba4009c352a31f17f533c685b357ea935918258ee.js"></script>
    
    
    
    
  <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
  </div>
</div>


  </body>
</html>

