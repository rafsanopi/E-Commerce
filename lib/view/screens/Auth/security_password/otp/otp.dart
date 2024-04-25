import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 44.h),
        child: Column(
          children: [
            ///<=================================Title Text=====================================>
            const Center(
                child: CustomText(
              text: AppStrings.checkYourEmail,
              color: AppColors.blueNormal,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )),
            const CustomText(
              text:
                  "We sent a reset link to contact@dscode...com enter 5 digit code that mentioned in the email",
              color: AppColors.blueNormal,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              maxLines: 3,
              top: 8,
            ),

            SizedBox(
              height: 68.h,
            ),

            ///<======================================Pin Code Field============================>

            Form(
              // key: fromKey,
              child: PinCodeTextField(
                cursorColor: AppColors.blueNormal,
                keyboardType: TextInputType.number,
                // controller: pinController,
                enablePinAutofill: true,
                appContext: (context),
                onCompleted: (value) {
                  // controller.otp=value;
                },
                autoFocus: true,
                textStyle: const TextStyle(color: AppColors.greenNormal),
                pinTheme: PinTheme(
                  disabledColor: Colors.transparent,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12),
                  fieldHeight: 49.h,
                  fieldWidth: 47,
                  activeFillColor: AppColors.white,
                  selectedFillColor: AppColors.white,
                  inactiveFillColor: AppColors.white,
                  borderWidth: 0.5,
                  errorBorderColor: Colors.red,
                  activeBorderWidth: 0.8,
                  selectedColor: AppColors.greenNormal,
                  inactiveColor: const Color(0xFFCCCCCC),
                  activeColor: AppColors.greenNormal,
                ),
                length: 4,
                enableActiveFill: true,
              ),
            ),

            SizedBox(
              height: 28.h,
            ),

            ///<==============================Resend Button=============================>

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      const CustomText(
                        text: AppStrings.resendOTP,
                        color: AppColors.greenNormal,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      Container(
                        height: 1.h,
                        width: 105.w,
                        color: AppColors.greenNormal,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 56.h,
            ),

            ///<==================================Verify Button===========================>
            CustomButton(
              ontap: () {
                Get.toNamed(AppRoute.setPassWordScreen);
              },
              text: AppStrings.verifyCode,
            ),
          ],
        ),
      ),
    );
  }
}
