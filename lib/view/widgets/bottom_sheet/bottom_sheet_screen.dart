import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatelessWidget {
    BottomSheetScreen({super.key, required this.mainText, required this.sureText, required this.onTap});
  final String mainText;
  final String sureText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 268 + MediaQuery.of(context).viewInsets.bottom,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.h),
      child: Column(
        children: [
            CustomText(
                text: mainText,
              fontWeight: FontWeight.w500,
              fontSize: 18.h,
            ),
          CustomText(
            maxLines: 2,
            textAlign: TextAlign.center,
            text: sureText,
            fontSize: 16.h,
            top: 16.h,
            bottom: 24.h,
          ),
          Row(
            children: [
              Expanded(
                  child: CustomButton(ontap: (){
                    Get.back();
                  },text: AppStrings.cancel,height: 44.h,)
              ),
              SizedBox(width: 16.w,),
              Expanded(
                  child: CustomButton(ontap: onTap,text: AppStrings.yes,buttonColor: AppColors.greenLightActive,textColor: AppColors.greenNormal,height: 44.h,)
              ),
            ],
          )
        ],
      )
    );
  }
}
