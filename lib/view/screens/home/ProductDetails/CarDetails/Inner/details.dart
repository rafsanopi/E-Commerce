import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /* ///<================================== TopThree feature===============================>
        Row (
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
                      imageSrc: AppIcons.watch,
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
        ),*/

        ///<============================Description===========================================>
        /* CustomText(
          top: 0.h,
          text:
          "my text ever since the 1500s, when an unknown printer a galley of and scrambled it to make a type specimen. Simply dummy text of the printing typesetting industry. Lorem Ipsum has the industry's stan dummy text ever since the 1500s, when an unknown printer a galley of and scrambled it to make a type specimen.",
          maxLines: 1000,
          textAlign: TextAlign.start,
          color: AppColors.blueNormal,fontSize: 12.h,
        )*/
        ReadMoreText(
          'Simply dummy text of the printing typesetting industry. Lorem Ipsum has the industrys stan dummy text ever since the 1500s, when an unknown.Simply dummy text of the printing typesetting industry. Lorem Ipsum has the industrys stan dummy text ever since the 1500s, when an unknown.',
          trimMode: TrimMode.Line,
          trimLines: 2,
          colorClickableText: Colors.pink,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
