<br>
<section id="Gallery">
	<div class="container">
		<header class="section-header">
	    	<H3>Gallery</H3>
	     </header>
		<div>
			<% if $Photo %>
			<% loop $Photo %>
				$Photo.Fit(480,260)
			<% end_loop %>
			<% end_if %>
		</div>
	</div>
</section>
<br>