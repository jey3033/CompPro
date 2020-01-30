<section id="news-detail">
	<div class="container">
	<% with $News %>
	<header class="section-header wow fadeInUp">
		<h3>$Title</h3>
	</header>
	<div class="wow fadeInUp">
		$Description
		<div class="alert alert-dark">
			<a href="news" class="alert-link">back</a>
		</div>
	</div>
	<% end_with %>
	</div>
</section>