import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/view/screens/AddProduct/controller.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class YesNowDropDown extends StatelessWidget {
  YesNowDropDown({super.key});
  List<String> yesNo=["Yes","No"];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
      builder: (controller) {
        return Container(
            color: AppColors.greenLight,
            height: 100.h,
            width: 100.w,
            padding: EdgeInsets.all(8.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:List.generate(2,(index) {
                return GestureDetector(
                    onTap:(){
                     controller.expend=!controller.expend;
                     controller.productBluetooth.text=yesNo[index];
                     controller.update();
                    },
                    child: CustomText(text:yesNo[index]));

              },),
            )

        );
      }
    );
  }
}


class ClimetYesNowDropDown extends StatelessWidget {
  ClimetYesNowDropDown({super.key});
  List<String> yesNo=["Yes","No"];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
        builder: (controller) {
          return Container(
              color: AppColors.greenLight,
              height: 100.h,
              width: 100.w,
              padding: EdgeInsets.all(8.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:List.generate(2,(index) {
                  return GestureDetector(
                      onTap:(){
                        controller.climetExpend=!controller.climetExpend;
                        controller.productClimate.text=yesNo[index];
                        controller.update();
                      },
                      child: CustomText(text:yesNo[index]));

                },),
              )

          );
        }
    );
  }
}

