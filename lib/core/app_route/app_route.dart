import 'package:bazar24_7/view/screens/AddProduct/add_phone.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_product_screen.dart';
import 'package:bazar24_7/view/screens/Conversation/Inbox/inbox.dart';
import 'package:bazar24_7/view/screens/Auth/security_password/forget_password/forgot_password.dart';
import 'package:bazar24_7/view/screens/Auth/security_password/otp/otp.dart';
import 'package:bazar24_7/view/screens/Auth/security_password/password_update_success/password_updated_successfull.dart';
import 'package:bazar24_7/view/screens/Auth/security_password/set_password/set_password.dart';
import 'package:bazar24_7/view/screens/SelectArea/select_area.dart';
import 'package:bazar24_7/view/screens/UserMode/user_mode.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/CarDetails/car_details.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/HouseDetails/house_details.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/ImageViewCard/image_view.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/OrderDetails/order_preview_details_screen.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/PhoneDetails/phone_details.dart';
import 'package:bazar24_7/view/screens/home/category_screen/category_screen.dart';
import 'package:bazar24_7/view/screens/home/feature_products/feature_products_screen.dart';
import 'package:bazar24_7/view/screens/home/filter/filter_screen.dart';
import 'package:bazar24_7/view/screens/home/home/home_screen.dart';
import 'package:bazar24_7/view/screens/Auth/sign_in/sign_in.dart';
import 'package:bazar24_7/view/screens/Auth/sign_up/sign_up/sign_up.dart';
import 'package:bazar24_7/view/screens/Auth/success_sign_up/successfull_sign_up.dart';
import 'package:bazar24_7/view/screens/OnBoardingScreen/onboarding.dart';
import 'package:bazar24_7/view/screens/home/search/search_screen.dart';
import 'package:bazar24_7/view/screens/home/special_offer/special_offer_screen.dart';
import 'package:bazar24_7/view/screens/notifications/notifications_screen.dart';
import 'package:bazar24_7/view/screens/profile/all_products/all_products_screen.dart';
import 'package:bazar24_7/view/screens/profile/edit_profile/edit_profile_screen.dart';
import 'package:bazar24_7/view/screens/profile/my_dashboard/my_dashboard_screen.dart';
import 'package:bazar24_7/view/screens/profile/my_order/my_order/my_order_screen.dart';
import 'package:bazar24_7/view/screens/profile/my_order/order_details/order_details_screen.dart';
import 'package:bazar24_7/view/screens/profile/order_request/order_request_screen.dart';
import 'package:bazar24_7/view/screens/profile/product_stock/product_stock_screen.dart';
import 'package:bazar24_7/view/screens/profile/settings/about/about_screen.dart';
import 'package:bazar24_7/view/screens/profile/settings/change_password/change_password_screen.dart';
import 'package:bazar24_7/view/screens/profile/settings/current_location/current_loaction_screen.dart';
import 'package:bazar24_7/view/screens/profile/settings/location/location_screen.dart';
import 'package:bazar24_7/view/screens/profile/settings/order_history/order_history/order_history_screen.dart';
import 'package:bazar24_7/view/screens/profile/settings/order_history/rate_product/rate_product_screen.dart';
import 'package:bazar24_7/view/screens/profile/settings/privacy_policy/privacy_policy_screen.dart';
import 'package:bazar24_7/view/screens/profile/settings/settings/settings_screen.dart';
import 'package:bazar24_7/view/screens/select_product/select_product/select_product_screen.dart';
import 'package:bazar24_7/view/screens/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


class AppRoute {
  ///========================Initial Screens======================
  static const String splashscreen = "/splash_screen";
  static const String homeScreen = "/home_screen";
  static const String onBoardingScreen = "/onBoarding_screen";
  static const String signInScreen = "/sign_in_screen";
  static const String signUpScreen = "/sign_up_screen";
  static const String signUpSeccessFullScreen = "/signUp_success_fullScreen";
  static const String forgotPassWord = "/forgot_pass_word";
  static const String otpScreen = "/otp_screen";
  static const String passUpdateSuccess = "/pass_update_success";
  static const String setPassWordScreen = "/setPass_word_screen";
  static const String notificationsScreen = "/notifications_screen";
  static const String featureProductsScreen = "/feature_products_screen";
  static const String specialOfferScreen = "/special_offer_screen";
  static const String searchScreen = "/search_screen";
  static const String filterScreen = "/filter_screen";
  static const String editProfileScreen = "/edit_profile_screen";
  static const String settingsScreen = "/settings_screen";
  static const String locationScreen = "/location_screen";
  static const String changePasswordScreen = "/change_password_screen";
  static const String privacyPolicyScreen = "/privacy_policy_screen";
  static const String aboutScreen = "/about_screen";
  static const String currentLocationScreen = "/current_loaction_screen";
  static const String orderHistoryScreen = "/order_history_screen";
  static const String allProductsScreen = "/all_products_screen";
  static const String orderRequestScreen = "/order_request_screen";
  static const String myOrderScreen = "/my_order_screen";
  static const String orderDetailsScreen = "/order_details_screen";
  static const String myDashboardScreen = "/my_dashboard_screen";
  static const String selectProductScreen = "/select_product_screen";
  static const String productStockScreen = "/product_stock_screen";
  static const String rateProductScreen = "/rate_product_screen";
  static const String userModeScreen = "/user_mode_screen";
  static const String selectArea = "/select_area";
  static const String carDetailsScreen = "/car_details_screen";
  static const String houseDetailsScreen = "/house_details_screen";
  static const String phoneDetailsScreen = "/phone_details_screen";
  //static const String orderDetailsScreen = "/order_details_screen";
  static const String inboxScreen = "/inbox_screen";
  static const String addCarScreen = "/add_car_screen";
  static const String addHouseScreen = "/add_house_screen";
  static const String addPhoneScreen = "/add_phone_screen";
  static const String orderPreviewDetailsScreen = "/order_preview_details_screen";
  static const String categoryScreen = "/category_screen";
  static const String addProductScreen = "/add_product_screen";
  static const String photoView = "/photo_view_screen";


  static List<GetPage> routes = [
    ///========================Route Screens======================
    GetPage(name: splashscreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () =>  HomeScreen()),
    GetPage(name: onBoardingScreen, page: () =>  OnBoarding()),
    GetPage(name: signInScreen, page: () =>  SignInScreen()),
    GetPage(name: signUpScreen, page: () =>  SignUpScreen()),
    GetPage(name: notificationsScreen, page: () =>  NotificationsScreen()),
    GetPage(name: signUpSeccessFullScreen, page: () =>SucccessfullSignUp()),
    GetPage(name: forgotPassWord, page: () =>ForgotPassWord()),
    GetPage(name: otpScreen, page: () =>OtpScreen()),
    GetPage(name: passUpdateSuccess, page: () =>PassUpdateSuccess()),
    GetPage(name: setPassWordScreen, page: () =>SetpassWordScreen()),
    GetPage(name: featureProductsScreen, page: () =>FeatureProductsScreen()),
    GetPage(name: specialOfferScreen, page: () =>SpecialOfferScreen()),
    GetPage(name: searchScreen, page: () =>SearchScreen()),
    GetPage(name: filterScreen, page: () =>FilterScreen()),
    GetPage(name: editProfileScreen, page: () =>EditProfileScreen()),
    GetPage(name: settingsScreen, page: () =>SettingsScreen()),
    GetPage(name: locationScreen, page: () =>LocationScreen()),
    GetPage(name: changePasswordScreen, page: () =>ChangePasswordScreen()),
    GetPage(name: aboutScreen, page: () =>AboutScreen()),
    GetPage(name: privacyPolicyScreen, page: () =>PrivacyPolicyScreen()),
    GetPage(name: currentLocationScreen, page: () =>CurrentLocationScreen()),
    GetPage(name: orderHistoryScreen, page: () =>OrderHistoryScreen()),
    GetPage(name: allProductsScreen, page: () =>AllProductsScreen()),
    GetPage(name: orderRequestScreen, page: () =>OrderRequestScreen()),
    GetPage(name: myOrderScreen, page: () =>MyOrderScreen()),
    //GetPage(name: orderDetailsScreen, page: () =>OrderDetailsScreen()),
    GetPage(name: myDashboardScreen, page: () =>MyDashboardScreen()),
    GetPage(name: selectProductScreen, page: () =>SelectProductScreen()),
    GetPage(name: productStockScreen, page: () =>ProductStockScreen()),
    GetPage(name: rateProductScreen, page: () =>RateProductScreen()),
    GetPage(name: userModeScreen, page: () =>UserModeScreen()),
    GetPage(name: selectArea, page: () =>SelectAreaScreen()),
    GetPage(name: carDetailsScreen, page: () =>CarDetailsPage()),
    GetPage(name: houseDetailsScreen, page: () =>HouseDetails()),
    GetPage(name: orderDetailsScreen, page: () =>OrderDetailsScreen()),
    GetPage(name: phoneDetailsScreen, page: () =>PhoneDDetailsScreen()),
    GetPage(name: inboxScreen, page: () =>InboxScreen()),
    GetPage(name: addProductScreen, page: () =>AddProductScreen()),
    GetPage(name: addPhoneScreen, page: () =>AddPhoneScreen()),
    GetPage(name: orderPreviewDetailsScreen, page: () =>OrderPreviewDetailsScreen()),
    GetPage(name: categoryScreen, page: () =>CategoryScreen()),
    GetPage(name: photoView, page: () =>ImageViewListScreen()),

  ];
}
