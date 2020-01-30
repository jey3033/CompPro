<br>
<section class="news">
	<div class="container">
		<header class="section-header">
	    	<H3>News</H3>
	    </header>
	    <div class="row about-cols">
			<% loop $Results %>
        	<div class="col-md-4 wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
    		  	<div class="about-col">
    				<h2 class="title"><a href="news/show/{$ID}">$Title</a></h2>
    				<p>$Description.FirstParagraph</p>
        		</div>
    		</div>
    		<% end_loop %>
    	</div>

		<% if $Results.MoreThanOnePage %>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<% if $Results.NotFirstPage %>
					<li class="page-item">
						<a class="page-link" href="$Results.PrevLink" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
						</a>
					</li>
					<% end_if %>
					<% loop $Results.Pages %>
						<li class="page-item <% if $CurrentBool %>active<% end_if %>"><a class="page-link" href="$Link">$PageNum</a> </li>
					<% end_loop %>
					<% if $Results.NotLastPage %>
					<li class="page-item">
						<a class="page-link" href="$Results.NextLink" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							<span class="sr-only">Next</span>
						</a>
					</li>
					<% end_if %>
				</ul>
			</nav>
		<% end_if %>
	</div>
</section>
<br>