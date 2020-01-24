<nav id="nav-menu-container">
	<ul class = "nav-menu sf-js-enabled sf-arrows" style="touch-action: pan-y;">
    <% loop $Menu(1) %>
    	<% if $Children %>
        <li class = "menu-has-children <% if $isCurrent %>menu-item-active menu-active<% end_if %>">
            <a href="$Link" class="sf-with-ul" title="Go to the $Title page">
                $MenuTitle
            </a>
            <ul style="display: none;">
            	<% loop $Children %>
            		<li><a href="$Link" title="Go to the $Title page">$MenuTitle</a></li>
            	<% end_loop %>
            </ul>
        </li>
        <% else %>
        <li class = "<% if $isCurrent %>menu-item-active menu-active<% end_if %>">
            <a href="$Link" title="Go to the $Title page">
                $MenuTitle
            </a>
        </li>
        <% end_if %>
    <% end_loop %>
	</ul>
</nav>
