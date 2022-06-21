// ignore_for_file: prefer_single_quotes, lines_longer_than_80_chars final
Map<String, dynamic> environment = {
  "appConfig": "lib/config/config_en.json",

  /// ➡️ lib/common/config.dart
  "serverConfig": {
    'type': 'woo',
    'url': 'https://thepetstore.pk/',
    'consumerKey': 'ck_dba42b280c2202beccd461c9f659ed5d4e20fa7f',
    'consumerSecret': 'cs_0b0388890f5a2c629266e217e3d3831c52396952',
    'blog':
    '', //Your website woocommerce. You can remove this line if it same url
    /// remove to use as native screen
    'forgetPassword': 'https://thepetstore.pk/wp-login.php?action=lostpassword'
  },

  /// ➡️ lib/common/config/general.dart
  "defaultDarkTheme": false,
  "enableRemoteConfigFirebase": false,
  "loginSMSConstants": {
    "countryCodeDefault": "PK",
    "dialCodeDefault": "+92",
    "nameDefault": "Pakistan",
  },
  "storeIdentifier": {
    "disable": true,
    "android": "com.healthytailsanimalhospital.app",
    "ios": "1469772800"
  },
  "advanceConfig": {
    "DefaultLanguage": "en",
    "DetailedBlogLayout": "halfSizeImageType",
    "EnablePointReward": false,
    "hideOutOfStock": false,
    "HideEmptyTags": true,
    "HideEmptyCategories": true,
    "EnableRating": true,
    "hideEmptyProductListRating": true,

    "EnableCart": true,

    /// Enable search by SKU in search screen
    "EnableSkuSearch": true,

    /// Show stock Status on product List & Product Detail
    "showStockStatus": true,

    /// Gird count setting on Category screen
    "GridCount": 3,

    /// set isCaching to true if you have upload the config file to mstore-api
    /// set kIsResizeImage to true if you have finished running Re-generate image plugin
    /// ref: https://support.inspireui.com/help-center/articles/3/8/19/app-performance
    "isCaching": false,
    "kIsResizeImage": true,
    "httpCache": true,

    /// Stripe payment only: set currencyCode and smallestUnitRate.
    /// All API requests expect amounts to be provided in a currency’s smallest unit.
    /// For example, to charge 10 USD, provide an amount value of 1000 (i.e., 1000 cents).
    /// Reference: https://stripe.com/docs/currencies#zero-decimal
    "DefaultCurrency": {
      "symbol": "Rs ",
      "decimalDigits": 0,
      "symbolBeforeTheNumber": true,
      "currency": "PKR",
      "currencyCode": "pkr",
      "smallestUnitRate": 100,

      /// 100 cents = 1 usd
    },
    "Currencies": [

    ],

    /// Below config is used for Magento store
    "DefaultStoreViewCode": "",
    "EnableAttributesConfigurableProduct": ["color", "size"],
    "EnableAttributesLabelConfigurableProduct": ["color", "size"],

    /// if the woo commerce website supports multi languages
    /// set false if the website only have one language
    "isMultiLanguages": false,

    ///Review gets approved automatically on woocommerce admin without requiring administrator to approve.
    "EnableApprovedReview": false,

    /// Sync Cart from website and mobile
    "EnableSyncCartFromWebsite": false,
    "EnableSyncCartToWebsite": false,

    /// Enable firebase to support FCM, realtime chat for Fluxstore MV
    "EnableFirebase": true,

    /// ratio Product Image, default value is 1.2 = height / width
    "RatioProductImage": 1.2,

    /// Enable Coupon Code When checkout
    "EnableCouponCode": true,

    /// Enable to Show Coupon list.
    "ShowCouponList": true,

    /// Enable this will show all coupons in Coupon list.
    /// Disable will show only coupons which is restricted to the current user"s email.
    "ShowAllCoupons": true,

    /// Show expired coupons in Coupon list.
    "ShowExpiredCoupons": true,
    "AlwaysShowTabBar": false,

    /// Privacy Policies page ID. Accessible in the app via Settings > Privacy menu.
    "PrivacyPoliciesPageId": 3,

    /// If page id null
    /// Privacy Policies page Url. Accessible in the app via Settings > Privacy menu.
    "PrivacyPoliciesPageUrl": "https://thepetstore.pk/",

    "AutoDetectLanguage": false,
    "QueryRadiusDistance": 10,
    "MinQueryRadiusDistance": 1,

    /// Distance by km
    "MaxQueryRadiusDistance": 10,

    /// Enable Membership Pro Ultimate WP
    "EnableMembershipUltimate": false,

    /// Enable Paid Membership Pro
    "EnablePaidMembershipPro": false,

    /// Enable Delivery Date when doing checkout
    "EnableDeliveryDateOnCheckout": false,

    /// Enable new SMS Login
    "EnableNewSMSLogin": false,

    /// Enable bottom add to cart from product card view
    "EnableBottomAddToCart": false,

    /// enable inappwebview as default the Webview
    /// otherwise, using webview_flutter
    "inAppWebView": true,

    /// enable product backdrop layout - https://tppr.me/L5Pnf
    "enableProductBackdrop": false,
  },
  "defaultDrawer": {
    "logo": "assets/images/logo.png",
    "background": null,
    "items": [
      {"type": "home", "show": true},
      {"type": "blog", "show": false},
      {"type": "categories", "show": true},
      {"type": "cart", "show": true},
      {"type": "profile", "show": true},
      {"type": "login", "show": true},
      {"type": "category", "show": true}
    ]
  },
  "defaultSettings": [
    "products",
    "chat",
    "wishlist",

    "darkTheme",
    "order",
    "rating"
  ],
  "loginSetting": {
    "IsRequiredLogin": false,
    "showAppleLogin": true,
    "showFacebook": false,
    "showSMSLogin": false,
    "showGoogleLogin": true,
    "showPhoneNumberWhenRegister": true,
    "requirePhoneNumberWhenRegister": true,
    "isResetPasswordSupported": true,

    /// For Facebook login.
    /// These configs are only used for FluxBuilder's Auto build feature.
    /// To update manually, follow this below doc:
    /// https://support.inspireui.com/help-center/articles/42/44/32/social-login#login
    "facebookAppId": "430258564493822",
    "facebookLoginProtocolScheme": "fb430258564493822",
  },
  "oneSignalKey": {
    "enable": true,
    "appID": "d1a205cb-aac3-4b48-b321-12656efffbe1"
  },

  /// ➡️ lib/common/onboarding.dart
  "onBoardingData": [

    {
      'title': "Let's Get Started",
      'image': 'assets/images/fogg-order-completed.png',
      'desc': ""
    }
  ],

  "vendorOnBoardingData": [
    {
      'title': 'Welcome aboard',
      'image': 'assets/images/searching.png',
      'desc': 'Just a few more steps to become our vendor'
    },
    {
      'title': 'Let\'s Get Started',
      'image': 'assets/images/manage.png',
      'desc': 'Good Luck for great beginnings.'
    }
  ],

  /// ➡️ lib/common/advertise.dart
  "adConfig": {
    "enable": false,
    "facebookTestingId": "",
    "googleTestingId": [],
    "ads": [
      {
        "type": "banner",
        "provider": "google",
        "iosId": "ca-app-pub-3940256099942544/2934735716",
        "androidId": "ca-app-pub-3940256099942544/6300978111",
        "showOnScreens": ["home", "search"],
        "waitingTimeToDisplay": 2,
      },
      {
        "type": "banner",
        "provider": "google",
        "iosId": "ca-app-pub-2101182411274198/5418791562",
        "androidId": "ca-app-pub-2101182411274198/4052745095",

        /// "showOnScreens": ["home", "category", "product-detail"],
      },
      {
        "type": "interstitial",
        "provider": "google",
        "iosId": "ca-app-pub-3940256099942544/4411468910",
        "androidId": "ca-app-pub-3940256099942544/4411468910",
        "showOnScreens": ["profile"],
        "waitingTimeToDisplay": 5,
      },
      {
        "type": "reward",
        "provider": "google",
        "iosId": "ca-app-pub-3940256099942544/1712485313",
        "androidId": "ca-app-pub-3940256099942544/4411468910",
        "showOnScreens": ["cart"],

        /// "waitingTimeToDisplay": 8,
      },
      {
        "type": "banner",
        "provider": "facebook",
        "iosId": "IMG_16_9_APP_INSTALL#430258564493822_876131259906548",
        "androidId": "IMG_16_9_APP_INSTALL#430258564493822_489007588618919",
        "showOnScreens": ["home"],

        /// "waitingTimeToDisplay": 8,
      },
      {
        "type": "interstitial",
        "provider": "facebook",
        "iosId": "430258564493822_489092398610438",
        "androidId": "IMG_16_9_APP_INSTALL#430258564493822_489092398610438",

        /// "showOnScreens": ["profile"],
        /// "waitingTimeToDisplay": 8,
      },
    ],

    /// "adMobAppId" is only used for FluxBuilder's Auto build feature.
    /// To update manually, follow this below doc:
    /// https://support.inspireui.com/help-center/articles/42/44/17/admob-and-facebook-ads#2-setup-google-admob-for-flutter
    "adMobAppId": "ca-app-pub-7432665165146018~2664444130",
  },

  /// ➡️ lib/common/dynamic_link.dart
  "firebaseDynamicLinkConfig": {
    "isEnabled": true,
    "shortDynamicLinkEnable": true,

    /// Domain is the domain name for your product.
    /// Let’s assume here that your product domain is “example.com”.
    /// Then you have to mention the domain name as : https://example.page.link.
    "uriPrefix": "https://thepetstore.page.link",
    //The link your app will open
    "link": "https://thepetstore.pk/",
    //----------* Android Setting *----------//
    "androidPackageName": "com.healthytailsanimalhospital.app",
    "androidAppMinimumVersion": 1,
    //----------* iOS Setting *----------//
    "iOSBundleId": "com.inspireui.mstore.flutter",
    "iOSAppMinimumVersion": "1.0.1",
    "iOSAppStoreId": "1469772800"
  },

  /// ➡️ lib/common/languages.dart
  "languagesInfo": [
    // 1 English - en.arb
    {
      "name": "English",
      "icon": "assets/images/country/gb.png",
      "code": "en",
      "text": "English",
      "storeViewCode": ""
    },
    // 3 Hindi - hi.arb
    {
      "name": "Hindi",
      "icon": "assets/images/country/in.png",
      "code": "hi",
      "text": "Hindi",
      "storeViewCode": "hi"
    },
    // 4 Spanish - es.arb
    {
      "name": "Spanish",
      "icon": "assets/images/country/es.png",
      "code": "es",
      "text": "Spanish",
      "storeViewCode": ""
    },
    // 5 French - fr.arb
    {
      "name": "French",
      "icon": "assets/images/country/fr.png",
      "code": "fr",
      "text": "French",
      "storeViewCode": "fr"
    },
    // 6 Arabic ar.arb
    {
      "name": "Arabic",
      "icon": "assets/images/country/ar.png",
      "code": "ar",
      "text": "Arabic",
      "storeViewCode": "ar"
    },
    // 7 Russian ru.arb
    {
      "name": "Russian",
      "icon": "assets/images/country/ru.png",
      "code": "ru",
      "text": "Русский",
      "storeViewCode": "ru"
    },
    // 8 Indonesian id.arb
    {
      "name": "Indonesian",
      "icon": "assets/images/country/id.png",
      "code": "id",
      "text": "Indonesian",
      "storeViewCode": "id"
    },
    // 9 Japanese ja.arb
    {
      "name": "Japanese",
      "icon": "assets/images/country/ja.png",
      "code": "ja",
      "text": "Japanese",
      "storeViewCode": ""
    },
    // 10 Korean ko.arb
    {
      "name": "Korean",
      "icon": "assets/images/country/ko.png",
      "code": "ko",
      "text": "Korean",
      "storeViewCode": "ko"
    },
    // 11 Vietnamese vi.arb
    {
      "name": "Vietnamese",
      "icon": "assets/images/country/vn.png",
      "code": "vi",
      "text": "Vietnam",
      "storeViewCode": ""
    },
    // 12 Romanian ro.arb
    {
      "name": "Romanian",
      "icon": "assets/images/country/ro.png",
      "code": "ro",
      "text": "Romanian",
      "storeViewCode": "ro"
    },
    // 13 Turkish - tr.arb
    {
      "name": "Turkish",
      "icon": "assets/images/country/tr.png",
      "code": "tr",
      "text": "Turkish",
      "storeViewCode": "tr"
    },
    // 14 Italian - it.arb
    {
      "name": "Italian",
      "icon": "assets/images/country/it.png",
      "code": "it",
      "text": "Italian",
      "storeViewCode": "it"
    },
    // 15 German - de.arb
    {
      "name": "German",
      "icon": "assets/images/country/de.png",
      "code": "de",
      "text": "German",
      "storeViewCode": "de"
    },
    // 16 Portuguese - pt.arb
    {
      "name": "Portuguese",
      "icon": "assets/images/country/pt.png",
      "code": "pt",
      "text": "Portuguese",
      "storeViewCode": "pt"
    },
    // 17 Hungarian - hu.arb
    {
      "name": "Hungarian",
      "icon": "assets/images/country/hu.png",
      "code": "hu",
      "text": "Hungarian",
      "storeViewCode": "hu"
    },
    // 18 Hebrew - he.arb
    {
      "name": "Hebrew",
      "icon": "assets/images/country/he.png",
      "code": "he",
      "text": "Hebrew",
      "storeViewCode": "he"
    },
    // 19 Thai - th.arb
    {
      "name": "Thai",
      "icon": "assets/images/country/th.png",
      "code": "th",
      "text": "Thai",
      "storeViewCode": "th"
    },
    // 20 Dutch - nl.arb
    {
      "name": "Dutch",
      "icon": "assets/images/country/nl.png",
      "code": "nl",
      "text": "Dutch",
      "storeViewCode": "nl"
    },
    // 21 Serbian - sr.arb
    {
      "name": "Serbian",
      "icon": "assets/images/country/sr.jpeg",
      "code": "sr",
      "text": "Serbian",
      "storeViewCode": "sr"
    },
    // 22 Polish - pl.arb
    {
      "name": "Polish",
      "icon": "assets/images/country/pl.png",
      "code": "pl",
      "text": "Polish",
      "storeViewCode": "pl"
    },
    // 23 Persian - fa.arb
    {
      "name": "Persian",
      "icon": "assets/images/country/fa.png",
      "code": "fa",
      "text": "Persian",
      "storeViewCode": ""
    },
    // 24 Ukrainian - uk.arb
    {
      "name": "Ukrainian",
      "icon": "assets/images/country/uk.png",
      "code": "uk",
      "text": "Ukrainian",
      "storeViewCode": ""
    },
    // 25 Bengali - bn.arb
    {
      "name": "Bengali",
      "icon": "assets/images/country/bn.png",
      "code": "bn",
      "text": "Bengali",
      "storeViewCode": ""
    },
    // 26 Tamil - ta.arb
    {
      "name": "Tamil",
      "icon": "assets/images/country/ta.png",
      "code": "ta",
      "text": "Tamil",
      "storeViewCode": ""
    },
    // 27 Kurdish - ku.arb
    {
      "name": "Kurdish",
      "icon": "assets/images/country/ku.png",
      "code": "ku",
      "text": "Kurdish",
      "storeViewCode": ""
    },
    // 28 Czech - cs.arb
    {
      "name": "Czech",
      "icon": "assets/images/country/cs.png",
      "code": "cs",
      "text": "Czech",
      "storeViewCode": "cs"
    },
    // 29 Swedish sv.arb
    {
      "name": "Swedish",
      "icon": "assets/images/country/sv.png",
      "code": "sv",
      "text": "Swedish",
      "storeViewCode": ""
    },
    // 30 Finland fi.arb
    {
      "name": "Finland",
      "icon": "assets/images/country/fi.png",
      "code": "fi",
      "text": "Finland",
      "storeViewCode": ""
    },
    // 31 Greek el.arb
    {
      "name": "Greek",
      "icon": "assets/images/country/el.png",
      "code": "el",
      "text": "Greek",
      "storeViewCode": ""
    },
    // 32 Khmer km.arb
    {
      "name": "Khmer",
      "icon": "assets/images/country/km.png",
      "code": "km",
      "text": "Khmer",
      "storeViewCode": ""
    },
    // 33 Kannada intl_kn.arb
    {
      "name": "Kannada",
      "icon": "assets/images/country/kn.png",
      "code": "kn",
      "text": "Kannada",
      "storeViewCode": ""
    },
    // 34 Marathi intl_mr.arb
    {
      "name": "Marathi",
      "icon": "assets/images/country/mr.jpeg",
      "code": "mr",
      "text": "Marathi",
      "storeViewCode": ""
    },
    // 35 Malay intl_ms.arb
    {
      "name": "Malay",
      "icon": "assets/images/country/ms.jpeg",
      "code": "ms",
      "text": "Malay",
      "storeViewCode": ""
    },
    // 36 Bosnian intl_bs.arb
    {
      "name": "Bosnian",
      "icon": "assets/images/country/bs.png",
      "code": "bs",
      "text": "Bosnian",
      "storeViewCode": ""
    },
    // 37 Lao intl_lo.arb
    {
      "name": "Lao",
      "icon": "assets/images/country/lo.png",
      "code": "lo",
      "text": "Lao",
      "storeViewCode": ""
    },
    // 38 Slovak intl_sk.arb
    {
      "name": "Slovak",
      "icon": "assets/images/country/sk.png",
      "code": "sk",
      "text": "Slovak",
      "storeViewCode": ""
    },
    // 39 Swahili intl_sw.arb
    {
      "name": "Swahili",
      "icon": "assets/images/country/sw.png",
      "code": "sw",
      "text": "Swahili",
      "storeViewCode": ""
    },
    // 2 zh-Chinese
    {
      "name": "Chinese",
      "icon": "assets/images/country/zh.png",
      "code": "zh",
      "text": "Chinese",
      "storeViewCode": ""
    },
    // 40 Chinese Traditional intl_zh_Hant.arb
    {
      "name": "Chinese (traditional)",
      "icon": "assets/images/country/zh.png",
      "code": "zh_TW",
      "text": "Chinese (traditional)",
      "storeViewCode": ""
    },
    // 41 Chinese Simplified intl_zh_Hans.arb
    {
      "name": "Chinese (simplified)",
      "icon": "assets/images/country/zh.png",
      "code": "zh_CN",
      "text": "Chinese (simplified)",
      "storeViewCode": ""
    }
  ],
  "unsupportedLanguages": ['ku'],

  /// ➡️  lib/common/config/payments.dart
  "paymentConfig": {
    "DefaultCountryISOCode": "PK",

    "DefaultStateISOCode": "SINDH",

    /// Enable the Shipping option from Checkout, support for the Digital Download
    "EnableShipping": true,

    /// Enable the address shipping.
    /// Set false if use for the app like Download Digial Asset which is not required the shipping feature.
    "EnableAddress": true,

    /// Allow customers to add note when order
    "EnableCustomerNote": true,

    /// Allow customers to add address location link to order note
    "EnableAddressLocationNote": false,

    /// Allow both alphabetical and numerical characters in ZIP code
    "EnableAlphanumericZipCode": true,

    /// Enable the product review option
    "EnableReview": true,

    /// Enable the Google Maps picker from Billing Address.
    "allowSearchingAddress": true,

    /// Google API key to use for Google Maps.
    /// This config is only used for FluxBuilder's Auto build feature.
    /// To update manually, follow this below doc:
    /// https://support.inspireui.com/help-center/articles/42/44/16/google-map-address
    "GoogleApiKey": "AIzaSyASVmmCZgA0M3kdtpL7Ymj71Agic7QK3f4",

    "GuestCheckout": false,

    /// Enable Payment option
    "EnableOnePageCheckout": false,
    "NativeOnePageCheckout": false,

    /// This config is same with checkout page slug in the website
    "CheckoutPageSlug": {"en": "checkout"},

    /// Enable Credit card payment (only available for Fluxstore Shopipfy)
    "EnableCreditCard": false,

    /// Enable update order status to processing after checkout by COD on woo commerce
    "UpdateOrderStatus": true,

    /// Show order notes in order history detail.
    "ShowOrderNotes": true,

    /// Show Refund and Cancel button on Order Detail
    "EnableRefundCancel": true,

    /// If the order completed date is after this period (days), the refund button will be hidden.
    "RefundPeriod": 7
  },
  "payments": {
    "paypal": "assets/icons/payment/paypal.png",
    "stripe": "assets/icons/payment/stripe.png",
    "razorpay": "assets/icons/payment/razorpay.png",
    "tap": "assets/icons/payment/tap.png"
  },
  "stripeConfig": {
    "serverEndpoint": "https://stripe-server.vercel.app",
    "publishableKey": "pk_test_MOl5vYzj1GiFnRsqpAIHxZJl",
    "enabled": false,
    "paymentMethodId": "stripe",
    "returnUrl": "fluxstore://inspireui.com",

    /// Enable this automatically captures funds when the customer authorizes the payment.
    /// Disable will Place a hold on the funds when the customer authorizes the payment,
    /// but don’t capture the funds until later. (Not all payment methods support this.)
    /// https://stripe.com/docs/payments/capture-later
    /// Default: false
    "enableManualCapture": false
  },
  "paypalConfig": {
    "clientId":
        "ASlpjFreiGp3gggRKo6YzXMyGM6-NwndBAQ707k6z3-WkSSMTPDfEFmNmky6dBX00lik8wKdToWiJj5w",
    "secret":
        "ECbFREri7NFj64FI_9WzS6A0Az2DqNLrVokBo0ZBu4enHZKMKOvX45v9Y1NBPKFr6QJv2KaSp5vk5A1G",
    "production": false,
    "paymentMethodId": "paypal",
    "enabled": false
  },
  "razorpayConfig": {
    "keyId": "rzp_test_SDo2WKBNQXDk5Y",
    "keySecret": "RrgfT3oxbJdaeHSzvuzaJRZf",
    "paymentMethodId": "razorpay",
    "enabled": false
  },
  "tapConfig": {
    "SecretKey": "sk_test_XKokBfNWv6FIYuTMg5sLPjhJ",
    "paymentMethodId": "tap",
    "enabled": false
  },
  "mercadoPagoConfig": {
    "accessToken":
        "TEST-5726912977510261-102413-65873095dc5b0a877969b7f6ffcceee4-613803978",
    "production": false,
    "paymentMethodId": "woo-mercado-pago-basic",
    "enabled": false
  },
  "payTmConfig": {
    "paymentMethodId": "paytm",
    "merchantId": "your-merchant-id",
    "production": false,
    "enabled": false
  },
  "defaultCountryShipping": ['pakistan'],

  /// config for after shipping
  "afterShip": {
    "api": "e2e9bae8-ee39-46a9-a084-781d0139274f",
    "tracking_url": "https://fluxstore.aftership.com"
  },

  /// ➡️ lib/common/products.dart
  "productDetail": {
    "height": 0.4,
    "marginTop": 0,
    "safeArea": false,
    "showVideo": true,
    "showBrand": true,
    "showThumbnailAtLeast": 1,
    "layout": "simpleType",
    "borderRadius": 3.0,

    /// Enable this to show selected image variant in the top banner.
    "ShowSelectedImageVariant": true,

    "autoPlayGallery": true,
    "SliderShowGoBackButton": true,

    /// "SliderIndicatorType" can be "number", "dot". Default: "number".
    "SliderIndicatorType": 'number',

    /// Enable this to add a white background to top banner for transparent product image.
    "ForceWhiteBackground": false,

    /// Auto select first attribute of variable product if there is no default attribute.
    "AutoSelectFirstAttribute": true,

    /// Enable this to show review in product description.
    "enableReview": true,
    "attributeImagesSize": 50.0,
    "showSku": true,
    "showStockQuantity": true,
    "showProductCategories": true,
    "showProductTags": true,
    "hideInvalidAttributes": false,

    /// Enable this to show a quantity selector in product list.
    "showQuantityInList": false,

    /// Enable this to show Add to cart icon in search result list.
    "showAddToCartInSearchResult": true,

    /// Increase this number if you have yellow layout overflow error in product list.
    /// Should check "RatioProductImage" before changing this number.
    "productListItemHeight": 125
  },
  "blogDetail": {
    'showComment': true,
    'showHeart': true,
    'showSharing': true,
    'showTextAdjustment': true,
    'enableAudioSupport': false,
  },
  "productVariantLayout": {
    "color": "color",
    "size": "box",
    "height": "option",
    "color-image": "image"
  },
  "productAddons": {
    /// Set the allowed file type for file upload.
    /// On iOS will open Photos app.
    "allowImageType": true,
    "allowVideoType": true,

    /// Enable to allow upload files other than image/video.
    /// On iOS will open Files app.
    "allowCustomType": true,

    /// Set allowed file extensions for custom type.
    /// Leave empty ("allowedCustomType": []) to support all extensions.
    "allowedCustomType": ["png", "pdf", "docx"],

    /// NOTE: WordPress might restrict some file types for security purpose.
    /// To allow it, you can add this line to wp-config.php:
    /// define('ALLOW_UNFILTERED_UPLOADS', true);
    /// - which is NOT recommended.
    /// Instead, try to use a plugin like https://wordpress.org/plugins/wp-extra-file-types
    /// to allow custom file types.

    /// Allow selecting multiple files for upload. Default: false.
    "allowMultiple": false,

    /// Set the file size limit (in MB) for upload. Recommended: <15MB.
    "fileUploadSizeLimit": 5.0
  },
  "cartDetail": {"minAllowTotalCartValue": 0, "maxAllowQuantity": 100},

  /// Translate the product variant by languages
  /// As it could be limited with the REST API when request variant
  "productVariantLanguage": {
    "en": {
      "color": "Color",
      "size": "Size",
      "height": "Height",
      "color-image": "Color"
    },



  },

  /// Exclude this categories from the list
  "excludedCategory": 0,
  "saleOffProduct": {
    /// Show Count Down for product type SaleOff
    "ShowCountDown": true,
    "HideEmptySaleOffLayout": false,
    "Color": "#C7222B"
  },

  /// This is strict mode option to check the `visible` option from product variant
  /// https://tppr.me/4DJJs - default value is false
  "notStrictVisibleVariant": true,

  /// ➡️ lib/common/smartchat.dart
  "configChat": {
    "EnableSmartChat": false,
    "showOnScreens": [],
    "hideOnScreens": [],
    "version": "2",
  },

  /// config for the chat app
  /// config Whatapp: https://faq.whatsapp.com/en/iphone/23559013
  "smartChat": [
    {
      "app": "firebase",
      "imageData":
          "https://trello.com/1/cards/611a38c89ebde41ec7cf10e2/attachments/611a392cceb1b534aa92a83e/previews/611a392dceb1b534aa92a84d/download",
      "description": "Realtime Chat",
    },
    {
      "app": "https://wa.me/849908854",
      "iconData": "whatsapp",
      "description": "WhatsApp"
    },
    {"app": "tel:8499999999", "iconData": "phone", "description": "Call Us"},
    {"app": "sms://8499999999", "iconData": "sms", "description": "Send SMS"},
    {
      "app": "https://tawk.to/chat/5d830419c22bdd393bb69888/default",
      "iconData": "whatsapp",
      "description": "Tawk Chat"
    },
    {
      "app": "http://m.me/inspireui",
      "iconData": "facebookMessenger",
      "description": "Facebook Chat"
    },
    {
      "app":
          "https://twitter.com/messages/compose?recipient_id=821597032011931648",
      "imageData":
          "https://trello.com/1/cards/611a38c89ebde41ec7cf10e2/attachments/611a38d026894f10dc1091c8/previews/611a38d126894f10dc1091d6/download",
      "description": "Twitter Chat"
    }
  ],
  "adminEmail": "mk.khanprogrammer@gmail.com",
  "adminName": "KHAN",

  /// ➡️ lib/common/vendor.dart
  "vendorConfig": {
    /// Show Register by Vendor
    "VendorRegister": false,

    /// Disable show shipping methods by vendor
    "DisableVendorShipping": false,

    /// Enable/Disable showing all vendor markers on Map screen
    "ShowAllVendorMarkers": true,

    /// Enable/Disable native store management
    "DisableNativeStoreManagement": false,

    /// Dokan Vendor Dashboard
    "dokan": "my-account?vendor_admin=true",
    "wcfm": "store-manager?vendor_admin=true",

    /// Disable multivendor checkout
    "DisableMultiVendorCheckout": false,

    /// If this is false, then when creating/modifying products in FluxStore Manager
    /// The publish status will be removed.
    "DisablePendingProduct": false,
  },

  /// Enable Delivery Boy Management in FluxStore Manager(WCFM)
  "deliveryConfig": {
    "DisableDeliveryManagement": false,
  },

  /// ➡️ lib/common/loading.dart
  "loadingIcon": {"size": 30.0, "type": "fadingCube"},
  "splashScreen": {
    "enable": true,

    /// duration in milliseconds, used for all types except "rive" and "flare"
    "duration": 2000,

    ///  Type should be: 'fade-in', 'zoom-in', 'zoom-out', 'top-down', 'rive', 'flare', ''static'
    "type": "zoom-in",
    "image": "assets/images/splashscreen.png",

    /// AnimationName's is used for 'rive' and 'flare' type
    "animationName": "none"
  }
};
