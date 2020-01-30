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
						<a href="tel:{$FContact.Landline}">$FContact.Landline</a><br>
						<a href="tel:{$FContact.Phone}">$FContact.Phone</a>
						<% if $FContact.WA %>
						<a href="https://api.whatsapp.com/send?phone=$FContact.Phone&text=Saya%20ingin%20bertanya%20sesuatu">
							<i class="fa fa-whatsapp"></i>
						</a>
						<% end_if %>
						<br>
					</p>
					<div class = "social-links">
						<% if $FContact.Insta %>
						<a href="$FContact.Insta"><i class="fa fa-instagram"></i></a>
						<% end_if %>
						<% if $FContact.LinkedIn %>
						<a href="$FContact.LinkedIn"><i class="fa fa-linkedin"></i></a>
						<% end_if %>
						<% if $FContact.Facebook %>
						<a href="$FContact.Facebook"><i class="fa fa-facebook"></i></a>
						<% end_if %>
						</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="copyright">
			© Copyright 
			<strong>BizPage</strong>
			. All Rights Reserved
		</div>
		<div class="credits">
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</div>
</footer>
