<header id="header">
	<div class="container-fluid">
		<div id="logo" class="pull-left">
			<h1><a href="$BaseHref" class="scrollto" rel="home">$SiteConfig.Title</a></h1>
		</div>
		<% if $SearchForm %>
			<span class="search-dropdown-icon">L</span>
			<div class="search-bar">
				$SearchForm
			</div>
		<% end_if %>
		<% include Navigation %>
	</div>
</header>
