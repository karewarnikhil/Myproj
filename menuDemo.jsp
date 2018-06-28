
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Menu List</title>
<style>
@import url(http://fonts.googleapis.com/css?family=Montserrat:400,700);
#cssmenu,
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul li a,
#cssmenu #menu-button {
  margin: 0;
  padding: 0;
  border: 0;
  list-style: none;
  line-height: 1;
  display: block;
  position: relative;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
#cssmenu:after,
#cssmenu>ul:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
#cssmenu #menu-button {
  display: none;
}
#cssmenu {
  font-family: Montserrat, sans-serif;
  background: #333333;
}
#cssmenu>ul>li {
  float: left;
}
#cssmenu>ul>li>a {
  padding: 17px;
  font-size: 12px;
  letter-spacing: 1px;
  text-decoration: none;
  color: #dddddd;
  font-weight: 700;
  text-transform: uppercase;
  -webkit-transition: color .25s ease;
  -moz-transition: color .25s ease;
  transition: color .25s ease;
}
#cssmenu>ul>li:hover>a {
  color: #ffffff;
}
#cssmenu>ul>li.has-sub>a {
  padding-right: 30px;
}
#cssmenu ul>li.has-sub>a:after {
  position: absolute;
  top: 22px;
  right: 11px;
  width: 8px;
  height: 2px;
  display: block;
  background: #dddddd;
  content: '';
  -webkit-transition: background .25s ease;
  -moz-transition: background .25s ease;
  transition: background .25s ease;
}
#cssmenu>ul>li.has-sub:hover>a:after,
#cssmenu>ul>li.has-sub>a:hover:after {
  background: #ffffff;
}
#cssmenu ul>li.has-sub>a:before {
  position: absolute;
  top: 19px;
  right: 14px;
  display: block;
  width: 2px;
  height: 8px;
  background: #dddddd;
  content: '';
  -webkit-transition: all .25s ease;
  -moz-transition: all .25s ease;
  -ms-transition: all .25s ease;
  -o-transition: all .25s ease;
  transition: all .25s ease;
}
#cssmenu ul>li.has-sub:hover>a:before,
#cssmenu ul>li.has-sub>a:hover:before {
  top: 23px;
  height: 0;
}
#cssmenu ul ul {
  position: absolute;
  left: -9999px;
}
#cssmenu li:hover>ul {
  left: auto;
}
#cssmenu ul ul ul {
  margin-left: 100%;
  top: 0;
}
#cssmenu ul ul li {
  height: 0;
  -webkit-transition: height .25s ease;
  -moz-transition: height .25s ease;
  transition: height .25s ease;
}

#cssmenu li:hover>ul>li {
  height: 35px;
}
#cssmenu ul ul li a {
  width: 170px;
  padding: 11px 15px;
  border-bottom: 1px solid rgba(150, 150, 150, 0.15);
  font-size: 12px;
  text-decoration: none;
  color: #dddddd;
  font-weight: 400;
  background: #333333;
}
#cssmenu ul ul li:last-child>a,
#cssmenu ul ul li.last-item>a {
  border-bottom: 0;
}

#cssmenu ul ul li:hover>a,
#cssmenu ul ul li a:hover {
  color: #ffffff;
}
#cssmenu ul ul li.has-sub>a:after {
  top: 16px;
  right: 11px;
  background: #dddddd;
}

#cssmenu ul ul>li.has-sub:hover>a:after,
#cssmenu ul ul>li.has-sub>a:hover:after {
  background: #ffffff;
}

#cssmenu ul ul li.has-sub>a:before {
  top: 13px;
  right: 14px;
  background: #dddddd;
}

#cssmenu ul ul>li.has-sub:hover>a:before {
  top: 17px;
  height: 0;
}
#cssmenu.small-screen {
  width: 100%;
}

#cssmenu.small-screen ul {
  width: 100%;
  display: none;
}

#cssmenu.small-screen ul li {
  width: 100%;
  border-top: 1px solid rgba(120, 120, 120, 0.2);
}

#cssmenu.small-screen ul ul li,
#cssmenu.small-screen li:hover>ul>li {
  height: auto;
}

#cssmenu.small-screen ul li a,
#cssmenu.small-screen ul ul li a {
  width: 100%;
  border-bottom: 0;
}

#cssmenu.small-screen>ul>li {
  float: none;
}

#cssmenu.small-screen ul ul,
#cssmenu.small-screen ul ul ul {
  position: relative;
  left: 0;
  width: 100%;
  margin: 0;
  text-align: left;
}
#cssmenu.small-screen ul ul li a {
  padding-left: 25px;
}

#cssmenu.small-screen ul ul ul li a {
  padding-left: 35px;
}

#cssmenu.small-screen>ul>li.has-sub>a:after,
#cssmenu.small-screen>ul>li.has-sub>a:before,
#cssmenu.small-screen ul ul>li.has-sub>a:after,
#cssmenu.small-screen ul ul>li.has-sub>a:before {
  display: none;
}
#cssmenu.small-screen #menu-button {
  display: block;
  padding: 17px;
  color: #dddddd;
  cursor: pointer;
  font-size: 12px;
  text-transform: uppercase;
  font-weight: 700;
}
#cssmenu.small-screen #menu-button:after {
  position: absolute;
  top: 22px;
  right: 17px;
  display: block;
  height: 4px;
  width: 20px;
  border-top: 2px solid #dddddd;
  border-bottom: 2px solid #dddddd;
  content: '';
}

#cssmenu.small-screen #menu-button:before {
  position: absolute;
  top: 16px;
  right: 17px;
  display: block;
  height: 2px;
  width: 20px;
  background: #dddddd;
  content: '';
}
#cssmenu.small-screen #menu-button.menu-opened:after {
  top: 23px;
  border: 0;
  height: 2px;
  width: 15px;
  background: #ffffff;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  transform: rotate(45deg);
}

#cssmenu.small-screen #menu-button.menu-opened:before {
  top: 23px;
  background: #ffffff;
  width: 15px;
  -webkit-transform: rotate(-45deg);
  -moz-transform: rotate(-45deg);
  -ms-transform: rotate(-45deg);
  -o-transform: rotate(-45deg);
  transform: rotate(-45deg);
}
#cssmenu.small-screen .submenu-button {
  position: absolute;
  z-index: 99;
  right: 0;
  top: 0;
  display: block;
  border-left: 1px solid rgba(120, 120, 120, 0.2);
  height: 46px;
  width: 46px;
  cursor: pointer;
}

#cssmenu.small-screen ul ul .submenu-button {
  height: 34px;
  width: 34px;
}
#cssmenu.small-screen .submenu-button.submenu-opened {
  background: #262626;
}
#cssmenu.small-screen .submenu-button:after {
  position: absolute;
  top: 22px;
  right: 19px;
  width: 8px;
  height: 2px;
  display: block;
  background: #dddddd;
  content: '';
}

#cssmenu.small-screen ul ul .submenu-button:after {
  top: 15px;
  right: 13px;
}

#cssmenu.small-screen .submenu-button.submenu-opened:after {
  background: #ffffff;
}

#cssmenu.small-screen .submenu-button:before {
  position: absolute;
  top: 19px;
  right: 22px;
  display: block;
  width: 2px;
  height: 8px;
  background: #dddddd;
  content: '';
}

#cssmenu.small-screen ul ul .submenu-button:before {
  top: 12px;
  right: 16px;
}

#cssmenu.small-screen .submenu-button.submenu-opened:before {
  display: none;
}
</style>
</head>
<body>
<div id="cssmenu">  
   <ul>
       <c:forEach var="menu" items="${menuLevel}">
       		<li>${menu.menuNm}
       			<c:if test="{menu.listOfMenu.size() > 0}">
       				<ul>
       					<c:forEach var="menuOne" items="${menu.listOfMenu}">
		                	<li><a href='#'>${menuOne.menuNm}</a></li>
		                </c:forEach>
			        </ul>
       			</c:if>
       		
       		</li>
       </c:forEach>
       
   </ul>
</div>
</body>
</html>