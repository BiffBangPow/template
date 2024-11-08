<% include HTMLStart %>
<% include Navigation %>
<main class="layout" id="maincontent">
    <span id="scrollbeacon"></span>
    $Layout
</main>
<% if $Form %>
    <aside class="container">
        $Form
    </aside>
<% end_if %>
<% include Footer %>
<% include HTMLEnd %>
