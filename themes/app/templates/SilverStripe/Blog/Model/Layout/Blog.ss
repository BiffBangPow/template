<div class="container pt-5">

    <img src="$resourceURL('themes/app/client/dist/img/logo-without-strap.svg')"
         alt="BAFSA logo" width="160" height="48" class="img-fluid">

    <h1>
        $Title
        <% if $ArchiveYear %>
            <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
            <% if $ArchiveDay %>
                $ArchiveDate.Nice
            <% else_if $ArchiveMonth %>
                $ArchiveDate.format('MMMM, y')
            <% else %>
                $ArchiveDate.format('y')
            <% end_if %>
        <% else_if $CurrentTag %>
            <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title
        <% else_if $CurrentCategory %>
            <%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title
        <% end_if %>
    </h1>

    <div class="content">$Content</div>


    - Need to add some logic to the blog here so this design will make sense.
    - Add a 'IsFeatureStory' boolean to the blog post model
    - Add some logic in onBeforeWrite to see if the story is the latest story on the system and if so, mark it as the
    featured one
    and remove the flag from all the other stories


    <% if $PaginatedList.Exists %>

        <% with $PaginatedList.First %>
            <% if $IsFeatureStory %>
                <% include SilverStripe\\Blog\\PostSummary_First %>
            <% end_if %>
        <% end_with %>

        <div class="row">
            <% loop $PaginatedList %>
                <% include SilverStripe\\Blog\\PostSummary %>
            <% end_loop %>
        </div>
    <% else %>
        <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
    <% end_if %>


    <div class="blog-pagination">
        <% with $PaginatedList %>
            <% include SilverStripe\\Blog\\Pagination %>
        <% end_with %>
    </div>

</div>
