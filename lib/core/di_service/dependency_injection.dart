import 'package:bazar24_7/view/screens/Auth/auth_controller/controller.dart';
import 'package:bazar24_7/view/screens/AddProduct/controller.dart';
import 'package:bazar24_7/view/screens/Conversation/controller.dart';

import 'package:bazar24_7/view/screens/SelectArea/controller.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/controller.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/screens/profile/controller/profile_controller.dart';
import 'package:bazar24_7/view/screens/profile/settings/controller/settings_controller.dart';
import 'package:get/get.dart';

class Dependancy extends Bindings {
  @override
  void dependencies() {
    //===================================Home Controller============================
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => AuthController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => SettingsController(), fenix: true);
    Get.lazyPut(() => SelectAreaController(), fenix: true);
    Get.lazyPut(() => ProductsDetailsController(), fenix: true);
    Get.lazyPut(() => ChatController(), fenix: true);
    Get.lazyPut(() => AddProductController(), fenix: true);
  }
}
