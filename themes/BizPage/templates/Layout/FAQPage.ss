<br>
<section id="content">
	<div class="container">
	<header class="section-header">
    	<H3>FAQ</H3>
     </header>
	<div class="accordion" id="accordionExample">
	  <div class="card">
	  	<% loop $FAQ %>
	    <div class="card-header" id="heading{$ID}">
	      <h5 class="mb-0">
	      	<% if First %>
	        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse{$ID}" aria-expanded="true" aria-controls="collapse{$ID}">
	          $Question
	        </button>
	        <% else %>
	        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse{$ID}" aria-expanded="false" aria-controls="collapse{$ID}">
	          $Question
	        </button>
	        <% end_if %>
	      </h5>
	    </div>

	    <div id="collapse{$ID}" class="collapse" aria-labelledby="heading{$ID}" data-parent="#accordionExample">
	      <div class="card-body">
	        $Answer
	      </div>
	    </div>
	    <% end_loop %>
	  </div>
	</div>
</section>
<br>