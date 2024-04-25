import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessageAppBar extends StatelessWidget {
  const MessageAppBar(
      {super.key,
      required this.img,
      required this.userName,
      required this.bio});

  final String img;
  final String userName;

  final String bio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 64.h),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                ///=============================Back Button===============================

                IconButton(
                    onPressed: () {
                      navigator!.pop();
                    },
                    icon: const Icon(Icons.arrow_back)),

                ///=============================User Image===============================

                CustomNetworkImage(
                    boxShape: BoxShape.circle,
                    imageUrl: img,
                    height: 50.w,
                    width: 50.w),

                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///=============================User Name===============================

                      CustomText(fontWeight: FontWeight.w600, text: userName),

                      ///=============================User Bio===============================

                      CustomText(
                          fontSize: 10.w,
                          fontWeight: FontWeight.w300,
                          text: bio),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: const Divider(),
          )
        ],
      ),
    );
  }
}
