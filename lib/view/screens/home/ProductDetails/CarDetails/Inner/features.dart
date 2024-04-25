import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: AlignmentDirectional.centerStart,
            child: CustomText(
              text: "${AppStrings.keySpecsOfTesla}" " talsa",
            )),
        SizedBox(
          height: 16.h,
        ),

        ///<====================================Three feature====================================>
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///<=====================================Horse power=================================>
            Row(
              children: [
                Column(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.hp,
                      size: 24,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "335",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          top: 4.h,
                        ),
                        CustomText(
                          text: "HP",
                          top: 4.h,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          left: 8.w,
                        ),
                      ],
                    ),
                    CustomText(
                      text: AppStrings.horsepower,
                      color: AppColors.blueNormal,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      top: 4.h,
                    ),
                  ],
                ),
                SizedBox(
                  width: 33.w,
                ),
                Container(
                  height: 36.h,
                  width: 1.w,
                  color: AppColors.blueNormal,
                ),
              ],
            ),

            ///<=====================================Torque =================================>
            Row(
              children: [
                Column(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.ibFt,
                      size: 24,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "335",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          top: 4.h,
                        ),
                        CustomText(
                          text: "lb-ft",
                          top: 4.h,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          left: 8.w,
                        ),
                      ],
                    ),
                    CustomText(
                      text: AppStrings.torque,
                      color: AppColors.blueNormal,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      top: 4.h,
                    ),
                  ],
                ),
                SizedBox(
                  width: 33.w,
                ),
                Container(
                  height: 36.h,
                  width: 1.w,
                  color: AppColors.blueNormal,
                ),
              ],
            ),

            ///<=====================================MPh =================================>
            Row(
              children: [
                Column(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.hp,
                      size: 24,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "335",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          top: 4.h,
                        ),
                        CustomText(
                          text: "sec",
                          top: 4.h,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          left: 8.w,
                        ),
                      ],
                    ),
                    CustomText(
                      text: "0-60 mph",
                      color: AppColors.blueNormal,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      top: 4.h,
                    ),
                  ],
                ),

                //
              ],
            ),
          ],
        ),

        SizedBox(
          height: 24.h,
        ),

        ///<====================================Performance=========================================>

        const Align(
            alignment: AlignmentDirectional.centerStart,
            child: CustomText(
              text: AppStrings.performance,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            )),
        SizedBox(
          height: 16.h,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///<==============================Top Speeds ==============================================>

            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(width: 1.w, color: AppColors.blueLight),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppIcons.speed,
                    height: 24.h,
                    width: 24.w,
                  ),
                  CustomText(
                    text: AppStrings.topSpeed,
                    color: AppColors.blueNormal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    bottom: 11.h,
                    top: 13,
                  ),
                  const CustomText(
                    text: "286 Kmph",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),

            ///<==============================Transmission  section ==============================================>
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(width: 1.w, color: AppColors.blueLight),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppIcons.transmission,
                    height: 24.h,
                    width: 24.w,
                  ),
                  CustomText(
                    text: AppStrings.transmission,
                    color: AppColors.blueNormal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    bottom: 11.h,
                    top: 13,
                  ),
                  const CustomText(
                    text: "Automatic",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
          ],
        ),

        ///<=====================================Notable feature=======================================>

        Align(
            alignment: AlignmentDirectional.centerStart,
            child: CustomText(
              text: AppStrings.notableFeatures,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              top: 16.h,
            )),
        SizedBox(
          height: 16.h,
        ),

        ///<=========================Bluetooth connectivity==============================================>
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.blutooth,
                  width: 12.h,
                  height: 20.h,
                ),
                CustomText(
                  left: 8.w,
                  text: AppStrings.bluetoothConnectivity,
                  color: AppColors.blueNormal,
                ),
              ],
            ),
            const CustomText(
              text: "Yes",
              color: AppColors.greenNormal,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
        SizedBox(
          height: 22.h,
        ),

        ///<==========================Divider============================================================>
        Container(
          height: 1.h,
          width: double.maxFinite,
          color: AppColors.blueLight,
        ),

        ///<============================================Automatic Climate Change==============================>
        SizedBox(
          height: 22.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.weather,
                  width: 12.h,
                  height: 20.h,
                ),
                CustomText(
                  left: 8.w,
                  text: AppStrings.automaticClimateControl,
                  color: AppColors.blueNormal,
                ),
              ],
            ),
            const CustomText(
              text: "Yes",
              color: AppColors.greenNormal,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ],
    );
  }
}
