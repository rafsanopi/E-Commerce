import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';

import '../../../../../utils/app_colors.dart';

class ImageViewListScreen extends StatefulWidget {
   ImageViewListScreen({super.key});

  @override
  State<ImageViewListScreen> createState() => _ImageViewListScreenState();
}

class _ImageViewListScreenState extends State<ImageViewListScreen> {
  List<String> images = [
    "https://images.unsplash.com/photo-1710874087896-6683c258deb4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1711300141594-daace023f082?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1711299253442-de19d4dacaae?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8fA%3D%3D"
  ];
 int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      PhotoView(
                        imageProvider: NetworkImage(images[currentIndex]),
                      ),
                      Positioned(
                          top: 64.h,
                          right: 24.w,
                          child: CustomText(
                            text: "${currentIndex + 1}/" "${images.length}",
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          )),
                    ],
                  );
                },
              ),
            ),
          ],
         ),

    );
  }
}

