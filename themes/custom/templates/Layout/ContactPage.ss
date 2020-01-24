<div class="col-sm">
	Address : $Address<br>
	Landline : $Landline<br>
	Phone Number : <% if $WA %><a href="https://api.whatsapp.com/send?phone=$Phone&text=Saya%20ingin%20bertanya%20sesuatu">$Phone</a><% else %>$Phone<% end_if %><br>
	Instagram : <% if $Insta %><a href="$Insta">$Insta</a><% else %>No Insta<% end_if %><br>
	LinkedIn : <% if $LinkedIn %><a href="$LinkedIn">$LinkedIn</a><% else %>No LinkedIn<% end_if %><br>
	Facebook : <% if $Facebook %><a href="$Facebook">$Facebook</a><% else %>No Facebook<% end_if %><br>
</div>
<div class="col-sm" id="map">
	<div>
		<H3>This is our place</H3>
	</div>
	<% if $EmbedMap %>
	<div>$EmbedMap</div>
	<% else %>
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.4427501106493!2d112.7684862143515!3d-7.304052673832717!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7fb89f1c42717%3A0x6858ff81a69f99a3!2sMorning%20Glory%20Enterprise!5e0!3m2!1sen!2sid!4v1579828524645!5m2!1sen!2sid" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
	<% end_if %>
</div>