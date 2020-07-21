 {{log this}}
<div class="home-slider-container">
    <div class="home-image-slider">
        <ul data-slider class="home-image-slider-list">
            {{#each carouselImages}}
            <li>
                <div class="home-slide-main-container">
                    <div class="" style="background-image:url('{{resizeImage this ../imageHomeSize}}') ; background-size: cover;
					background-position:center center;height: 600px;">
                        <!-- <img src="{{resizeImage this ../imageHomeSize}}" alt="" /> -->
                    </div>
                    <!-- 
                        <div class="home-slide-caption">
                            <h2 class="home-slide-caption-title">SAMPLE HEADLINE</h2>
                            <p>Example descriptive text displayed on multiple lines.</p>
                            <div class="home-slide-caption-button-container">
                                <a href="/search" class="home-slide-caption-button">Shop Now</a>
                            </div>
                        </div>-->
                </div>
            </li>
            {{else}}
            <li>
                <div class="home-slide-main-container">
                    <div class="home-slide-image-container">
                        <img src="{{getThemeAssetsPath (resizeImage 'img/carousel-home-1.png' ../imageHomeSize)}}" alt="" />
                    </div>

                    <div class="home-slide-caption">
                        <h2 class="home-slide-caption-title">SAMPLE HEADLINE</h2>
                        <p>Example descriptive text displayed on multiple lines.</p>
                        <div class="home-slide-caption-button-container">
                            <a href="/search" class="home-slide-caption-button">Shop Now</a>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="home-slide-main-container">
                    <div class="home-slide-image-container">
                        <img src="{{getThemeAssetsPath (resizeImage 'img/carousel-home-2.png' ../imageHomeSize)}}" alt="" />
                    </div>

                    <div class="home-slide-caption">
                        <h2 class="home-slide-caption-title">SAMPLE HEADLINE</h2>
                        <p>Example descriptive text displayed on multiple lines.</p>
                        <div class="home-slide-caption-button-container">
                            <a href="/search" class="home-slide-caption-button">Shop Now</a>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="home-slide-main-container">
                    <div class="home-slide-image-container">
                        <img src="{{getThemeAssetsPath (resizeImage 'img/carousel-home-3.png' ../imageHomeSize)}}" alt="" />
                    </div>

                    <div class="home-slide-caption">
                        <h2 class="home-slide-caption-title">SAMPLE HEADLINE</h2>
                        <p>Example descriptive text displayed on multiple lines.</p>
                        <div class="home-slide-caption-button-container">
                            <a href="/search" class="home-slide-caption-button">Shop Now</a>
                        </div>
                    </div>
                </div>
            </li>
            {{/each}}
        </ul>
    </div>

    <div class="home">

        <!-- CMS - Slider -->
        <section data-cms-area="tt-chivas_home_cms_area_slider" data-cms-area-filters="path"></section>

        <!-- CMS - Welcome -->
        <section data-cms-area="tt-chivas_home_cms_area_welcome" data-cms-area-filters="path"></section>

        <!-- CMS - Banners  -->
        <section data-cms-area="tt-chivas_home_cms_area_banners" data-cms-area-filters="path"></section>

        <!-- CMS - Categories  -->
        <section data-cms-area="tt-chivas_home_cms_area_categories" data-cms-area-filters="path"></section>

        <!-- CMS - Merch Zone  -->
        <section data-cms-area="tt-chivas_home_cms_area_merchzone" data-cms-area-filters="path"></section>

    </div>

    {{!--
    <!-- CMS Contents -->

    <!-- CMS - Welcome -->
    <!--
<div class="home-welcome">
	<h1>
	ORDERS OVER $100 SHIP FREE, ENTER <strong>SHIPFREE</strong> AT CHECKOUT
	</h1>
</div>
-->

    <!-- CMS - Banners -->
    <!--
<div class="home-banner-main"> 
	<div class="home-banner-main-cell col-sm-6">
		<a href=""> 
		<div class="home-banner-main-cell-bg"> 
			<img src="/chivas-img/Home/banners/half-width/half-width-1.jpg" alt="">
			<div class="home-banner-main-info-container">
			<div class="title">EVERYDAY ORIGINALS</div> 
			<div class="text">ICONIC PIECES, USED YOUR WAY</div> 
			</div> 
		</div> 
		<div class="bottom-link">
			<span>View all</span> <i></i>
		</div> 
		</a> 
	</div> 		
	<div class="home-banner-main-cell col-sm-6">
		<a href="">
		<div class="home-banner-main-cell-bg">
			<img src="/chivas-img/Home/banners/half-width/half-width-2.jpg" alt="">
			<div class="home-banner-main-info-container">
			<div class="title">HOT DEALS</div>
			<div class="text">COMPLETE COLLECTION FOR THIS SEASON</div>
			</div>
		</div>
		<div class="bottom-link">
			<span>VIEW ALL COLLECTION</span> <i></i>
		</div> 
		</a>
	</div>
	<div class="home-banner-main-cell col-sm-6"> 
		<a href=""> 
		<div class="home-banner-main-cell-bg"> 
			<img src="/chivas-img/Home/banners/half-width/half-width-3.jpg" alt="">
			<div class="home-banner-main-info-container"> 
			<div class="title">TRAINING DAY</div> 
			<div class="text">PRACTICAL AS WELL AS STYLISH WAITING FOR YOU</div>
			</div> 
		</div> 
		<div class="bottom-link"> 
			<span>VIEW ALL COLLECTION</span> <i></i> 
		</div> 
		</a> 
	</div> 
	<div class="home-banner-main-cell col-sm-6"> 
		<a href=""> 
		<div class="home-banner-main-cell-bg"> 
			<img src="/chivas-img/Home/banners/half-width/half-width-4.jpg" alt=""> 
			<div class="home-banner-main-info-container"> 
			<div class="title">SKY'S THE LIMIT</div> 
			<div class="text">A SMILE CHANGES YOUR DAY</div> 
			</div> 
		</div> 
		<div class="bottom-link"> 
			<span>VIEW ALL</span> <i></i> 
		</div> 
		</a> 
	</div>
</div>
-->

    <!-- CMS - Categories  -->
    <!--
<div class="home-categories"> 
	<h2>ESSENTIALS</h2>
	<div class="categories-container col-sm-4"> 
		<a href=""> 
			<img src="/chivas-img/Home/banners/three-columns/three-columns-1.jpg" alt=""> 
			<h4>RIDER GEAR</h4> 
		</a> 
	</div> 
	<div class="categories-container col-sm-4"> 
		<a href=""> 
			<img src="/chivas-img/Home/banners/three-columns/three-columns-2.jpg" alt=""> 
			<h4>BIKE GEAR</h4> 
		</a> 
	</div>
	<div class="categories-container col-sm-4"> 
		<a href=""> 
			<img src="/chivas-img/Home/banners/three-columns/three-columns-3.jpg" alt=""> 
			<h4>COMPONENTS</h4> 
		</a>
	</div> 
</div>
-->
    --}} {{!---- Use the following context variables when customizing this template: imageHomeSize (String) imageHomeSizeBottom (String) carouselImages (Array) bottomBannerImages (Array) ----}}