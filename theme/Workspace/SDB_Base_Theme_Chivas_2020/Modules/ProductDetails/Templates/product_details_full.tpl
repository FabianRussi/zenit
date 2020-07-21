<div data-cms-area="tt-chivas_item_details_banner" data-cms-area-filters="page_type"></div>

<div class="product-details-full">
	<header class="product-details-full-header">
		<div id="banner-content-top" class="product-details-full-banner-top"></div>
	</header>

	{{!--<!-- <div class="product-details-full-divider-desktop"></div> -->--}}

	<article class="product-details-full-content" itemscope itemtype="https://schema.org/Product">
		<meta itemprop="url" content="{{itemUrl}}">
		<div id="banner-details-top" class="product-details-full-banner-top-details"></div>

		<!-- Title Mobile -->
		<h1 class="product-details-full-content-header-title pdp-mobile" itemprop="name">{{pageHeader}}</h1>
		<!-- Rating Mobile -->
		<div class="product-details-full-rating pdp-mobile" data-view="Global.StarRating"></div>
		<div class="product-details-full-divider"></div>

		<section class="product-details-full-main-content">
			<div class="product-details-full-main-content-left">
				<div class="product-details-full-image-gallery-container">
					<div id="banner-image-top" class="content-banner banner-image-top"></div>
					<div data-view="Product.ImageGallery"></div>
					<div id="banner-image-bottom" class="content-banner banner-image-bottom"></div>
				</div>
			</div>

			<div class="product-details-full-main-content-right">

				<div class="product-details-full-content-header">

					<!-- Title Desktop -->
					<h1 class="product-details-full-content-header-title pdp-desktop" itemprop="name">{{pageHeader}}</h1>
					<!-- Rating Desktop -->
					<div class="product-details-full-rating pdp-desktop" data-view="Global.StarRating"></div>

					{{!--
					<!-- <div class="row product-details-full-content-title-secondline">
						<div class="container"> -->

							
							<!-- {{#if model.item.mpn}}
							<div class="product-line-sku-container">
								<span class="product-line-sku-label">{{translate 'MPN: '}} </span>
								<span class="Product-line-sku-value">{{model.item.mpn}}</span>
							</div>
							{{/if}} -->
							

							
		
							<!-- <div class="pdp-badge">
							{{#if badge}}
								{{{ badge }}}
							{{/if}}
							</div>
		
						</div> 
					</div>-->
					--}}
					
					<div data-cms-area="item_info" data-cms-area-filters="path"></div>
				</div>

				<div class="product-details-full-divider-desktop"></div>
				{{!--<!-- <div class="product-details-full-divider"></div> -->--}}
				
				<div data-view="Extension.Price"></div>
				<div class="product-details-full-main">
					{{#if isItemProperlyConfigured}}
					<form id="product-details-full-form" data-action="submit-form" method="POST">

						<section class="product-details-full-info">
							<div id="banner-summary-bottom" class="product-details-full-banner-summary-bottom"></div>
						</section>

						<section data-view="Product.Options"></section>

						<div data-view="Product.Sku"></div>
						<div data-view="Product.Price"></div>

						<div data-view="Quantity.Pricing"></div>

						{{#if isPriceEnabled}}
						<section class="product-details-full-actions">

							<div data-view="Quantity"></div>

							<div class="product-details-full-actions-container">
								<div data-view="MainActionView"></div>
								<div data-view="ProductDetails.AddToQuote" class="product-details-full-actions-addtoquote"></div>
								<div data-view="AddToProductList" class="product-details-full-actions-addtowishlist"></div>
							</div>

						</section>
						{{/if}}
						
						<!-- Social Sharing -->
						<div class="product-details-full-social-share">
							{{!--<!-- <p>Share: </p> -->--}}
							<div data-view="SocialSharing.Flyout" class="product-details-full-social-sharing"></div>
						</div>

						<div data-view="Product.Stock.Info"></div>
						<div data-view="StockDescription"></div>

						<div class="product-details-brief-description">
							
							{{!--
							<!-- {{#if model.item.minimumquantity}}
								<p class="pdp-minimumQty">(*) Minimum Quantity: {{ model.item.minimumquantity }}</p>
							{{/if}} -->
							--}}

							{{!--
							<!-- <div class="product-line-stock">
								<p class="product-line-stock-msg-out">
									<span class="product-line-stock-icon-out"><i class="{{stockIcon}}"></i></span>
									<span class="product-line-stock-msg-out-text">{{stockMsg}}</span>
								</p>
							</div> -->
							--}}

							{{!--
							<!-- {{#if model.item.storedescription }}
							<div class="this-full-width pdp-brief-description-content">
								<h3>ABOUT THIS PRODUCT:</h3>
								{{{ model.item.storedescription }}}
								{{#if model.item.custitem1 }}
								<div class="item-brand-logo {{{model.item.custitem1}}}">{{{ model.item.custitem1 }}}</div>
								{{/if}}
							</div>
							{{/if}} -->
							--}}

							<div data-cms-area="item_info" data-cms-area-filters="path"></div>
						</div>

						<div class="product-details-full-main-bottom-banner">
							<div id="banner-summary-bottom" class="product-details-full-banner-summary-bottom"></div>
						</div>
					</form>
					{{else}}
					<div data-view="GlobalViewsMessageView.WronglyConfigureItem"></div>
					{{/if}}

					<div id="banner-details-bottom" class="product-details-full-banner-details-bottom" data-cms-area="item_info_bottom" data-cms-area-filters="page_type"></div>
				</div>
			</div>

		</section>

		<section data-view="Product.Information"></section>

		{{!--<!-- <div class="product-details-full-divider-desktop"></div> -->--}}

		<div data-view="ProductReviews.Center"></div>

		<div class="product-details-full-content-related-items">
			<div data-view="Related.Items"></div>
		</div>

		<div class="product-details-full-content-correlated-items">
			<div data-view="Correlated.Items"></div>
		</div>
		<div id="banner-details-bottom" class="content-banner banner-details-bottom" data-cms-area="item_details_banner_bottom" data-cms-area-filters="page_type"></div>
	</article>
</div>



{{!---- Use the following context variables when customizing this template: model (Object) model.item (Object) model.item.internalid
(Number) model.item.type (String) model.quantity (Number) model.options (Array) model.options.0 (Object) model.options.0.cartOptionId
(String) model.options.0.itemOptionId (String) model.options.0.label (String) model.options.0.type (String) model.location
(String) model.fulfillmentChoice (String) pageHeader (String) itemUrl (String) isItemProperlyConfigured (Boolean) isPriceEnabled
(Boolean) ----}}