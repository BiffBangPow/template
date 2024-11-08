<% if $SiteConfig.SocialInstagram %>
    <a href="$SiteConfig.SocialInstagram" rel="nofollow noopener" target="_blank"
       class="d-inline-flex justify-content-center align-items-center mx-1"
       title="<%t Template.FooterInstaLinkTitle 'Link to our Instagram page'%>">
        <img src="$resourceURL('themes/app/client/dist/img/square-instagram.svg')"
             alt="Instagram logo" height="22" loading="lazy">
    </a>
<% end_if %>

<% if $SiteConfig.SocialX %>
    <a href="$SiteConfig.SocialX" rel="nofollow noopener" target="_blank"
       class="d-inline-flex justify-content-center align-items-center mx-1"
       title="<%t Template.FooterXLinkTitle 'Link to our X feed'%>">
        <img src="$resourceURL('themes/app/client/dist/img/square-x-twitter.svg')"
             alt="Instagram logo" height="22" loading="lazy">
    </a>
<% end_if %>

<% if $SiteConfig.SocialLinkedIn %>
    <a href="$SiteConfig.SocialLinkedIn" rel="nofollow noopener" target="_blank"
       class="d-inline-flex justify-content-center align-items-center mx-1"
       title="<%t Template.FooterLinkedInLinkTitle 'Link to our Linked in page'%>">
        <img src="$resourceURL('themes/app/client/dist/img/linkedin.svg')"
             alt="Instagram logo" height="22" loading="lazy">
    </a>
<% end_if %>

<% if $SiteConfig.SocialYoutube %>
    <a href="$SiteConfig.SocialYoutube" rel="nofollow noopener" target="_blank"
       class="d-inline-flex justify-content-center align-items-center mx-1"
       title="<%t Template.FooterYouTubeLinkTitle 'Link to our Youtube page'%>">
        <img src="$resourceURL('themes/app/client/dist/img/youtube-square.svg')"
             alt="Instagram logo" height="22" loading="lazy">
    </a>
<% end_if %>

<% if $SiteConfig.SocialFacebook %>
    <a href="$SiteConfig.SocialFacebook" rel="nofollow noopener" target="_blank"
       class="d-inline-flex justify-content-center align-items-center mx-1"
       title="<%t Template.FooterFacebookLinkTitle 'Link to our Facebook page'%>">
        <img src="$resourceURL('themes/app/client/dist/img/facebook-square.svg')"
             alt="Instagram logo" height="22" loading="lazy">
    </a>
<% end_if %>
