<% loop $Results %>
<div class="item col-md-12"><!-- Set width to 4 columns for grid view mode only -->
	<div class="image image-large">
		<a href="$Link">
			<span class="btn btn-default"><i class="fa fa-file-o"></i> Read More</span>
		</a>
	</div>
	<div class="info-blog">
		<h3><a href="$Link">$Title</a></h3>
		<p>$Description.FirstParagraph</p>
	</div>
</div>
<% end_loop %>

<% if $Results.MoreThanOnePage %>
<div class="pagination">
	<% if $Results.NotFirstPage %>
	<ul id="previous col-xs-6">
		<li><a href="$Results.PrevLink" class="page-link">
			<span aria-hidden="true">&laquo;</span>
			<!-- <span class="sr-only">Next</span> -->
		</a></li>
	</ul>
	<% end_if %>
	<ul class="hidden-xs">
	<% loop $Results.Pages %>
		<li <% if $CurrentBool %> class="active" <% end_if %>><a href="$Link">$PageNum</a> </li>
	<% end_loop %>
	</ul>
	<% if $Results.NotLastPage %>
	<ul id="next col-xs-6">
		<li><a href="$Results.NextLink" class="page-link">
			<span aria-hidden="true">&raquo;</span>
			<!-- <span class="sr-only">Next</span> -->
		</a></li>
	</ul>
	<% end_if %>
</div>
<% end_if %>