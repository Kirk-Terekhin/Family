<?php defined( '_JEXEC' ) or die; ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <jdoc:include type="head" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/templates/<?php echo $this->template; ?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="/templates/<?php echo $this->template; ?>/css/css.css" rel="stylesheet">
    <link href="/templates/<?php echo $this->template; ?>/images/favka.png" rel="shortcut icon" type="image/vnd.microsoft.icon">
    <link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed|Philosopher&subset=cyrillic,latin' rel='stylesheet' type='text/css'>
  </head>
<body>
<header> 
    <div class="container">
        <div class="row">
            <div class="col-sm-6 logo">
                <jdoc:include type="modules" name="top1" style="xhtml" />
            </div>
            <div class="col-sm-3">
                <jdoc:include type="modules" name="top2" style="xhtml" />
            </div>
            <div class="col-sm-3">
                <jdoc:include type="modules" name="top3" style="xhtml" />
            </div>
        </div>
    </div>
</header>
<nav>
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <jdoc:include type="modules" name="menu" style="xhtml" />
            </div>
        </div>
    </div>
</nav>
<section class="<?php if ($this->countModules('slider')==0) {echo 'hidden';}else {echo 'slider';} ?>">
   <div class="container">
       <div class="row">
           <div class="col-xs-12">
                <jdoc:include type="modules" name="slider" style="xhtml" />
            </div>
       </div>
   </div>
</section>
<section>
    <div class="container">
        <div class="row">
            <div class="contentik <?php if ($this->countModules('rightCol')==0) {echo 'col-xs-12';}else{echo 'col-sm-7 col-md-8';} ?>">
                <jdoc:include type="message" />
                <jdoc:include type="component" />
                <jdoc:include type="modules" name="galery" style="xhtml" />
            </div>
            <div class="rightCol <?php if ($this->countModules('rightCol')==0) {echo 'hidden';}else{echo 'col-sm-5 col-md-4';} ?>">
                <jdoc:include type="modules" name="rightCol" style="xhtml" />
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <jdoc:include type="modules" name="footer1" style="xhtml" />
            </div>
            <div class="col-sm-3">
                <jdoc:include type="modules" name="footer2" style="xhtml" />
            </div>
            <div class="col-sm-3">
                <jdoc:include type="modules" name="footer3" style="xhtml" />
            </div>
            <div class="col-sm-3">
                <jdoc:include type="modules" name="footer4" style="xhtml" />
            </div>
        </div>
    </div>
</footer>
  <script src="/templates/<?php echo $this->template; ?>/js/jquery.min.js"></script>
     <script type="text/javascript">jQuery.noConflict();</script>
   <script src="/templates/<?php echo $this->template; ?>/js/bootstrap.js"></script>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->     
    </body>
</html>