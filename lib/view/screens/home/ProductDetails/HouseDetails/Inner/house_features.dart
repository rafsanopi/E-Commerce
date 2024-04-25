import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturesHouse extends StatelessWidget {
  const FeaturesHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///<=============================House title======================================>
        // Align(
        //     alignment: AlignmentDirectional.centerStart,
        //     child: CustomText(
        //       text: AppStrings.classicalHouse,
        //       color: AppColors.blueNormal,
        //       fontSize: 20,
        //       fontWeight: FontWeight.w500,
        //       textAlign: TextAlign.start,
        //       bottom: 4.h,
        //     )),

        ///<=============================Location======================================>
        // Row(
        //   children: [
        //     SvgPicture.asset(AppIcons.location),
        //     CustomText(
        //       text: "Dhaka Bangladesh",
        //       color: AppColors.blueNormal,
        //       fontWeight: FontWeight.w300,
        //       fontSize: 14,
        //       left: 8.w,
        //     ),
        //   ],
        // ),

        SizedBox(
          height: 29.h,
        ),

        ///<=============================== Top Features=====================================>
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///<==============================BedRooms=============================================>
            Column(
              children: [
                Row(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.bedRoom,
                      imageType: ImageType.svg,
                      imageColor: AppColors.blueNormal,
                    ),
                    CustomText(
                      text: "2",
                      color: AppColors.blueNormal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      left: 16.w,
                    )
                  ],
                ),
                CustomText(
                  text: AppStrings.bedrooms,
                  top: 4.h,
                  color: AppColors.blueNormal,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),

            ///<==============================Bath Room=============================================>
            Column(
              children: [
                Row(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.bathRoom,
                      imageType: ImageType.svg,
                      imageColor: AppColors.blueNormal,
                    ),
                    CustomText(
                      text: "2",
                      color: AppColors.blueNormal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      left: 16.w,
                    )
                  ],
                ),
                CustomText(
                  text: AppStrings.bathrooms,
                  top: 4.h,
                  color: AppColors.blueNormal,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),

            ///<==============================Area =============================================>
            Column(
              children: [
                Row(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.apartment,
                      imageType: ImageType.svg,
                      imageColor: AppColors.blueNormal,
                    ),
                    CustomText(
                      text: "1500",
                      color: AppColors.blueNormal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      left: 16.w,
                    )
                  ],
                ),
                CustomText(
                  text: "${AppStrings.area}" "(in sqft)",
                  top: 4.h,
                  color: AppColors.blueNormal,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),

        SizedBox(
          height: 32.h,
        ),

        ///<========================================Others features===========================>

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///<==============================Build In year=============================================>
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.watch_2,
                      imageType: ImageType.svg,
                      imageColor: AppColors.blueNormal,
                    ),
                    CustomText(
                      text: "2024",
                      color: AppColors.blueNormal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      left: 16.w,
                    )
                  ],
                ),
                CustomText(
                  text: AppStrings.buildInYear,
                  top: 4.h,
                  color: AppColors.blueNormal,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),

            ///<==============================Living Room=============================================>
            Column(
              children: [
                Row(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.livingRoom,
                      imageType: ImageType.svg,
                      imageColor: AppColors.blueNormal,
                    ),
                    CustomText(
                      text: "2",
                      color: AppColors.blueNormal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      left: 16.w,
                    )
                  ],
                ),
                CustomText(
                  text: AppStrings.livingRoom,
                  top: 4.h,
                  color: AppColors.blueNormal,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),

            ///<==============================Car parking area=============================================>

            Column(
              children: [
                Row(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.car,
                      imageType: ImageType.svg,
                      imageColor: AppColors.blueNormal,
                    ),
                    CustomText(
                      text: "2",
                      color: AppColors.blueNormal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      left: 16.w,
                    )
                  ],
                ),
                CustomText(
                  text: AppStrings.carParkingArea,
                  top: 4.h,
                  color: AppColors.blueNormal,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
