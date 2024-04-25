import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_const.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderPreviewDetailsScreen extends StatelessWidget {
  const OrderPreviewDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///<===========================AppBar=================================>

      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const CustomText(
          text: AppStrings.orderDetails,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.notificationsScreen);
                },
                child: SvgPicture.asset(AppIcons.notification)),
          )
        ],
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.h,
            ),

            ///<======================================Top Image card==================================>

            Container(
              height: 180.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.blueLightHover,
              ),
              child: CustomNetworkImage(
                imageUrl: AppImages.house3,
                height: 180.h,
                width: double.maxFinite,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),

            ///<===================================Product Name========================================>
            CustomText(
              text: "Classical House ",
              top: 10.h,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),

            ///<========================================Product Price===================================>
            const CustomText(
              text: "\$62,0000",
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),

            ///<====================================Phone Number=========================================>
            CustomText(
              text: AppStrings.phoneNumber,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              top: 32.h,
            ),
            CustomText(
              text: "010245789635",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              top: 11.h,
              bottom: 10.h,
            ),

            ///<========================Divider=========================================================>
            Container(
              height: 1.h,
              width: double.maxFinite,
              color: AppColors.blueLightHover,
            ),

            ///<====================================Name=========================================>
            CustomText(
              text: AppStrings.name,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              top: 32.h,
            ),
            CustomText(
              text: "Md Jusef Dada",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              top: 11.h,
              bottom: 10.h,
            ),

            ///<========================Divider=========================================================>
            Container(
              height: 1.h,
              width: double.maxFinite,
              color: AppColors.blueLightHover,
            ),

            ///<====================================Location=========================================>
            CustomText(
              text: AppStrings.location,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              top: 32.h,
            ),
            CustomText(
              text: "Rampura Dhaka",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              top: 11.h,
              bottom: 10.h,
            ),

            ///<========================Divider=========================================================>
            Container(
              height: 1.h,
              width: double.maxFinite,
              color: AppColors.blueLightHover,
            ),

            ///<============================Map==========================================================>
            SizedBox(
              height: 70.h,
            ),
            Container(
              height: 166.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: const CustomImage(
                imageSrc: AppImages.mapImage,
                imageType: ImageType.png,
              ),
            ),

            SizedBox(
              height: 24.h,
            ),

            ///<================================Bottomm Container=========================================>
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.greenLight,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    topRight: Radius.circular(24.r)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///< ============================Discount Row======================================================>

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: AppStrings.discount),
                      CustomText(text: "\$62.00")
                    ],
                  ),

                  ///<================================Total =========================================================>
                  SizedBox(
                    height: 19.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: AppStrings.total,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      CustomText(
                        text: "\$620000",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.greenDarkHover,
                      ),
                    ],
                  ),

                  ///<======================================Order time===============================================>
                  SizedBox(
                    height: 19.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: AppStrings.orderTime,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      CustomText(
                        text: "4:43",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),

                  ///<======================================Expected delivery time====================================>
                  SizedBox(
                    height: 19.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: AppStrings.expectedDeliveryTime,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      CustomText(
                        text: "18:00",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greenDarkHover,
                      ),
                    ],
                  ),

                  ///<=======================================Button===================================================>



                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
        child:  CustomButton(
          ontap: () async{
            /* SharedPreferences preferences = await SharedPreferences.getInstance();
                      bool? isSignIn = preferences.getBool(AppConstants.signIn);
                      if(isSignIn ==true || isSignIn==null){
                        Get.toNamed(AppRoute.signInScreen);
                      }else{
                        Get.toNamed(AppRoute.inboxScreen);
                      }*/
            Get.toNamed(AppRoute.inboxScreen);
          },
          text: AppStrings.conversation,
        ),
      ),
    );
  }
}
