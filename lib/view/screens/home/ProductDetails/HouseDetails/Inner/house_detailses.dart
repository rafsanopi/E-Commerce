import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsHouse extends StatelessWidget {
  const DetailsHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(

            ///<=============================House title======================================>
            alignment: AlignmentDirectional.centerStart,
            child: CustomText(
              text: AppStrings.classicalHouse,
              color: AppColors.blueNormal,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.start,
              bottom: 4.h,
            )),     

        ///<=============================Location======================================>
        Row(
          children: [
            SvgPicture.asset(AppIcons.location),
            CustomText(
              text: "Dhaka Bangladesh",
              color: AppColors.blueNormal,
              fontWeight: FontWeight.w300,
              fontSize: 14,
              left: 8.w,
            ),
          ],
        ),

        ///<====================================Description====================================>
        CustomText(
          text:
              " Simply dummy text of the printing typesetting industry. Lorem Ipsum has the industry's stan dummy text ever since the 1500s, when an unknown printer a galley of and scrambled it to make a type specimen. Simply dummy text of the printing typesetting industry. Lorem Ipsum has the industry's stan dummy text ever since the 1500s, when an unknown printer a galley of and scrambled it to make a type specimen.",
          color: AppColors.blueNormal,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          maxLines: 1000,
          top: 14.h,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
