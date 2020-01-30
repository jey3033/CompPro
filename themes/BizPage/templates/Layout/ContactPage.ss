<section id="contact">

<div class="container">
	<div class="section-header">
		<h3>Contact Us</h3>
	</div>
	<div class="row contact-info">
		<div class="col-md-4">
			<div class="contact-address">
				<i class="ion-ios-location-outline"></i>
				<h3>Address</h3>
				<address>$Address</address>
			</div>
		</div>
		<div class="col-md-4">
			<div class="contact-phone">
				<i class="ion-ios-telephone-outline"></i>
				<h3>Phone Number</h3>
				<p><a href="tel:{$Phone}">$Phone</a></p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="contact-email">
				<i class="ion-ios-email-outline"></i>
				<h3>Email</h3>
				<p><a href="mailto:{$Email}">$Email</a></p>
			</div>
		</div>
	</div>
<div class="form">
	<form action="{$BaseURL}contact-us/sendMessage" method="post" role="form", class="contactForm">
		<div class="form-row">
			<div class="form-group col-md-6">
				<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
				<div class="validation"></div>
			</div>
			<div class="form-group col-md-6">
				<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
				<div class="validation"></div>
			</div>
		</div>
		<div class="form-group">
			<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject">
			<div class="validation"></div>
		</div>
		<div class="form-group">
			<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
			<div class="validation"></div>
		</div>
		<div class="text-center">
			<button type="submit">Send Message</button>
		</div>
	</form>
</div>

<div class="row">
	<div class="col-sm">
		<h2 class="title" align="center">Visit Us Here</h2>
		Address : $Address<br>
		Landline : $Landline<br>
		Phone Number : <% if $WA %><a href="https://api.whatsapp.com/send?phone=$Phone&text=Saya%20ingin%20bertanya%20sesuatu">
		<% else %>
			<a href="tel:{$Phone}">
		<% end_if %>$Phone</a><br>
		Instagram : <% if $Insta %><a href="$Insta">$Insta</a><% else %>No Insta<% end_if %><br>
		LinkedIn : <% if $LinkedIn %><a href="$LinkedIn">$LinkedIn</a><% else %>No LinkedIn<% end_if %><br>
		Facebook : <% if $Facebook %><a href="$Facebook">$Facebook</a><% else %>No Facebook<% end_if %><br>
	</div>
	<div class="col-sm" id="map">
		<h2 class="title" align="center">This is our place</h2>
		<% if $EmbedMap %>
		<div>$EmbedMap</div>
		<% else %>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.4427501106493!2d112.7684862143515!3d-7.304052673832717!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7fb89f1c42717%3A0x6858ff81a69f99a3!2sMorning%20Glory%20Enterprise!5e0!3m2!1sen!2sid!4v1579828524645!5m2!1sen!2sid" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
		<% end_if %>
	</div>
	</div>
	</div>
</section>