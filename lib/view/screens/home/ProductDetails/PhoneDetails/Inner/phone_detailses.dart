import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class DetailsPhone extends StatelessWidget {
  const DetailsPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ///<===================================top three feature===============================>
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///<===================================== Storage =================================>
            Row(
              children: [
                Column(
                  children: [
                    const CustomImage(
                      imageSrc:AppIcons.hp,
                      size: 24,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "256",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          top: 4.h,
                        ),
                        CustomText(
                          text: "GB",
                          top: 4.h,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          left: 8.w,
                        ),
                      ],
                    ),
                    CustomText(
                      text: AppStrings.storage,
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

            ///<=====================================Display =================================>
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
                          text: "6.1",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          top: 4.h,
                        ),
                        CustomText(
                          text: "Inches",
                          top: 4.h,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          left: 8.w,
                        ),
                      ],
                    ),
                    CustomText(
                      text: AppStrings.display,
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

            ///<=====================================Chip =================================>
            Row(
              children: [
                Column(
                  children: [
                    const CustomImage(
                      imageSrc: AppIcons.watch,
                      size: 24,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "A15",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          top: 4.h,
                        ),
                        CustomText(
                          text: "Bionic chip",
                          top: 4.h,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          left: 8.w,
                        ),
                      ],
                    ),
                    CustomText(
                      text: "Chip",
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

        ///<=====================================Description===================================>
        CustomText(text:"Simply dummy text of the printing typesetting industry. Lorem Ipsum has the industry's stan dummy text ever since the 1500s, when an unknown printer a galley of and scrambled it to make a type specimen.",
          color: AppColors.blueNormal,fontWeight: FontWeight.w400,fontSize: 12,
          maxLines: 1000,
          textAlign: TextAlign.start,
          top: 13.h,
        ),
      ],
    );
  }
}
