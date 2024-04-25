import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
    HomeAppBar({super.key, this.location='',required this.onTapNotification,required this.onTapFilter, required this.area,});
  final String location;
  final String area;
  final VoidCallback onTapNotification;
  final VoidCallback onTapFilter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 44.h,),
      child: Column(
        children: [
          ///====================================Top Section================================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ///==================== location icon =====================
                  CustomImage(
                    imageSrc: AppIcons.locationPin,
                    imageType: ImageType.svg,
                    imageColor: AppColors.greenNormal,
                    size: 24.h,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),

                  ///========================== location =====================
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: AppStrings.location),
                      Row(
                        children: [
                          CustomText(
                            text: location,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: area,
                            fontWeight: FontWeight.w500,
                            left: 4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              ///<==================== notification ====================>
              GestureDetector(
                onTap: onTapNotification,
                child: CustomImage(
                  imageSrc: AppIcons.notification,
                  size: 24.h,
                  imageType: ImageType.svg,
                  imageColor: AppColors.greenNormal,
                ),
              )
            ],
          ),

       /*   SizedBox(
            height: 18.h,
          ),

          Divider(color: AppColors.blueLightHover,height: 1,),*/
          //====================================Search Section================================

          SizedBox(height: 8.h,),
          Row(children: [
            ///================Search Text Form Field==============
            Expanded(
                child: Container(
                  decoration:   BoxDecoration(

                  ),
                  child: CustomTextField(
                    borderRadius: 8.sp,
                    onTapClick: () {
                      Get.toNamed(AppRoute.searchScreen);
                    },
                    readOnly: true,
                    hintText: AppStrings.search,
                    isPrefixIcon: true,
                    hintStyle:const TextStyle(color: AppColors.blueLightActive,),
                    fillColor: Colors.transparent,
                    // height: 38,
                    fieldBorderColor: AppColors.blueLightActive,
                  ),
                )),
            SizedBox(
              width: 12.w,
            ),

            ///================Filter Button==============
            GestureDetector(
              onTap: onTapFilter,
              child: Container(
               padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Color(0xffCDCCCC)),
                  ],
                  color: AppColors.greenNormal,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CustomImage(imageSrc: AppIcons.filter,imageColor: AppColors.white,size: 24.h,),
              ),
            )

          ])
        ],
      ),
    );
  }
}
