<div class="post-summary col-12 col-lg-4">
	<h2>
		<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $MenuTitle %>$MenuTitle
			<% else %>$Title<% end_if %>
		</a>
	</h2>

    <a href="$Link">
        <picture>
            <% with $FeaturedImage.ScaleWidth(600) %>
                <source type="image/webp" srcset="$Convert('webp').URL">
                <img alt="$Title" class="img-fluid" src="$URL" width="$Width" height="$Height">
            <% end_with %>
        </picture>
    </a>

	<% if $Summary %>
		$Summary
	<% else %>
		<p>$Excerpt</p>
	<% end_if %>
	    <p>
			<a href="$Link">
				<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
			</a>
		</p>

	<% include SilverStripe\\Blog\\EntryMeta %>
</div>
