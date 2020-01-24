<footer id="footer">
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 footer-info">
					<h3>$FInfo.InfoTitle</h3>
					<p>$FInfo.Description.LimitSentences(3)</p>
				</div>
				<div class="col-lg-4 col-md-6 footer-links">
					<h4>Useful Links</h4>
					<ul>
					<% loop $Menu(1) %>
					<li>
						<i class="ion-ios-arrow-right"></i>
						<a href="$Links">$MenuTitle</a>
					</li>
					<% end_loop %>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6 footer-contact">
					<h4>Contact Us</h4>
					<p>
						$FContact.Address<br>
						<% if $FContact.Insta %>
						<a href="$FContact.Insta">Our Instagram Page</a><br>
						<% end_if %>
						<% if $FContact.LinkedIn %>
						<a href="$FContact.LinkedIn">Our Linkedin Profile</a><br>
						<% end_if %>
						<% if $FContact.Facebook %>
						<a href="$FContact.Facebook">$FContact.Facebook</a><br>
						<% end_if %>
						$FContact.Landline<br>
						<% if $FContact.WA %>
						<a href="https://api.whatsapp.com/send?phone=$FContact.Phone&text=Saya%20ingin%20bertanya%20sesuatu">
						<% else %>
						<a href="tel:{$FContact.Phone}">
						<% end_if %>
						$FContact.Phone</a><br>
					</p>
				</div>
			</div>
		</div>
	</div>
</footer>
