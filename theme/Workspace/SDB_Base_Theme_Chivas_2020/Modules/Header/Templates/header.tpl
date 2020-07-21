<div class="header-main-container">

	<div class="header-message" data-view="Message.Placeholder"></div>

	<div class="header-main-wrapper">
		<div class="header-main-nav">

			<div class="header-content">

				<div class="header-left-section">
					<div data-cms-area="tt-chivas_header_top-left-content" data-cms-area-filters="global"></div>
					<ul class="header-menu-actions"></ul>
				</div>

				<div class="header-right-menu">

					<ul class="header-menu-actions">
						<li data-view="StoreLocatorHeaderLink"></li>
						<li data-view="QuickOrderHeaderLink"></li>
						<li><a>Track your order</a></li>
						<li data-view="RequestQuoteWizardHeaderLink"></li>
					</ul>

					<div class="header-menu-profile" data-view="Header.Profile"></div>

					{{#if showLanguagesOrCurrencies}}
					<ul class="header-menu-actions">
						<li class="header-subheader-settings">
							<a href="#" class="header-subheader-settings-link" data-toggle="dropdown" title="{{translate 'Settings'}}">
								<i class="header-menu-settings-icon"></i>
								Select Currency
								{{!--<!-- <i class="header-menu-settings-carret"></i> -->--}}
							</a>
							<div class="header-menu-settings-dropdown">
								<h5 class="header-menu-settings-dropdown-title">
									{{translate 'Currency'}}
									{{!--<!--{{translate 'Site Settings'}}-->--}}
								</h5>
								{{#if showLanguages}}
									<div data-view="Global.HostSelector"></div>
								{{/if}}
								{{#if showCurrencies}}
									<div data-view="Global.CurrencySelector"></div>
								{{/if}}
							</div>
						</li>
					</ul>
					{{/if}}

				</div>
			</div>

		</div>

	</div>

	<div class="header-secondary-section">

		{{!--<!-- <div class="header-divider"></div> -->--}}

		<!-- Start Mobile Toggle  -->
		<div class="header-sidebar-toggle-wrapper">
			<button class="header-sidebar-toggle" data-action="header-sidebar-show">
				<i class="header-sidebar-toggle-icon"></i>
			</button>
		</div>
		<!-- End Mobile Toggle -->
			
		<div class="header-logo-wrapper desktop-logo">
			<div data-view="Header.Logo"></div>
		</div>
		
		{{!--
		<!-- <div class="header-center-msg">
			<div data-cms-area="tt-chivas_header_center-msg" data-cms-area-filters="global"></div>
		</div> -->
		--}}

		<div class="store-location-mobile" data-view="StoreLocatorHeaderLink"></div>
		
		<div class="search-container">
			<div class="header-site-search" data-view="SiteSearch" data-type="SiteSearch"></div>
		</div>

		<div class="header-secondary-section-right">
			<!-- {{#if showLanguagesOrCurrencies}}
			<ul class="header-subheader-options-lc">
				<li class="header-subheader-settings">
					<a href="#" class="header-subheader-settings-link" data-toggle="dropdown" title="{{translate 'Settings'}}">
						<i class="header-menu-settings-icon"></i>
						Select Currency
						<i class="header-menu-settings-carret"></i>
					</a>
					<div class="header-menu-settings-dropdown">
						<h5 class="header-menu-settings-dropdown-title">
							{{translate 'Currency'}}
							comment >>>>>>>>>>>> {{translate 'Site Settings'}}
						</h5>
						{{#if showLanguages}}
							<div data-view="Global.HostSelector"></div>
						{{/if}}
						{{#if showCurrencies}}
							<div data-view="Global.CurrencySelector"></div>
						{{/if}}
					</div>
				</li>
			</ul>
			{{/if}} -->
			<!-- Mini Cart -->
			<div class="header-menu-cart">
				<div class="header-menu-cart-dropdown">
					<div data-view="Header.MiniCart"></div>
				</div>
			</div>
		</div>
		
		{{!--<!-- <div class="header-divider"></div> -->--}}
	</div>


	<div class="header-logo-wrapper mobile-logo">
		<div data-view="Header.Logo"></div>
	</div>

	
	<!-- Start Main Menu -->
	<div class="header-secondary-wrapper" data-view="Header.Menu" data-phone-template="header_sidebar" data-tablet-template="header_sidebar"></div>
	
	<div class="header-sidebar-overlay" data-action="header-sidebar-hide"></div>
</div>




{{!----
Use the following context variables when customizing this template: 
	
	profileModel (Object)
	profileModel.addresses (Array)
	profileModel.addresses.0 (Array)
	profileModel.creditcards (Array)
	profileModel.firstname (String)
	profileModel.paymentterms (undefined)
	profileModel.phoneinfo (undefined)
	profileModel.middlename (String)
	profileModel.vatregistration (undefined)
	profileModel.creditholdoverride (undefined)
	profileModel.lastname (String)
	profileModel.internalid (String)
	profileModel.addressbook (undefined)
	profileModel.campaignsubscriptions (Array)
	profileModel.isperson (undefined)
	profileModel.balance (undefined)
	profileModel.companyname (undefined)
	profileModel.name (undefined)
	profileModel.emailsubscribe (String)
	profileModel.creditlimit (undefined)
	profileModel.email (String)
	profileModel.isLoggedIn (String)
	profileModel.isRecognized (String)
	profileModel.isGuest (String)
	profileModel.priceLevel (String)
	profileModel.subsidiary (String)
	profileModel.language (String)
	profileModel.currency (Object)
	profileModel.currency.internalid (String)
	profileModel.currency.symbol (String)
	profileModel.currency.currencyname (String)
	profileModel.currency.code (String)
	profileModel.currency.precision (Number)
	showLanguages (Boolean)
	showCurrencies (Boolean)
	showLanguagesOrCurrencies (Boolean)
	showLanguagesAndCurrencies (Boolean)
	isHomeTouchpoint (Boolean)
	cartTouchPoint (String)

----}}
