<%-- 
    Document   : Header
    Created on : Sep 19, 2023, 3:42:15 AM
    Author     : FPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <link rel="stylesheet" type="text/css" href="icomoon/icomoon.css">
        <link rel="stylesheet" type="text/css" href="css/vendor.css">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div id="header-wrap">

            <div class="top-content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="social-links">
                                <ul>
                                    <li>
                                        <a href="#"><i class="icon icon-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon icon-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon icon-youtube-play"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon icon-behance-square"></i></a>
                                    </li>
                                </ul>
                            </div><!--social-links-->
                        </div>
                        <div class="col-md-6">
                            <div class="right-element">
                               <% String role = (String) session.getAttribute("role"); 
                                  if (role != null) { %>

                                <a href="navbar?go=profile" class="user-account for-buy"><i
                                        class="icon icon-user"></i><span>Profile</span></a>
                                <li><a href="navbar?go=logout" ">Log Out</a></li>
                                <a href="#" class="cart for-buy"><i class="icon icon-clipboard"></i><span>Cart</span></a>
                                        <% } else { %>
                                <a href="navbar?go=login" class="user-account for-buy"><i
                                        class="icon icon-user"></i><span>Login</span></a>
                                <a href="navbar?go=register">Register</a>
                                        <% } %>

                                
                                
                                
                                
                                
                                <div class="action-menu">

                                    <div class="search-bar">
                                        <a href="#" class="search-button search-toggle" data-selector="#header-wrap">
                                            <i class="icon icon-search"></i>
                                        </a>
                                        <form role="search" method="get" class="search-box">
                                            <input class="search-field text search-input" placeholder="Search"
                                                   type="search">
                                        </form>
                                    </div>
                                </div>

                            </div><!--top-right-->
                        </div>

                    </div>
                </div>
            </div><!--top-content-->

            <header id="header">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-md-2">
                            <div class="main-logo">
                                <a href="index.html"><img src="images/main-logo.png" alt="logo"></a>
                            </div>

                        </div>

                        <div class="col-md-10">

                            <nav id="navbar">
                                <div class="main-menu stellarnav">
                                    <ul class="menu-list">
                                        <li class="menu-item active"><a href="home">Home</a></li>
                                        <li class="menu-item has-sub">
                                            <a href="#pages" class="nav-link">Pages</a>

                                            <ul>
                                                <li class="active"><a href="/home">Home</a></li>
                                                <li><a href="about.html">About <span class="badge bg-dark">PRO</span></a></li>
                                                <li><a href="styles.html">Styles <span class="badge bg-dark">PRO</span></a></li>
                                                <li><a href="blog.html">Blog <span class="badge bg-dark">PRO</span></a></li>
                                                <li><a href="single-post.html">Post Single <span class="badge bg-dark">PRO</span></a></li>
                                                <li><a href="shop.html">Our Store <span class="badge bg-dark">PRO</span></a></li>
                                                <li><a href="single-product.html">Product Single <span class="badge bg-dark">PRO</span></a></li>
                                                <li><a href="contact.html">Contact <span class="badge bg-dark">PRO</span></a></li>
                                                <li><a href="thank-you.html">Thank You <span class="badge bg-dark">PRO</span></a></li>
                                            </ul>

                                        </li>
                                        <li class="menu-item"><a href="#featured-books" class="nav-link">Featured</a></li>
                                        <li class="menu-item"><a href="#popular-books" class="nav-link">Popular</a></li>
                                        <li class="menu-item"><a href="#special-offer" class="nav-link">Offer</a></li>
                                        <li class="menu-item"><a href="#latest-blog" class="nav-link">Articles</a></li>
                                        <li class="menu-item"><a href="#download-app" class="nav-link">Download App</a></li>
                                        <li class="menu-item"><a href="https://templatesjungle.gumroad.com/l/booksaw-free-html-bookstore-template" class="nav-link btn btn-outline-dark rounded-pill m-0" target="_blank">Get PRO</a></li>
                                    </ul>

                                    <div class="hamburger">
                                        <span class="bar"></span>
                                        <span class="bar"></span>
                                        <span class="bar"></span>
                                    </div>

                                </div>
                            </nav>

                        </div>

                    </div>
                </div>
            </header>

        </div><!--header-wrap-->
    </body>
</html>
