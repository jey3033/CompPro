<nav class="primary">
	<span class="nav-open-button"></span>
	<ul class = "nav nav-pills card-header-pills">
    <% loop $Menu(1) %>
        <li>
            <a href="$Link" title="Go to the $Title page" class="nav-link  <% if $isCurrent %>active<% end_if %>">
                $MenuTitle
            </a>
        </li>
    <% end_loop %>
	</ul>
</nav>
