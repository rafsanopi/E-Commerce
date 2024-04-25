import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<String> title = [
    AppStrings.hi,
    AppStrings.easyOrderingSystem,
    AppStrings.easyPaymentMethod
  ];

  List<String> titleSecondPart = [
    "Welcome to our car selling platform! Start your journey to selling your vehicle hassle-free.",
    "Join our network of satisfied sellers and unlock the potential to achieve your real estate goals effortlessly.",
    "Streamline your transactions with our hassle-free payment process."
  ];

  List<String> image = [
    AppImages.onboardingImageOne,
    AppImages.onboardingImageTwo,
    AppImages.onboardingImageThree,
  ];

 // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*Expanded(
                child: PageView.builder(
                  itemCount: title.length,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
      
                  },
                  itemBuilder: (context, index) {
                    return const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SizedBox(height: 100.h,),
                        ///================================Top text====================================>
                        Column(
                          children: [
                            CustomText(
                              text: 'Hi',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blueNormal,
                              textAlign: TextAlign.center,
                            ),
                            CustomText(
                              text: 'Welcome to our car selling platform! Start your journey to selling your vehicle hassle-free.',
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              color: AppColors.blueNormal,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ],
                        ),
      
                        ///<===========================================Image=====================================================>
      
                        CustomImage(
                          imageSrc:  AppImages.onboardingImageOne,
      
                          imageType: ImageType.png,
                        ),
                      ],
                    );
                  },
                ),
              ),*/
              Column(
                children: [
                  SizedBox(height: 44.h,),
                  const CustomText(
                    text: 'Welcome to Bazar 24/7!',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greenNormal,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24.h,),
                  const CustomText(
                    text: 'Congratulations on taking the first step towards unlocking exclusive savings and discovering hidden gems in your area.With Local Deals, you will never miss out on amazing discounts, promotions, and events right in your neighborhood.',
                    textAlign: TextAlign.center,
                    maxLines: 10,
                    color: AppColors.blueNormal,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                  SizedBox(height: 24.h,),
                  const CustomText(
                    text: 'Explore a variety of deals tailored to your interests, from Realstate to Cars and more.Start saving while supporting local businesses and experiencing all that your community has to offer.',
                    textAlign: TextAlign.center,
                    maxLines: 10,
                    color: AppColors.blueNormal,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                  SizedBox(height: 24.h,),
                  const CustomText(
                    text: 'Get ready to uncover the best deals around and make the most of every moment with Local Deals. Happy exploring!',
                    textAlign: TextAlign.center,
                    maxLines: 10,
                    color: AppColors.blueNormal,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ],
              ),
      
             /* Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(),
      
                  ///========================================DotIndicator=================================================>
                  Container(
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                    decoration: const BoxDecoration(
                      color: AppColors.greenLightHover,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: DotsIndicator(
                      dotsCount: title.length,
                      position: currentIndex,
                      decorator: DotsDecorator(
                        color: AppColors.greenLightActive,
                        activeColor: AppColors.greenNormal,
                        activeSize: Size(12.h, 12.w),
                        size: Size.square(12.r),
                      ),
                    ),
                  ),
                ],
              ),*/
      

      
              ///<===============================================Get start button======================================================>
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
          child:   CustomButton(ontap: () {
            Get.offAllNamed(AppRoute.signInScreen);
          }),
        ),
      ),
    );
  }
}
