const sidebarElement = document.querySelector('.sidebar');
sidebarElement.innerHTML = `<h2 class="sidebar__heading">ASP Company</h2> 
<ul class="sidebar__list">
    <li>
        <i class="sidebar__icon fa-solid fa-house"></i>
        <a href="#">Home</a>
    </li>
    <li>
        <i class="sidebar__icon fa-solid fa-user"></i>
        <a href="#">User management</a>
    </li>
    <li>
        <i class="sidebar__icon fa-brands fa-product-hunt"></i>
        <a href="../index.html">Product management</a>
    </li>
    <li>
        <i class="sidebar__icon fa-brands fa-sketch"></i>
        <a href="#">Category management</a>
    </li>
    <li>
        <i class="sidebar__icon fa-solid fa-money-bill"></i>
        <a href="#">Bill management</a>
    </li>
    <li>
        <i class="sidebar__icon fa-solid fa-comment"></i>
        <a href="#">Comment management</a>
    </li>
</ul>   `