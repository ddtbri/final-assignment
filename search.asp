<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>商品</title>
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
    <script src="js/vendor/jquery-1.12.0.min.js"></script>
    <style type="text/css">
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
</style>
</head>
<body>
	<!-- 数据库连接 -->
        <%
            Function ReadFromTextFile (FileUrl,CharSet)
                dim str
                set stm=server.CreateObject("adodb.stream")
                stm.Type=2
                stm.mode=3 
                stm.charset=CharSet
                stm.open
                stm.loadfromfile server.MapPath(FileUrl)
                str=stm.readtext
                stm.Close
                set stm=nothing
                ReadFromTextFile=str
            End Function
            strconnection=ReadFromTextFile("other/odbc.ini","utf-8")
            set conn = server.createobject("adodb.connection") 
            conn.open strconnection
        %>

        <!-- 加载函数 -->、
        <%
            Function GetUrl() 
            On Error Resume Next 
            Dim strTemp 
            If LCase(Request.ServerVariables("HTTPS")) = "off" Then 
             strTemp = "http://"
            Else 
             strTemp = "https://"
            End If 
            strTemp = strTemp & Request.ServerVariables("SERVER_NAME") 
            If Request.ServerVariables("SERVER_PORT") <> 80 Then 
             strTemp = strTemp & ":" & Request.ServerVariables("SERVER_PORT") 
            end if
            strTemp = strTemp & Request.ServerVariables("URL") 
            If Trim(Request.QueryString) <> "" Then 
             strTemp = strTemp & "?" & Trim(Request.QueryString) 
            end if
            GetUrl = strTemp 
            End Function
            url=GetUrl()
            sub load_element(span,name,price,pic_src1,pic_src2,gid)
                response.write "<div class='col-md-12'><div class='all-pros all-pros-6 animated fadeInUp'><div class='single_product_3 '><span>"&span&"</span></div><div class='sinle_pic'><a href='#'><img class='primary-img' src='"&pic_src1&"' alt='图片加载错误'/><img class='secondary-img' src='"&pic_src2&"' alt='图片加载错误'/></a></div><div class='product-action' data-toggle='modal' data-target='#myModal'><a href='detail.asp?gid="&gid&"'><button type='button' class='btn btn-info btn-lg quickview' data-toggle='tooltip' title='Quickview'>Quick View</button></a>   </div><div class='product_content'><div class='usal_pro'><div class='product_name_2'><h2><a href='#'>"&name&"</a></h2></div><div class='product_price'><div class='price_rating'><a href='#'><i class='fa fa-star'></i></a><a href='#'><i class='fa fa-star'></i></a><a href='#'><i class='fa fa-star'></i></a><a href='#'><i class='fa fa-star'></i></a><a class='not-rated' href='#'><i class='fa fa-star-o' aria-hidden='true'></i></a></div></div><div class='price_box'><span class='spical-price'>￥"&price&"</span></div><div class='last_button_area'><ul class='add-to-links clearfix'><li class='addwishlist'><div class='yith-wcwl-add-button show' ><a class='add_to_wishlist' href='' rel='nofollow' data-product-id='45' data-product-type='external' data-toggle='tooltip' title='' data-original-title='添加收藏'><i class='fa fa-heart'></i></a></div></li><li><div class='new_act'><a class='button_act' data-quick-id='45' href='add_cart.asp?href="&url&"&gid="&gid&"' title='' data-toggle='tooltip' data-original-title='不买要涨价'>加入购物车</a></div></li>   </ul></div></div></div></div></div>"
            end sub
        %>

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
                                        <a class="account" id="mylogin" data-toggle="modal" data-target="#myModal" style="cursor: pointer;">
                                        <%
                                            if Session("user")="" and Session("pass")="" then
                                                Response.Cookies("whetherlogin")="False"
                                                
                                            else
                                                Response.Cookies("whetherlogin")="True"
                                            end if
                                        %>
                                        </a>
                                    </li>
                                    <script>
                                        function getCookie(c_name)
                                        {
                                        if (document.cookie.length>0)
                                          {
                                          c_start=document.cookie.indexOf(c_name + "=")
                                          if (c_start!=-1)
                                            { 
                                            c_start=c_start + c_name.length+1 
                                            c_end=document.cookie.indexOf(";",c_start)
                                            if (c_end==-1) c_end=document.cookie.length
                                            return unescape(document.cookie.substring(c_start,c_end))
                                            } 
                                          }
                                        return ""
                                        }
                                        var jud=getCookie("whetherlogin")
                                        if(jud=="True")
                                        {
                                            $("#mylogin").html("退出登录")
                                            $("#mylogin").removeAttr("data-target")
                                            $("#mylogin").attr("href","index.asp?logout=True")
                                        }
                                        else
                                        {
                                            $("#mylogin").html("登录/注册")
                                        }
                                    </script>
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
                                        
                                        <span class="fa fa-angle-down"></span>
                                    </a>
                                    <div class="new_cart_section">
                                            <ol class="new-list">
                                            
                                                <%
                                                function load_li(img_route,name,price,amount)

                                                    response.write "<li class='wimix_area'><a class='pix_product' href=''><img alt='' src='"&img_route&"'></a><div class='product-details'><a href='#'>"&name&"</a><span class='sig-price'>"&amount&"×￥"&price&"</span></div><div class='cart-remove'><a class='action' href='#'><i class='fa fa-close'></i></a></div></li>"
                                                end function
                                                    
                                                    sql="select * from user where uid='"&Session("user")&"'and password='"&Session("pass")&"'"
                                                    set rs=conn.execute(sql)
                                                    if rs.bof then
                                                        rs.close
                                                        set rs=nothing
                                                    else
                                                    
                                                        set rs=nothing
                                                        sql2="select goods.name,goods.price,goods.pic_route,cart.uid,cart.gid,cart.amount from goods,cart where goods.gid=cart.gid and cart.uid='"&Session("user")&"'"
                                                        alltotal=0
                                                        set rs=conn.execute(sql2)
                                                        if not rs.bof then
                                                            do while not rs.eof
                                                                call load_li(rs("pic_route"),rs("name"),rs("price"),rs("amount"))
                                                                alltotal=alltotal+rs("price")*rs("amount")
                                                                rs.movenext
                                                            loop
                                                        end if
                                                    end if
                                                    

                                                %>
                                               
                                            </ol>
                                            <div class="top-subtotal">
                                                Subtotal: <span class="sig-price">￥<%=alltotal%></span>
                                            </div>
                                            <div class="cart-button">
                                                <ul>
                                                    <li>
                                                        <a href="cart.asp">View my cart <i class="fa fa-angle-right"></i></a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Checkout <i class="fa fa-angle-right"></i></a>
                                                    </li>
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
                                            <span>All Categories</span>
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
<!--slider area start-->
<div class="new_slide_mix_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="sl_new_contnt">
                    <div class="sl_heading">
                        <h2>About Us</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--goods start-->
<div class="goods" >
    <div class="row" style="width:95%;box-sizing: border-box;padding-left:70px; ">
        <div class="feature-carousel indicator-brand-3">
           
            								<%

                                            aaa=Request.QueryString("s")
                                            
                                            sql="select * from goods where name REGEXP '"&aaa&"'"
                                            
                                            set rs=conn.execute(sql)
                                            if not rs.bof then
                                                count=0
                                                do while not rs.eof
                                                    call load_element("new",rs("name"),rs("price"),rs("pic_route"),rs("pic_route2"),rs("gid"))
                                                    rs.movenext
                                                    count=count+1
                                                loop
                                                
                                            end if
                                            rs.close
                                            set rs=nothing
                                            %>
        </div>
    </div>
</div>
<!--goods end-->
<!--footer bottom area start-->
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
                                    <p>My Company : 42 avenue des Champs Elysées 75000  France</p>
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
<%
        conn.close
        set conn=nothing
    %>
</body>
</html>


