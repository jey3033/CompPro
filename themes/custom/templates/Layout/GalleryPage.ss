<div>
	<% if $Photo %>
	<% loop $Photo %>
		$Photo.Fit(480,260)
	<% end_loop %>
	<% end_if %>
</div>