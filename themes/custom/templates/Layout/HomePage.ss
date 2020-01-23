<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
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
    <% if $Photo %>
      <% loop $Photo %>
    	<% if First %>
      <div class="carousel-item active">	
        $Photo.Fit(1400,500)
      </div>
      <% else %>
      <div class="carousel-item">	
        $Photo.Fit(1400,500)
      </div>
      <% end_if %>
      <% end_loop %>
    <% else %>
      <div class="carousel-item active">  
        <img src="https://via.placeholder.com/1400x500.png">
      </div>
      <div class="carousel-item"> 
        <img src="https://via.placeholder.com/1400x500.png">
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

<hr>

<div class="container">
	<div>$Info.Description<a href="info">read more</a></div>
</div>

<hr>

<div class="container">
	<H2><a href="news">News</a></H2>
  <div class="row">
	<% loop $News %>
		<div class="col">
			<H3>$Title</H3>
			<p>$Description.FirstParagraph<a href="news/show/{$ID}">read more</a></p>
		</div>
	<% end_loop %>
  </div>
</div>