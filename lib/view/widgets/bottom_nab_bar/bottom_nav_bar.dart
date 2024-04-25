/*
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/view/screens/home/home/home_screen.dart';
import 'package:bazar24_7/view/screens/message/message/message_screen.dart';
import 'package:bazar24_7/view/screens/profile/profile/profile_screen.dart';
import 'package:bazar24_7/view/screens/white_list/white_list/white_list.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  int _bottomNavIndex = 0;

  List<Widget> pages = [const HomeScreen(),const MessageScreen(), const WhiteListScreen(), ProfileScreen()];


  List<String> label = ["Home", "Archive", "Search", "Profile"];

  List<String> icon = [
    AppIcons.home,
    AppIcons.chat,
    AppIcons.favourite,
    AppIcons.person
  ];

  List<String> activeIcon = [
    AppIcons.homeActive,
    AppIcons.chatActive,
    AppIcons.favourite,
    AppIcons.person
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: pages[_bottomNavIndex],

        ///<===============================pluss Button===============================>

      */
/*  floatingActionButton: GestureDetector(
          onTap: (){
            mScontroller.uStatuse==1?
            Get.toNamed(AppRoute.addStoryScreen):Get.toNamed(AppRoute.subscriptionPackage);
          },
          child: Container(
            padding: EdgeInsets.all(20.r),
            margin: EdgeInsets.only(bottom:21.h,),
            // height: 64.h,
            // width: 64.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.blue_500,
            ),
            child:  Icon(Icons.add,color: AppColors.whiteColor,size: 24.r,),
          ),
        ),*/ /*


        ///<=====================================Main row=============================================>

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 105.h,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.transparent,
              ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                label.length,
                    (index) {
                  return TextButton(

                    style: const ButtonStyle(),
                    onPressed:(){
                      setState(() {
                        _bottomNavIndex = index;
                      });
                    },
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          _bottomNavIndex == index
                              ? activeIcon[_bottomNavIndex]
                              : icon[index],
                          colorFilter: ColorFilter.mode(
                              _bottomNavIndex == index
                                  ? AppColors.greenNormal
                                  : AppColors.greenNormal,
                              BlendMode.srcIn),
                          height: 24.h,
                          width: 24.w,
                        ),
                      ],
                    ), );
                },
              ),
            ),
          ),
        )
    );
  }
}*/
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_product_screen.dart';
import 'package:bazar24_7/view/screens/home/home/home_screen.dart';
import 'package:bazar24_7/view/screens/message/message/message_screen.dart';
import 'package:bazar24_7/view/screens/profile/profile/profile_screen.dart';
import 'package:bazar24_7/view/screens/select_product/select_product/select_product_screen.dart';
import 'package:bazar24_7/view/screens/white_list/white_list/white_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;

  const BottomNavBar({required this.currentIndex, super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var bottomNavIndex = 0;

  List<String> selectedIcon = [
    AppIcons.homeActive,
    AppIcons.chatActive,
    AppIcons.addButton,
    AppIcons.favourSelect,
    AppIcons.personSelect,
  ];

  List<String> unselectedIcon = [
    AppIcons.home,
    AppIcons.chat,
    AppIcons.addButton,
    AppIcons.favourite,
    AppIcons.person,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 50.h,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
      ),
      alignment: Alignment.center,
      /* decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 2),
                blurRadius: 8,
                color: Colors.black.withOpacity(0.1)),
          ]),*/
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          unselectedIcon.length,
          (index) => GestureDetector(
            onTap: () => onTap(index),
            child: Padding(
              padding: const EdgeInsetsDirectional.all(0),
              child: index == bottomNavIndex
                  ? SvgPicture.asset(
                      selectedIcon[index],
                    )
                  : SvgPicture.asset(
                      unselectedIcon[index],
                    ),
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    // HomeController homeController = Get.find<HomeController>();
    // homeController.scrollController.dispose();
    if (index == 0) {
      if (!(widget.currentIndex == 0)) {
        Get.offAll(() => HomeScreen());
      }
    } else if (index == 1) {
      if (!(widget.currentIndex == 1)) {
        Get.to(() => const MessageScreen());
      }
    } else if (index == 2) {
      if (!(widget.currentIndex == 2)) {
        Get.offAll(() => AddProductScreen());
      }
    } else if (index == 3) {
      if (!(widget.currentIndex == 3)) {
        Get.offAll(() => WhiteListScreen());
      }
    } else if (index == 4) {
      if (!(widget.currentIndex == 4)) {
        Get.offAll(() => const ProfileScreen());
      }
    }
  }
}
