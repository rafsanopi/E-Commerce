import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MotocycleCategoryScreen extends StatelessWidget {
  MotocycleCategoryScreen({super.key});
  List<Map<String, String>> productList = [
    {
      'image': 'https://images.unsplash.com/photo-1616889154907-0c5f6721dcba?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW90b2N5Y2xlfGVufDB8fDB8fHww',
      'name': 'Pulser',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1611241443322-b5524914fe20?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bW90b2N5Y2xlfGVufDB8fDB8fHww',
      'name': 'Hornet',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://images.unsplash.com/photo-1591216105236-5ba45970702a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bW90b2N5Y2xlfGVufDB8fDB8fHww',
      'name': 'MotorSport',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://plus.unsplash.com/premium_photo-1661900991997-81d451f37c15?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG1vdG9jeWNsZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Yamaha',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1616889154907-0c5f6721dcba?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW90b2N5Y2xlfGVufDB8fDB8fHww',
      'name': 'Dockweiler',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1611241443322-b5524914fe20?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bW90b2N5Y2xlfGVufDB8fDB8fHww',
      'name': 'Machine',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://images.unsplash.com/photo-1591216105236-5ba45970702a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bW90b2N5Y2xlfGVufDB8fDB8fHww',
      'name': 'MotorSport',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://plus.unsplash.com/premium_photo-1661900991997-81d451f37c15?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG1vdG9jeWNsZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Yamaha',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
          mainAxisExtent: 240),
      itemBuilder: (BuildContext context, int index) {
        return CustomCard(

            status: productList[index]['status'] ?? '',
            rating: productList[index]['rating'] ?? '',
            amount: productList[index]['amount'] ?? '',
            productName: productList[index]['name'] ?? '',
            onTapFavour: () {
              /*controller.isFavour.value = ! controller.isFavour.value;
                      controller.update();*/
            },
            productImage: productList[index]['image'] ?? '',
            onTapCard: () {
              Get.toNamed(AppRoute.carDetailsScreen);
            });
      },
    );
  }
}
