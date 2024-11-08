<footer>
    <div id="footer-contact-holder">

        <div class="row g-0">
            <div class="col-12 col-lg-6 pt-5 d-flex justify-content-between flex-column">
                <div class="container-lg-semi me-lg-0">
                    <div class="p-4">
                        <img src="$resourceURL('themes/app/client/dist/img/logo-with-strap.svg')" id="footer-logo"
                             alt="BAFSA logo" width="193" height="80">
                        <div id="footer-form-embed">
                            Form Embed
                        </div>
                    </div>
                </div>
                <div class="brand-gradient-3 p-3"></div>
            </div>
            <div class="col-12 col-lg-6 py-5 brand-gradient-1 text-white">
                <div class="container-lg-semi ms-lg-0">
                    <div id="footer-contact-addresses" class="px-4 pt-4 pb-2 text-lg-end">
                        <% with $SiteConfig %>
                            <p><b>$OrgName</b>
                                <br>$OrgAddress</p>

                            <% if $RegisteredAddress %>
                                <p>
                                    <b><%t Template.RegisteredAddress 'Registered Address' %></b>
                                    <br>$RegisteredAddress
                                </p>
                            <% end_if %>

                            <% if $OrgEmail %>
                                <p><b><%t Template.Email 'Email:' %></b> <a href="mailto:$OrgEmail">$OrgEmail</a>
                                </p>
                            <% end_if %>
                            <% if $OrgPhone %>
                                <p><b><%t Template.Phone 'Phone:' %></b> $OrgPhone</p>
                            <% end_if %>
                        <% end_with %>
                    </div>
                    <% if $HasSocial %>
                        <div id="footer-social-icons" class="px-4 pt-2 pb-4 text-lg-end">
                            <% include SocialIcons %>
                        </div>
                    <% end_if %>
                </div>
            </div>
        </div>
    </div>

    <div id="footer-nav-holder" class="container p-4">
        <p>
            <% loop $FooterMenu() %>
                <a class="<% if $IsFirst %>me-2<% else_if $IsLast %>ms-2<% else %>mx-2<% end_if %>" href="$Link"
                   title="$Title.XML">
                    $MenuTitle.XML
                </a>
            <% end_loop %>
        </p>
    </div>
    <div id="footer-copyright" class="container pb-5 px-4">
        <p><span class="copyright-text pe-2 me-2">&copy; $Now.Year</span>
            <span class="credit-text"><%t Template.CraftedBy 'Website crafted by' %> <a href="https://biffbangpow.com"
                                                                                        target="_blank" rel="noopener">Biff Bang Pow</a></span>
        </p>
    </div>
</footer>

