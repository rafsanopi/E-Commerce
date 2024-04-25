
import 'dart:async';

import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  navigate()async{
    //bool? isRemember =await SharePrefsHelper.getBool(AppConstants.rememberMe);

    Timer(const Duration(seconds: 3),(){
      // if(isRemember==true && isRemember !=null){
      //   Get.offNamed(AppRoute.bottomNavScreen);
      //
      // }else{
      //   Get.offNamed(AppRoute.signInScreen);
      // }
      Get.offNamed(AppRoute.onBoardingScreen);
    }
    );
  }
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:AppColors.greenNormal ,
      extendBody: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),
            CustomImage(imageSrc:AppImages.splashImage,imageType: ImageType.png, size: 260,),
            SizedBox(height: 136,),
            CustomImage(imageSrc: AppImages.splashTextLogo, imageType: ImageType.png),
          ],
        ),
      ),
    );
  }
}
