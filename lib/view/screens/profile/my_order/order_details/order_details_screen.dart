import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: 'Product Details',
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///<================= product image ==================>
            CustomNetworkImage(
              imageUrl: AppImages.car2,
              height: 184.h,
              width: MediaQuery.of(context).size.width,
              borderRadius: BorderRadius.circular(8.sp),
            ),
            SizedBox(height: 24.h,),

            ///<===================== description ===================>
            const CustomText(
               maxLines: 10,
               textAlign: TextAlign.start,
               text: 'Simply dummy text of the printing typesetting industry. Lorem Ipsum has the industrys stan dummy text ever since the 1500s, when an unknown printer a galley of and scrambled it to make a type specimen.',

             ),

            ///<===================== product name ======================>
              CustomText(
              maxLines: 10,
              textAlign: TextAlign.start,
              text: 'Tesla Model 3',
              fontSize: 18.h,
                fontWeight: FontWeight.w500,
                top: 16.h,
                bottom: 8.h,
            ),

            ///<===================== product model ======================>
            const CustomText(
              maxLines: 10,
              textAlign: TextAlign.start,
              text: 'Porsche/Luxury/ The best  2-3L EcoBoost',
            ),

            ///<===================== product amount ======================>
            CustomText(
              maxLines: 10,
              textAlign: TextAlign.start,
              text: '\$${620000}',
              fontSize: 18.h,
              fontWeight: FontWeight.w500,
              top: 16.h,
              bottom: 8.h,
            ),

            ///<===================== buying date ========================>
             const Row(
               children: [
                 CustomText(
                   text: 'Buying Date : ',
                 ),
                 CustomText(
                   text: '10 Feb 2024',
                 ),
               ],
             ),

            ///<===================== guaranty ========================>
            const Row(
              children: [
                CustomText(
                  text: 'Guaranty : ',
                ),
                CustomText(
                  text: '1 year',
                ),
              ],
            ),

            ///<===================== guaranty ========================>
            const Row(
              children: [
                CustomText(
                  text: 'Warranty :',
                ),
                CustomText(
                  text: '1 year',
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
