<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://unpkg.com/moralis-v1/dist/moralis.js"></script>
<style>
.login{
}

.disconnect{
	padding: 10px 18px;
	border-radius:10px;
	border: 1px solid #e7e3eb;
	background: #fff;
	font-size: 1rem;
	position: absolute;
	margin-top: 14px;
	z-index: 101;
	color:#3e3b4a;
	font-weight:bold;
	display:none;
	cursor:pointer;
}

.disconnect:hover{
	background:#d3d3d3;
}
.walletaddress{
	border:1px solid #eff4f5;
	text-align:center;
	border-radius:10px;
	padding:5px 5px 5px 15px;
	background:#eff4f5;
	font-weight:bold;
	box-shadow:rgb(0 0 0/10%) 0px -2px 0px inset;
	margin-top:20px;
	cursor:pointer;
}

.walletaddress:hover{
	background:#eff4f587;
}
a {
  text-decoration: none;
}
@charset "UTF-8";
.navigation {
  height: 70px;
  background: #ffffff;
  border-bottom: 1px solid #ebeef2;
}

.brand {
  position: absolute;
  float: left;
  height:70px;
  line-height:60px;
}
.brand a,
.brand a:visited {
  color: #ffffff;
  text-decoration: none;
}

.logo{
	height:70px;
}

.logoImg{
	display:inline-block;
	align-items:center;
	margin-left:20px;
	width:150px;
	height:auto;
	vertical-align:middle;
}

.logoName{
	display:inline-block;
	font-size:35px;
	font-weight:bold;
	color:#3e3b4a;
	vertical-align:middle;
}

.nav-container {
  max-width: 1000px;
  margin: 0 auto;
}

nav {
  float: right;
}
nav ul {
  list-style: none;
  margin: 0;
  padding: 0;
}
nav ul li {
  float: left;
  position: relative;
}
nav ul li a,
nav ul li a:visited {
  display: block;
  padding: 0 20px;
  line-height: 70px;
  background: #ffffff;
  color: #3e3b4a;
  text-decoration: none;
  border-bottom: 1px solid #ebeef2;
}
nav ul li a:hover,
nav ul li a:visited:hover {
  background: #3e3b4a;
  color: #ffffff;
  text-decoration:none;
}
nav ul li a:not(:only-child):after,
nav ul li a:visited:not(:only-child):after {
  padding-left: 4px;
  content: " ???";
}
nav ul li ul li {
  min-width: 190px;
}
nav ul li ul li a {
  padding: 15px;
  line-height: 20px;
}

.nav-dropdown {
  position: absolute;
  display: none;
  z-index: 1;
  box-shadow: 0 3px 12px rgba(0, 0, 0, 0.15);
}

/* Mobile navigation */
.nav-mobile {
  display: none;
  position: absolute;
  top: 0;
  right: 0;
  background: #262626;
  height: 70px;
  width: 70px;
}

@media only screen and (max-width: 798px) {
  .nav-mobile {
    display: block;
  }

  nav {
    width: 100%;
    padding: 70px 0 15px;
  }
  nav ul {
    display: none;
  }
  nav ul li {
    float: none;
  }
  nav ul li a {
    padding: 15px;
    line-height: 20px;
  }
  nav ul li ul li a {
    padding-left: 30px;
  }

  .nav-dropdown {
    position: static;
  }
}
@media screen and (min-width: 799px) {
  .nav-list {
    display: block !important;
  }
}
#nav-toggle {
  position: absolute;
  left: 18px;
  top: 22px;
  cursor: pointer;
  padding: 10px 35px 16px 0px;
}
#nav-toggle span,
#nav-toggle span:before,
#nav-toggle span:after {
  cursor: pointer;
  border-radius: 1px;
  height: 5px;
  width: 35px;
  background: #ffffff;
  position: absolute;
  display: block;
  content: "";
  transition: all 300ms ease-in-out;
}
#nav-toggle span:before {
  top: -10px;
}
#nav-toggle span:after {
  bottom: -10px;
}
#nav-toggle.active span {
  background-color: transparent;
}
#nav-toggle.active span:before, #nav-toggle.active span:after {
  top: 0;
}
#nav-toggle.active span:before {
  transform: rotate(45deg);
}
#nav-toggle.active span:after {
  transform: rotate(-45deg);
}

.walletMenu {
  width:150px;
  height:30px;
  display: flex;
  align-items: center;
  margin-top:15px;
  margin-right: 25px;
}
.walletAddress {
  display: flex;
  border:1px solid #eff4f5;
  border-radius: 12px;
  padding:5px 10px;
  background-color: #eff4f5;
  cursor:pointer;
  box-shadow:rgb(0 0 0 / 10%) 0px -2px 0px inset;
}
.logout{
  position:absolute;
  top:50px;
  margin-left:4px;
  border:2px solid #dfdfdf;
  border-radius:9px;
  z-index:100;
  background-color:white;
  padding:5px 10px;
  cursor:pointer;
  display:none;
}

/* ????????? ?????? */
.modal{
	position:absolute;
	width:100%; height:100%;
	background:rgba(0,0,0,0.3);
	top:0; left:0;
	display:none;
	z-index:100;
}

.modal_content{
	position:fixed;
	width:40%;
	height:210px;
	border-radius:15px;
	margin:auto;
	background-color:white;
	top:0; bottom:0; right:0; left:0;
}

.k_wallet{
	margin:0 auto;
	margin-top:20px;
	width:65%;
	border-radius:10px;
	text-align:center;
	background:#fee500;
	padding:10px;
	color:#333333;
}

.m_wallet{
    margin:0 auto;
    margin-top:20px;
	width:65%;
	border-radius:10px;
	text-align:center;
	background:#ededed;
	padding:10px;
	box-shadow:rgb(198 203 211) 0px 1px 1px 0px;
	color:#333333;
	cursor:pointer;
}

#meta_icon{
	width:8%;
	margin-right:8px;
	vertical-align:middle;
	padding-bottom:3px;
}

#p1{
	padding:20px 20px 0px 20px;
	font-weight:bold;
	color:#333333;
}

#p2{
	font-size:0.8rem;
	color:#333333;
	text-align:center;
	border-bottom:1px solid #dee3eb;
	padding:20px;
	width:85%;
	margin:0 auto;
}

#p3{
	text-align:center;
	margin-top:20px;
	font-size:0.8rem;
	color:#858585;
}
</style>
</head>
<body>
<section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a class="logo" href="/">
      	<img class="logoImg" src="/images/logo.png"/>						
	  	<div class="logoName">ProBat</div>
	  </a>
    </div>
    <nav>
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
        <li>
          <a href="/">Home</a>
        </li>
        <li>
          <a href="#!">Raw Data</a>
          <ul class="nav-dropdown">
            <li>
              <a href="/alldata/index">All Battery Data</a>
            </li>
            <li>
              <c:if test="${address != null }">
              <a href="/mydata/index">>My Battery Data</a>
              </c:if>
              <c:if test="${address == null }">
              <a href="/" onclick="alertl();">My Battery Data</a>
              </c:if>
            </li>
          </ul>
        </li>
        <li>
         <c:if test="${address != null }">
          <a href="/rawchart">Raw Chart</a>
          </c:if>
          <c:if test="${address == null }">
              <a href="/" onclick="alertl();">Raw Chart</a>
              </c:if>
        </li>
        <li>
        <c:if test="${address != null }">
          <a href="/bms">BMS</a>
          </c:if>
            <c:if test="${address == null }">
              <a href="/" onclick="alertl();">BMS</a>
              </c:if>
        </li>
        <li>
          <a href="#!">Transaction</a>
          <ul class="nav-dropdown">
            <li>
            <c:if test="${address != null }">
              <a class="ipfs" href='#!' target="_blank">Ipfs to Polygon</a>
              </c:if>
              <c:if test="${address == null }">
              <a href="/" onclick="alertl();">Ipfs to Polygon</a>
              </c:if>
            </li>
            <li>
              <a href="https://mumbai.polygonscan.com/address/0x78311Bb3C9a6adFEe5df8c77da64c0995e110D98" target="_blank">Hash data check</a>
            </li>
          </ul>
        </li>
        <li>
          <c:if test="${address == null }">
          <a class="login">?????? ??????</a>
          </c:if>
          <c:if test="${address != null }">
          <div class="walletaddress">
          <div class="text" style="display:inline-block; vertical-align:middle;">${address }</div>
          <svg style="display:inline-block; vertical-align:middle;"viewBox="0 0 24 24" color="text" width="24px" xmlns="http://www.w3.org/2000/svg" class="sc-4ba21b47-0 IIbzK"><path d="M8.11997 9.29006L12 13.1701L15.88 9.29006C16.27 8.90006 16.9 8.90006 17.29 9.29006C17.68 9.68006 17.68 10.3101 17.29 10.7001L12.7 15.2901C12.31 15.6801 11.68 15.6801 11.29 15.2901L6.69997 10.7001C6.30997 10.3101 6.30997 9.68006 6.69997 9.29006C7.08997 8.91006 7.72997 8.90006 8.11997 9.29006Z"></path></svg></div>
          	<form action="/header/logout" method="get">
	  		<button type="submit" class="disconnect">Disconnect</button>
	  		</form>
          </c:if>
        </li>
      </ul>
    </nav>
  </div>
  <div class="modal">
  	<div class="modal_content">
  		<div id="p1">?????? ??????	</div>
  		<div id="p2">????????? ?????? ?????????<br>????????? ???????????? ???????????? ????????? ??? ????????????.</div>
<!--   		<div class="k_wallet" onclick="k_login();">?????????????????? Klip ?????? ??????</div>
  		<div id="p3">??????</div> -->
  		<div class="m_wallet" onclick="m_login();"><img id="meta_icon" src="/images/metamask.png"/>Metamask ?????? ??????</div>
  	</div>
  </div>
  
</section>
	
</body>
<script>
(function($) { // Begin jQuery
	  $(function() { // DOM ready
	    // If a link has a dropdown, add sub menu toggle.
	    $('nav ul li a:not(:only-child)').click(function(e) {
	      $(this).siblings('.nav-dropdown').toggle();
	      // Close one dropdown when selecting another
	      $('.nav-dropdown').not($(this).siblings()).hide();
	      e.stopPropagation();
	    });
	    // Clicking away from dropdown will remove the dropdown class
	    $('html').click(function() {
	      $('.nav-dropdown').hide();
	    });
	    // Toggle open and close nav styles on click
	    $('#nav-toggle').click(function() {
	      $('nav ul').slideToggle();
	    });
	    // Hamburger to X toggle
	    $('#nav-toggle').on('click', function() {
	      this.classList.toggle('active');
	    });
	  }); // end DOM ready
	})(jQuery); // end jQuery
</script>
<script>
/* const serverUrl = "https://deep-index.moralis.io/api/v2";
const appId = "V2Q6TDFyM2I8WqO9krGu2nNEewzqcFcL7hA2raSEYbqvo2x5D1pZAuqtQm9K1wVh";
const apiKey = "V2Q6TDFyM2I8WqO9krGu2nNEewzqcFcL7hA2raSEYbqvo2x5D1pZAuqtQm9K1wVh"
Moralis.start({ serverUrl,appId });

async function m_login() {
  let user = Moralis.User.current();
  if (!user) {
    user = await Moralis.authenticate({
      signingMessage: "Log in using Moralis",
    })
      .then(function (user) {
        console.log("logged in user:", user);
        console.log(user.get("ethAddress"));
        $('.login').hide();
      })
      .catch(function (error) {
        console.log(error);
      });
  }
}

async function logOut() {
  await Moralis.User.logOut();
  console.log("logged out");
} */
</script>
<script>
// modal ??? ??????
$(function(){
	$(".login").click(function(){
		$(".modal").fadeIn();
	});
	
	$(".modal_content").click(function(){
		$(".modal").fadeOut();
	});
});
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.7.4-rc.1/web3.min.js">
</script>
<script>
 /*  $(document).ready(function(){
		if(window.ethereum.request({method:"eth_requestAccounts"}).then(user)){
			 $(".login").hide();
			 $(".walletaddress").show();
		}else{
			$(".login").show();
			$(".walletaddress").hide();
		}
	}); */
  
  async function m_login() {
    if (window.ethereum) {
      await window.ethereum
        .request({ method: "eth_requestAccounts" })
        .then(function (user) {
        	let data = {address : user[0]};
          console.log("logged in user:", user[0]);
          $(".walletaddress").text(user[0]);
          $(".walletaddress").show();
          $(".ipfs").attr("href",'https://mumbai.polygonscan.com/address/' + user[0]);
          $.ajax({
       		  type : "post",
    		  url : "/header/wallet",
    		  data: data,
    		  success : function(result){
    				console.log("ajax ?????? ??????");
    				$(location).prop("href", location.href);
    			},
    			error : function(){
    				console.log("ajax ??????");
    			}
          })
        });
      window.web3 = new Web3(window.ethereum);
    } else {
      console.log("No wallet");
    }
  }
	
	
</script>
<script>
function alertl(){
	window.alert('??????????????? ?????? ????????? ????????????!')
}

$(".walletaddress").click(function(){
	 if ($(".disconnect").css("display") == "none") { 
	        $(".disconnect").fadeIn(); //display :none ??????
	    } else {
	        $(".disconnect").fadeOut();  //display :block ??????
	    }
})
</script>
</html>