import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/profile/settings/order_history/rate_product/inner/rate_succes.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RateProductScreen extends StatelessWidget {
  const RateProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.rateThisProducts,
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  CustomText(
                    text: AppStrings.giveAReviewToThiService,
                  ),

                  SizedBox(height: 16.h,),

                  ///<======================= rating =========================>
                  RatingBar.builder(
                    itemSize: 24,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: AppColors.orangeNormal,
                    ),
                    onRatingUpdate: (rating) {
                      //controller.ratings.value = rating.toInt();
                      print(rating);
                    },
                  ),

                ],
              ),
            ),

            SizedBox(height:24.h,),

            CustomText(
              text: AppStrings.writeSomethingAboutThisProducts,
              bottom: 16.h,
            ),
           const CustomTextField(
             maxLines: 10,
              textInputAction: TextInputAction.next,
              hintText: AppStrings.writeHere,
              borderRadius: 8,
              fillColor: AppColors.blueLightHover,
              focusBorderColor: const Color(0xff9AC699),
              fieldBorderColor: const Color(0xff9AC699),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20..w),
        child: CustomButton(ontap: (){
              showDialog(
                  context: context,
                  builder: (context){
                    return RateSuccess();
                  });
        },text: AppStrings.submit,),
      ),
    );
  }
}
