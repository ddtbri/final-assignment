<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>收藏</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- all css here -->
        <!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- jquery-ui.min css -->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
        <!-- nivo slider css -->
        <link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
        <link rel="stylesheet" href="lib/css/preview.css" type="text/css" />
        <!-- owl.carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <!-- font-awesome css -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- modernizr js -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>



        <!--header top area start-->
        <div class="header_area">
            <div class="header_border">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_heaft_area">
                                 <h4 style="margin-top: 15px; font-family: 楷书;">
        <%response.write "当前用户:" & Session("user")%>
        </h4>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_right_area">
                                <ul>
                                   <li>
                                        <a class="account" id="mylogin" data-toggle="modal" data-target="#myModal" style="cursor: pointer;">登陆/注册</a>
                                    </li>
                                    <li>
                                        <a class="wishlist" href="order.asp">我的订单</a>
                                    </li>
                                    <li>
                                        <a class="Shopping cart" href="cart.asp">购物车</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header top area end-->
            <!--header middle area start-->
            <div class="header_middle">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="logo_area">
                                <a href="index.asp"><img src="img/logo-pic/logo.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="header_all search_box_area">
                                <form class="new_search" role="search" method="get" action="#">
                                    <input id="mix_search" class="search-field" placeholder="查找商品" value="" name="s" title="Search for:" type="search">
                                    <input value="Search" type="submit">
                                    <input name="post_type" value="product" type="hidden">
                                </form>
                            </div>
                            <div class="header_all shopping_cart_area">
                                <div class="widget_shopping_cart_content">
                                    <div class="topcart">
                                        <a class="cart-toggler" href="">
                                        <i class="icon"></i>
                                        <span class="my-cart">购物车</span>
                                        <span class="qty">2 件</span>
                                        <span class="fa fa-angle-down"></span>
                                        </a>
                                        <div class="new_cart_section">
                                            <ol class="new-list">
                                                <!-- single item -->
                                                <li class="wimix_area">
                                                    <a class="pix_product" href="">
                                                    <img alt="" src="img/product-pic/7-150x98.jpg">
                                                    </a>
                                                    <div class="product-details">
                                                        <a href="#">Adipiscing cursus eu</a>
                                                        <span class="sig-price">1×￥300.00</span>
                                                    </div>
                                                    <div class="cart-remove">
                                                        <a class="action" href="#">
                                                        <i class="fa fa-close"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <!-- single item -->
                                                <!-- single item -->
                                                <li class="wimix_area">
                                                    <a class="pix_product" href="#">
                                                    <img alt="" src="img/product-pic/1-150x98.jpg">
                                                    </a>
                                                    <div class="product-details">
                                                        <a href="#">Duis convallis</a>
                                                        <span class="sig-price">1×￥100.00</span>
                                                    </div>
                                                    <div class="cart-remove">
                                                        <a class="action" href="#">
                                                        <i class="fa fa-close"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <!-- single item -->
                                            </ol>
                                            <div class="top-subtotal">
                                                总价: <span class="sig-price">￥400.00</span>
                                            </div>
                                            <div class="cart-button">
                                                <ul>
                                                    <li>
                                                        <a href="cart.asp">
                                                        浏览购物车
                                                        <i class="fa fa-angle-right"></i>
                                                        </a>
                                                    </li>
                                                    <!-- <li>
                                                        <a href="#">
                                                        Checkout
                                                        <i class="fa fa-angle-right"></i>
                                                        </a>
                                                    </li> -->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header bottom area start-->
            <div class="all_menu_area">
                <div class="menu_inner">
                    <div class="container">
                        <div class="full_menu clearfix">
                            <div class="new_menu">
                                <div class="drp-menu">
                                    <div class="col-md-3 pr pl">
                                        <div class="all_catagories">
                                            <div class="enable_catagories">
                                                <i class="fa fa-bars"></i>
                                                <span>所有种类</span>
                                                <i class="fa fa-angle-down"></i>
                                            </div>
                                        </div>
                                        <div class="catagory_menu_area">
                                            <div class="catagory_mega_menu">
                                                <div class="cat_mega_start">
                                                     <ul class="list">
                                                        <li class="next_area">
                                                            <a class="item_link" href="#">
                                                                <i class="fa fa-television"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        笔记本
                                                                        <!-- <span class="link_descr">Praesent accumsan elementum maximus </span> -->
                                                                    </span>
                                                                </span>
                                                            </a>
                                                           
                                                        </li>
                                                        <li class="differ_sec_area">
                                                            <a class="item_link" href="#">
                                                                <i class="fa fa-mobile"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        手机
                                                                       <!--  <span class="link_descr">Praesent accumsan elementum maximus </span> -->
                                                                    </span>
                                                                </span>
                                                            </a>
                                                          
                                                        </li>
                                                       
                                                        <li>
                                                            <a class="item_link item_link_2" href="#">
                                                                <i class="fa fa-heart"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        收藏
                                                                        <!-- <span class="link_descr">Praesent accumsan elementum maximus</span> -->
                                                                    </span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                      
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--menu area start-->
                                    <div class="col-md-9 pl">
                                        <div class="menu_area">
                                            <div class="menu">
                                                <nav>
                                                    <ul>
                                                       <li><a href="index.asp">主页</a></li>
                                                        <li><a href="about-us.asp">关于</a></li>
                                                        <li><a href="cart.asp">购物车</a></li>
                                                        <li><a href="collection.asp">收藏</a></li>
                                                        <li><a href="order.asp">订单</a></li>
                                                        <li><a href="contact-us.asp">联系我们</a></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--header area end-->
        <!-- mobile-menu-area-start -->
      
        <!-- mobile-menu-area-end -->
        <!--social design arae start-->
        <div class="link_area">
            <div class="container">
                <div class="row">
                    <div class="social_design on_right">
                        <ul>
                           <li>
                                <a class="facebook" target="_blank" href="#facebook">
                                    <span>
                                        <i class="fa fa-facebook"></i>
                                        <span class="social-text">分享到QQ</span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a class="twitter" target="_blank" href="#twitter.com">
                                    <span>
                                        <i class="fa fa-twitter"></i>
                                        <span class="social-text">分享到微信</span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a class="youtube" target="_blank" href="#youtube">
                                    <span>
                                        <i class="fa fa-youtube"></i>
                                        <span class="social-text">复制链接</span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a class="mail-to" target="_blank" href="mailto:lionthemes88@gmail.com">
                                    <span>
                                        <i class="fa fa-envelope-o"></i>
                                        <span class="social-text">联系我们</span>
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--social design arae end-->
        <!-- shop area start-->
        <div class="shop_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="shop_menu">
                            <!-- <ul class="cramb_area cramb_area_2 ">
                                <li><a href="index.asp">Home /</a></li>
                                <li><a href="#">Cart</a></li>
                            </ul> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- shop area end-->
        <div class="shopping_cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="account_heading account_heading_ah">
                            <h1>购物车</h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="all_wis_frm">
                        <div class="col-md-12">
                            <div class="wishlist-content wishlist-content-2">
                                <form action="#">
                                    <div class="wishlist-table wishlist-table-2 table-responsive">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th class="product-remove"><span class="nobr"></span></th>
                                                    <th class="product-thumbnail product-thumbnail-2"></th>
                                                    <th class="product-name product-name_2"><span class="nobr" style="padding-left: 70px;font-size: 14pt;">产品</span></th>
                                                    <th class="product-price"><span class="nobr" style="padding-left:60px;font-size:14pt;"> 价格 </span></th>
                                                    <th class="product-stock-stauts"><span class="nobr" style="padding-left:50px;font-size:14pt;"> 添加购物车 </span></th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="product-remove product-remove_2"><a href="#">×</a></td>
                                                    <td class="product-thumbnail product-thumbnail-2"><a href="#"><img src="img/wishlist/pic-1.jpg" alt="" /></a></td>
                                                    <td class="product-name product-name_2"><a href="#">Duis convallis</a></td>
                                                    <td class="product-price"><span class="amount-list amount-list-2">￥100.00</span></td>
                                                    <!-- <td class="product-stock-status">
                                                        <div class="latest_es_from_2">
                                                            <input type="number" value="1">
                                                        </div>
                                                    </td> -->
                                                    <td class="add-to-cart"><span class="amount-list amount-list-2" style="padding: 50px"><input type="button" value="添加"/></span></td>
                                                </tr>
                                                <tr>
                                                    <td class="product-remove product-remove_2"><a href="#">×</a></td>
                                                    <td class="product-thumbnail product-thumbnail-2"><a href="#"><img src="img/wishlist/pic-2.jpg" alt="" /></a></td>
                                                    <td class="product-name"><a href="#">Adipiscing cursus eu</a></td>
                                                    <td class="product-price"><span class="amount-list amount-list-2">￥300.00</span></td>
                                                    <!-- <td class="product-stock-status">
                                                        <div class="latest_es_from_2">
                                                            <input type="number" value="1">
                                                        </div>
                                                    </td> -->
                                                    <td class="add-to-cart"><span class="amount-list amount-list-2" style="padding: 50px;"> <input type="button" value="添加"/></span></td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                              <!--   <tr>
                                                    <td colspan="6">
                                                        <div class="coupon">
                                                            <label for="coupon_code"></label>
                                                            <input id="coupon_code" class="input-text" type="text" placeholder="Coupon code" value="" name="coupon_code">
                                                            <a class="button_act button_act_3 button_act_333 button_act_tp " href="#">使用优惠卷</a>
                                                          
                                                        </div>
                                                    </td>
                                                </tr> -->
                                            </tfoot>
                                        </table>
                                    </div>
                                </form>
                                <div class="row" style="height: 100px;">
                                   <!--  <div class="col-md-6 col-xs-12">
                                        <div class="cart_totals ">
                                            <h2>购物车总览</h2>
                                            <table class="shop_table shop_table_responsive">
                                                <tbody>
                                                    <tr class="cart-subtotal">
                                                        <th>Subtotal</th>
                                                        <td data-title="Subtotal">
                                                            <span class="woocommerce-Price-amount amount">
                                                            <span class="woocommerce-Price-currencySymbol">￥</span>
                                                            800.00
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr class="order-total">
                                                        <th>Total</th>
                                                        <td data-title="Total">
                                                            <strong>
                                                            <span class="woocommerce-Price-amount amount">
                                                            <span class="woocommerce-Price-currencySymbol">￥</span>
                                                            800.00
                                                            </span>
                                                            </strong>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="wc-proceed-to-checkout">
                                                <a class="button_act button_act-tc " href="#">	结算购物车</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xs-12">
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--brand area start-->
        <div class="logo_area">
            <div class="container">
                <div class="row">
                    <div class="brand brand-2">
                        <div class="new_product new_product_nx">
                            <div class="product_heading product_heading_tf">
                                <i class="fa fa-coffee"></i>
                                <span>品牌 Logo</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="main_brand main_brand_tf">
                            <div class="all_brand indicator-brand indicator-brand-7">
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_1.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_2.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_3.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_4.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_5.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_6.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_3.jpg" alt="" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--brand area end-->
        <!--newsletter area start-->
        <div class="all_news_letter">
            <div class="news_letter">
                <div class="news_middele">
                    <div class="container">
                        <div class="row">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--newsletter area end-->
        <!--footer top area start-->
        <div class="footer_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3>Information </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">our blog</a>
                                    </li>
                                    <li>
                                        <a href="#">about our shop</a>
                                    </li>
                                    <li>
                                        <a href="#">secure shopping</a>
                                    </li>
                                    <li>
                                        <a href="#">privecy policy</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3>My Account </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">My Account</a>
                                    </li>
                                    <li>
                                        <a href="#">Wishlist</a>
                                    </li>
                                    <li>
                                        <a href="#">Shopping Cart</a>
                                    </li>
                                    <li>
                                        <a href="#">Checkout</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3> Our Services </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">Shipping & Returns</a>
                                    </li>
                                    <li>
                                        <a href="#">Secure Shopping</a>
                                    </li>
                                    <li>
                                        <a href="#">International Shipping</a>
                                    </li>
                                    <li>
                                        <a href="#">Affiliates</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu footer_menu_2">
                            <div class="news_heading_2">
                                <h3> Store Information </h3>
                            </div>
                            <ul>
                                <li>
                                    <i class="fa fa-home"></i>
                                    <p>My Company : 42 avenue des Champs Elysées 75000 France</p>
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i>
                                    <p>Phone: (0123) 456789</p>
                                </li>
                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <p>Email: admin@hastech.company</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer top area end-->
            <!--footer middle area start-->
            <div class="footer_middle">
                <div class="container">
                    <div class="fotter_inner">
                        <div class="middele_pic">
                            <img src="img/icon/payment-300x30.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer middle area end-->
        <!--footer bottom area start-->
        <div class="footer-bottom">
            <div class="container">
                <div class="widget-copyright text-center">
                    版权所有：金氏文化软件传媒集团
                </div>
            </div>
        </div>
		<!--footer bottom area end-->
		
		<div class="modal fade" id="myModal" role="dialog">

            <div class="modal-dialog modal-dialog-2">
                <!-- Modal content-->
                <div class="modal-content" style="background-image: url(img/newimage/register.jpg);background-size: 80% 55%;background-attachment: fixed; background-repeat: no-repeat;">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body" style="width: 300px;height: 200px;">
                        
                        <div class="modal-product" style="cursor: pointer;" >
                            <div class="userentrance" style="border:1px solid;border-radius:5px;width: 100px;height:40px;text-align: center;margin-left:270px;margin-top: 0px;line-height: 40px;" ><a href="login.asp">用户登陆</a></div>
                            <div class="superentrance" style="border:1px solid;border-radius:5px;width: 100px;height:40px;text-align: center;margin-left:380px;margin-top: -40px;line-height: 40px;"><a href="superlogin.asp">管理员登陆</a></div>
                        </div>
                    </div>
                    <!-- <img src="img/newimage/register.jpg" style="width: 600px;height: 200px;"> -->
                </div>
            </div>
        </div>
		
		
		
        <!-- all js here -->
        <!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- nivo slider js -->
        <script src="lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="lib/home.js" type="text/javascript"></script>
        <!-- owl.carousel js -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
        <!-- jquery-ui js -->
        <script src="js/jquery-ui.min.js"></script>
        <!-- easing js -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- mixitup js -->
        <script src="js/jquery.mixitup.min.js"></script>
        <!-- jquery.countdown js -->
        <script src="js/jquery.countdown.min.js"></script>
        <!-- wow js -->
        <script src="js/wow.min.js"></script>
        <!-- popup js -->
        <script src="js/jquery.magnific-popup.min.js"></script> 
        <!-- plugins js -->
        <script src="js/plugins.js"></script>
        <!-- main js -->
        <script src="js/main.js"></script>
    </body>
</html>


