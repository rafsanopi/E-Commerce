import 'package:bazar24_7/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/app_route/app_route.dart';
import 'core/di_service/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'view/widgets/StatusBarColor/statusebarcolor.dart';

void main() {
  runApp(const MyApp());
  Dependancy di = Dependancy();
  di.dependencies();
  DeviceUtils.statusBarColor();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200),
        initialRoute: AppRoute.splashscreen,
        navigatorKey: Get.key,
        getPages: AppRoute.routes,
      ),
    );
  }
}
