<header id="header" class>
	<div class="container-fluid">
		<div id="logo" class="pull-left">
			<a href="$BaseHref" class="scrollto">
				<h1>$SiteConfig.Title</h1>
				<% if $SiteConfig.Tagline %>
				<p>$SiteConfig.Tagline</p>
				<% end_if %>
			</a>
		</div>
		<% include Navigation %>
	</div>
</header>
