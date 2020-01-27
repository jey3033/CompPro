<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<link rel="shortcut icon" href="themes/simple/images/favicon.ico" />
</head>
<body>
<% include Header %>
<div class="main" role="main">
	<section id="intro">
	  <div class="intro-container">
	    <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
	      <ol class="carousel-indicators">
	        <% if $GID %>
	          <% loop $GID %>
	            <% if $ID==0 %> 
	            <li data-target="#carouselExampleIndicators" data-slide-to="{$ID}" class="active"></li>
	            <% else %>
	            <li data-target="#carouselExampleIndicators" data-slide-to="{$ID}"></li>
	            <% end_if %>
	          <% end_loop %>
	        <% else %>
	          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	        <% end_if %>
	      </ol>
	      <div class="carousel-inner">
	        <% if $dataGallery %>
	          <% loop $dataGallery %>
	          <% if First %>
	          <div class="carousel-item active">  
	          <% else %>
	          <div class="carousel-item"> 
	          <% end_if %>
	          <div class="carousel-background">$Photo.Fit(1900,1000)</div>
	            <div class="carousel-container">
	              <div class="carousel-content">
	                <h2>$Title</h2>
	                  <p>$Desc</p>
	                  <a href="#featured-services" class="btn-get-started scrollto">Get Started</a>
	              </div> 
	            </div>
	          </div>
	          <% end_loop %>
	        <% else %>
	          <div class="carousel-item active">
	            <div class="carousel-background"><img src="https://via.placeholder.com/1900x1000.png"></div>
	            <div class="carousel-container">
	              <div class="carousel-content">
	                <h2>At vero eos et accusamus</h2>
	                  <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p>
	                  <a href="#featured-services" class="btn-get-started scrollto">Get Started</a>
	              </div> 
	            </div>
	          </div>
	          <div class="carousel-item"> 
	            <div class="carousel-background"><img src="https://via.placeholder.com/1900x1000.png"></div>
	            <div class="carousel-container">
	              <div class="carousel-content">
	                <h2>Temporibus autem quibusdam</h2>
	                <p>Beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt omnis iste natus error sit voluptatem accusantium.</p>
	                <a href="#featured-services" class="btn-get-started scrollto">Get Started</a>
	              </div> 
	            </div>
	          </div>
	        <% end_if %>
	      </div>
	      <a class="carousel-control-prev" data-target="#carouselExampleIndicators" role="button" data-slide="prev">
	        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	        <span class="sr-only">Previous</span>
	      </a>
	      <a class="carousel-control-next" data-target="#carouselExampleIndicators" role="button" data-slide="next">
	        <span class="carousel-control-next-icon" aria-hidden="true"></span>
	        <span class="sr-only">Next</span>
	      </a>
	    </div>    
	  </div>
	</section>
	<main id="main">
		$Layout
	</main>
</div>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5e2e60f0daaca76c6fcff877/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<% include Footer %>
</body>
</html>
