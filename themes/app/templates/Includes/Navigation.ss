<div id="main-navbar" class="brand-gradient-2 position-fixed w-100">
<div id="logo-holder" class="d-lg-flex justify-content-center align-items-center">
    <img src="$resourceURL('themes/app/client/dist/img/nav-logo-1.svg')" id="nav-logo"
         alt="BAFSA logo" width="60" height="17" class="visible">
    <img src="$resourceURL('themes/app/client/dist/img/nav-logo-2.svg')" id="nav-logo-alt"
         alt="BAFSA logo" width="60" height="17" class="d-lg-none">
</div>
    <div id="nav-bun" class="d-lg-none">
        <button class="hamburger hamburger--spin" type="button" id="navtoggler" aria-label="Toggle navigation"
                aria-controls="mainnav-holder">
  <span class="hamburger-box">
    <span class="hamburger-inner"></span>
  </span>
        </button>
    </div>

    <nav id="mainnav-holder" class="ps-4 pe-5 pt-9 pb-4 p-lg-0" aria-expanded="false">
        <ul class="p-0 m-0" id="tier1-nav">
            <% loop $MainMenu %>
                <li class="nav-item $URLSegment<% if $MenuChildren %> has-children<% end_if %> py-2 tier1-navitem">
                    <% if $MenuChildren %>
                        <button class="nav-expander d-inline-block btn-lg tier1-nav-expander"
                                aria-controls="tier2-nav-$ID" aria-label="Expand child menu"><span
                            class="opener">+</span><span class="closer">−</span></button>
                    <% end_if %>
                    <a class="nav-link <% if $isCurrent || $isSection %>active<% end_if %>" href="$Link">$Title</a>
                    <% if $MenuChildren %>
                        <ul class="tier2-nav child-nav" id="tier2-nav-$ID" aria-expanded="false">
                            <% loop $MenuChildren %>
                                <li class="child-nav-item $URLSegment py-1 tier2-navitem<% if $MenuChildren %> has-children<% end_if %>">
                                    <a class="nav-link <% if $isCurrent || $isSection %>active<% end_if %>"
                                       href="$Link">$Title</a>
                                    <% if $MenuChildren %>
                                        <ul class="tier3-nav child-nav open" id="tier3-nav-$ID">
                                            <% loop $MenuChildren %>
                                                <li class="child-nav-item $URLSegment py-1 tier3-navitem">
                                                    <a class="nav-link <% if $isCurrent || $isSection %>active<% end_if %>"
                                                       href="$Link">$Title</a>
                                                </li>
                                            <% end_loop %>
                                        </ul>
                                    <% end_if %>
                                </li>
                            <% end_loop %>
                        </ul>
                    <% end_if %>
                </li>
            <% end_loop %>
        </ul>
    </nav>

    <div id="socials-large" class="d-none d-lg-flex justify-content-center align-items-center">
        <% if $HasSocial %>
            <% include SocialIcons %>
        <% end_if %>
    </div>

</div>
