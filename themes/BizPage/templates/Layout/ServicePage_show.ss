<section id="services-detail">
	<div class="container">
		<% with $Service %>
		<header class="section-header wow fadeInUp">
			<h3>$ServiceName</h3>
			<p>$ServiceTag</p>
		</header>
		<div class="wow fadeInUp">
			<p>$ServiceDesc</p>
		</div>
		<% end_with %>
	</div>
</section>