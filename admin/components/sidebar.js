const sidebarElement = document.querySelector('.sidebar');
sidebarElement.innerHTML = `<h2 class="sidebar__heading">ASP Company</h2> 
<ul class="sidebar__list">
    <li>
        <i class="sidebar__icon fa-solid fa-house"></i>
        <a href="#">Home</a>
    </li>
    <li>
        <i class="sidebar__icon fa-solid fa-user"></i>
        <a href="http://127.0.0.1:5500/user-management">User management</a>
    </li>
    <li>
        <i class="sidebar__icon fa-brands fa-product-hunt"></i>
        <a href="http://127.0.0.1:5500/product-management">Product management</a>
    </li>
    <li>
        <i class="sidebar__icon fa-brands fa-sketch"></i>
        <a href="http://127.0.0.1:5500/category-management">Category management</a>
    </li>
    <li>
        <i class="sidebar__icon fa-solid fa-money-bill"></i>
        <a href="http://127.0.0.1:5500/bill-management">Bill management</a>
    </li>
    <li>
        <i class="sidebar__icon fa-solid fa-comment"></i>
        <a href="http://127.0.0.1:5500/comment-management">Comment management</a>
    </li>
</ul>   `