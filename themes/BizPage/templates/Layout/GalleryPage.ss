<section id="Gallery">
	<div>
		<h3>this is our gallery</h3>
	</div>
	<div>
		<% if $Photo %>
		<% loop $Photo %>
			$Photo.Fit(480,260)
		<% end_loop %>
		<% end_if %>
	</div>
</section>