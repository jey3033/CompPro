<section id="services">
	<div class="container">
		<header class="section-header wow fadeInUp">
			<h3>$ServiceHeader</h3>
			<p>$HeaderDesc</p>
		</header>
		<div class="row">
		<% loop $Service %>
			<div class="col-lg-4 col-md-6  box wow bounceInUp" data-wow-duration="1.4s">
			    <div class="icon">
			        <div class="icon"><i class="ion-android-film"></i></div>
			    </div>
			    <h4 class="title"><a href="$Link">$ServiceName</a></h4>
            	<p class="description">$ServiceDesc.LimitSentences(1)</p>
			</div>
		<% end_loop %>
		</div>
	</div>
</section>