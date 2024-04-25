import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MobileCategoryScreen extends StatelessWidget {
  MobileCategoryScreen({super.key});
  List<Map<String, String>> productList = [
    {
      'image': 'https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1vYmlsZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Symphony',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1567581935884-3349723552ca?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bW9iaWxlfGVufDB8fDB8fHww',
      'name': 'Samsung',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://images.unsplash.com/photo-1501162946741-4960f990fdf4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fG1vYmlsZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Iphone',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://images.unsplash.com/photo-1528795259021-d8c86e14354c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fG1vYmlsZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Iphone',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1vYmlsZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Symphony',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1567581935884-3349723552ca?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bW9iaWxlfGVufDB8fDB8fHww',
      'name': 'Samsung',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://images.unsplash.com/photo-1501162946741-4960f990fdf4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fG1vYmlsZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Iphone',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://images.unsplash.com/photo-1528795259021-d8c86e14354c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fG1vYmlsZXxlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Iphone',
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
