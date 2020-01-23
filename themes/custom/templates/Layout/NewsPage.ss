<% loop $Results %>
<div>
	<div class="info-blog">
		<h3><a href="$Link">$Title</a></h3>
		<p>$Description.FirstParagraph</p>
	</div>
</div>
<% end_loop %>

<% if $Results.MoreThanOnePage %>
<div class="pagination">
	<nav aria-label="Page navigation example">
		<ul class="pagination">
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
				<a class="page-link" href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
			<% end_if %>
		</ul>
	</nav>
</div>
<% end_if %>