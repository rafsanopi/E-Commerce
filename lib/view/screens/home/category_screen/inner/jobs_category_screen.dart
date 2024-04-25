import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class JobsCategoryScreen extends StatelessWidget {
  JobsCategoryScreen({super.key});
  List<Map<String, String>> productList = [
    {
      'image': 'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGpvYnN8ZW58MHx8MHx8fDA%3D',
      'name': 'Conference',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://media.istockphoto.com/id/1537307002/photo/asian-chinese-young-man-concentration-and-listening-in-meeting-room.webp?b=1&s=170667a&w=0&k=20&c=aNrQ7Zg4csWGYWVJJnbpPsDJa5dokB3LZBr_IHu4aRQ=',
      'name': 'Flutter',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://media.istockphoto.com/id/1654537066/photo/asian-indian-male-participant-in-wheelchair-sharing-experience-knowledge-in-seminar-business.webp?b=1&s=170667a&w=0&k=20&c=kN17K6xYQvKw7liwm5bi0nZTVAhdsWv6-cpe2Nknec8=',
      'name': 'Full Stack',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://media.istockphoto.com/id/1304876683/photo/im-no-where-close-to-finishing-this-deadline-tonight.webp?b=1&s=170667a&w=0&k=20&c=k5hXid8v_5_KWpK9-dgnF1wydU1tsD0apE-yOUG4AYE=',
      'name': 'Backend',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGpvYnN8ZW58MHx8MHx8fDA%3D',
      'name': 'Conference',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://media.istockphoto.com/id/1537307002/photo/asian-chinese-young-man-concentration-and-listening-in-meeting-room.webp?b=1&s=170667a&w=0&k=20&c=aNrQ7Zg4csWGYWVJJnbpPsDJa5dokB3LZBr_IHu4aRQ=',
      'name': 'Flutter',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://media.istockphoto.com/id/1654537066/photo/asian-indian-male-participant-in-wheelchair-sharing-experience-knowledge-in-seminar-business.webp?b=1&s=170667a&w=0&k=20&c=kN17K6xYQvKw7liwm5bi0nZTVAhdsWv6-cpe2Nknec8=',
      'name': 'Full Stack',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://media.istockphoto.com/id/1304876683/photo/im-no-where-close-to-finishing-this-deadline-tonight.webp?b=1&s=170667a&w=0&k=20&c=k5hXid8v_5_KWpK9-dgnF1wydU1tsD0apE-yOUG4AYE=',
      'name': 'Backend',
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
