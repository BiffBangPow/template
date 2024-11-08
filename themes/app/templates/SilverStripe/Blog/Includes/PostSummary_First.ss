<div class="row g-0">
    <div class="col-12 col-lg-6">
        <a href="$Link">
            <picture>
                <% with $FeaturedImage.ScaleWidth(600) %>
                    <source type="image/webp" srcset="$Convert('webp').URL">
                    <img alt="$Title" class="img-fluid" src="$URL" width="$Width" height="$Height">
                <% end_with %>
            </picture>
        </a>
    </div>
</div>
