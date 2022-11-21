<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.middle {
    margin : 0;
    padding : 0;
    padding-bottom:7%;
}

.top_Sentence {
    font-size : 1.3rem;
    margin: 0 auto;
    width : 100%;
    text-align: center;
    margin-bottom: 15px;
    font-weight: 400;
}

.mid1_Sentence {
    font-size : 2.1rem;
    font-weight:600;
    margin: 0 auto;
    width : 100%;
    text-align: center;
}

.mid2_Sentence {
    font-size: 2.6rem;
    font-weight: bolder;
    margin: 0 auto;
    width : 100%;
    text-align: center;
    margin-bottom : 25px;
}

.detail {
    font-size: 1.2rem;
    margin: 0 auto;
    width : 100%;
    text-align: center;
    font-weight: 300;
}
</style>
<style>
body {
  font-family: "Century Gothic", 'Lato', sans-serif;
}
a {
  text-decoration: none;
}
.et-hero-tabs, .et-slide {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 90vh;
  position: relative;
  background: #eee;
  text-align: center;
  padding: 0 2em;
}
.et-hero-tabs h1, .et-slide h1 {
  font-size: 2rem;
  margin: 0;
  letter-spacing: 0.1rem;
  color:#404040;
}
.et-hero-tabs h3, .et-slide h3 {
  font-size: 1rem;
  letter-spacing: 0.2rem;
  opacity: 0.7;
  text-align:left;
  line-height:1.5;
  font-weight:500;
}
.et-hero-tabs-container {
  display: flex;
  flex-direction: row;
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 70px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  background: #fff;
  z-index: 10;
}
.et-hero-tabs-container--top {
  position: fixed;
  top: 0;
}
.et-hero-tab {
  display: flex;
  justify-content: center;
  align-items: center;
  flex: 1;
  color: #000;
  letter-spacing: 0.1rem;
  transition: all 0.5s ease;
  font-size: 0.8rem;
}
.et-hero-tab:hover {
  color: white;
  background: rgba(102, 177, 241, 0.8);
  transition: all 0.5s ease;
}
.et-hero-tab-slider {
  position: absolute;
  bottom: 0;
  width: 0;
  height: 6px;
  background: #66B1F1;
  transition: left 0.3s ease;
}
@media (min-width: 800px) {
  .et-hero-tabs h1, .et-slide h1 {
    font-size: 2rem;
  }
  .et-hero-tabs h3, .et-slide h3 {
    font-size: 1rem;
  }
  .et-hero-tab {
    font-size: 1rem;
  }
}

</style>
</head>
<body>
<%@ include file="./header.jsp"%>

<!-- Hero -->
  <section class="et-hero-tabs">
<div class="middle">
		<div class="top_Sentence">Battery-Blockchain Web3 Platform</div>
		<div class="mid1_Sentence">Upload Safely, Upload Smart</div>
		<div class="mid2_Sentence">On Polygon Network</div>
		<div class="detail">
			We will provide the tool which checks the state of your battery.<br>
			We can alert when it’s going on emergecy,<br> We can suggest
			much better management solution.<br> <br> Even though our
			information will grow the company,<br> We protect our
			customers&apos; personal information until the end.<br>
		</div>
	</div>
    <div class="et-hero-tabs-container">
      <a class="et-hero-tab" href="#tab-es6">Introduction</a>
      <a class="et-hero-tab" href="#tab-flexbox">Background</a>
      <a class="et-hero-tab" href="#tab-react">Technology</a>
      <a class="et-hero-tab" href="#tab-angular">Future</a>
      <a class="et-hero-tab" href="#tab-other">Team</a>
      <span class="et-hero-tab-slider"></span>
    </div>
  </section>

  <!-- Main -->
  <main class="et-main">
    <section class="et-slide" id="tab-es6">
      <h1>개인정보 노출없이 기업이 배터리 정보를 취득할 수 있을까?</h1>
      <h3>라는 의문에서 시작한 Probat 프로젝트는 보안성, 투명성이 보장된 <strong>블록체인 기술</strong>을 활용하여,<br>
      전기차에서 발생하는 배터리 데이터를 <strong>개인정보 노출없이</strong> 저장하고<br>
      본 웹사이트에서 확인할 수 있도록 구현하여<br>
      <strong>사측</strong>에서는 Battery Management System에 필요한 빅데이터를 확보할 수 있고<br>
      <strong>고객군</strong>에서는 본인 전기차 배터리 데이터를 한눈에 확인할 수 있도록 하였습니다.<br><br>
      이를 통해,<br>
      <strong>중고차 거래</strong> 또는 <strong>사고 과실 비율 조작</strong>을 위해 <strong>배터리 관리 내역의 조작 가능성을 차단</strong>할 수 있으며<br>
      Web3 기술 특징 중 하나인 개인 지갑 주소를 활용하여 <strong>개인정보 유출을 방지</strong>할 수 있습니다.
      </h3>
    </section>
    <section class="et-slide" id="tab-flexbox">
      <h1>Background</h1>
      <h3>현재 LG에너지 솔루션에서 출시한 <strong>B-lifecare</strong>를 살펴보면<br>
      인증서 발급부터 <strong>데이터 수집 장치 무상 제공까지 많은 금액과 시간을 투자</strong>하고 있으며,<br>
      금일까지도 베타 서비스를 통해 적극적으로 고객 유치를 어필하고 있다.<br><br>
      또한, Tesla역시 BMS를 비롯한 다양한 <strong>데이터를 수집</strong>하는 중<br>
      개인정보 유출 관련한 <strong>사생활 침해</strong>를 근거로 국가와 소비자들로부터 <strong>끊임없는 분쟁</strong>중이다.</h3>
    </section>
    <section class="et-slide" id="tab-react">
      <h1>What Technology was used?</h1>
      <h3>1.소형컴퓨터(라떼판다)를 하나의 전기차로 가정하고 배터리 데이터 출력<br>
      2.출력된 데이터는 Moralis 라이브러리를 활용해 Ipfs방식으로 저장<br>
      3.Ipfs 저장후 발급된 해시값은 개인 지갑 주소와 함께 Polygon Mainnet에 저장<br>
      4.Probat 웹 사이트에서 Polygon Mainnet에 저장된 배터리 데이터를 가져옴<br>
      5.가져온 배터리 데이터를 활용하여 재가공한 후에 표, 차트 형식으로 보여줌</h3>
    </section>
    <section class="et-slide" id="tab-angular">
      <h1>What is possible?</h1>
      <h3>1.BMS Data로부터 양질의 Processed Data를 획득 후 사용자에게 서비스 제공<br>
      2.축적된 Raw DB와 BMS Result는 기업에게 더 나은 Management Solution 제시<br>
      3.실제 차량 소프트웨어에 업데이트 후 Battery 개선 관련 Feedback</h3>
    </section>
    <section class="et-slide" id="tab-other">
      <h1>It's our team!</h1>
      <h3><strong>SeungWoo Seo</strong>, School of Electrical and Electronic Engineering, Chung-Ang University<br>
     <strong>Minseom Oh</strong>, School of Electrical and Electronic Engineering, Chung-Ang University<br>
     <strong>SoonBeam Hong</strong>, Department of Computer Science and Engineering, Seoul National University<br>
     <strong>ChanWoong Park</strong>, Department of Materials Science and Engineering, Seoul National University<br>
     <strong>MyeongIn Choi</strong>, Department of Intelligent Energy and Industry, Chung-Ang University
      </h3>
    </section>
  </main>
</body>
<script>
class StickyNavigation {
	  
	  constructor() {
	    this.currentId = null;
	    this.currentTab = null;
	    this.tabContainerHeight = 70;
	    let self = this;
	    $('.et-hero-tab').click(function() { 
	      self.onTabClick(event, $(this)); 
	    });
	    $(window).scroll(() => { this.onScroll(); });
	    $(window).resize(() => { this.onResize(); });
	  }
	  
	  onTabClick(event, element) {
	    event.preventDefault();
	    let scrollTop = $(element.attr('href')).offset().top - this.tabContainerHeight + 1;
	    $('html, body').animate({ scrollTop: scrollTop }, 600);
	  }
	  
	  onScroll() {
	    this.checkTabContainerPosition();
	    this.findCurrentTabSelector();
	  }
	  
	  onResize() {
	    if(this.currentId) {
	      this.setSliderCss();
	    }
	  }
	  
	  checkTabContainerPosition() {
	    let offset = $('.et-hero-tabs').offset().top + $('.et-hero-tabs').height() - this.tabContainerHeight;
	    if($(window).scrollTop() > offset) {
	      $('.et-hero-tabs-container').addClass('et-hero-tabs-container--top');
	    } 
	    else {
	      $('.et-hero-tabs-container').removeClass('et-hero-tabs-container--top');
	    }
	  }
	  
	  findCurrentTabSelector(element) {
	    let newCurrentId;
	    let newCurrentTab;
	    let self = this;
	    $('.et-hero-tab').each(function() {
	      let id = $(this).attr('href');
	      let offsetTop = $(id).offset().top - self.tabContainerHeight;
	      let offsetBottom = $(id).offset().top + $(id).height() - self.tabContainerHeight;
	      if($(window).scrollTop() > offsetTop && $(window).scrollTop() < offsetBottom) {
	        newCurrentId = id;
	        newCurrentTab = $(this);
	      }
	    });
	    if(this.currentId != newCurrentId || this.currentId === null) {
	      this.currentId = newCurrentId;
	      this.currentTab = newCurrentTab;
	      this.setSliderCss();
	    }
	  }
	  
	  setSliderCss() {
	    let width = 0;
	    let left = 0;
	    if(this.currentTab) {
	      width = this.currentTab.css('width');
	      left = this.currentTab.offset().left;
	    }
	    $('.et-hero-tab-slider').css('width', width);
	    $('.et-hero-tab-slider').css('left', left);
	  }
	  
	}

	new StickyNavigation();
</script>
</html>