import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/screens/Conversation/Inbox/inbox_app_bar.dart';
import 'package:bazar24_7/view/screens/Conversation/controller.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ChatController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const MessageAppBar(
                  img: AppImages.house1,
                  userName: "Jusef Dada",
                  bio: "Baddha,Dhaka,Bangladesh"),
              Expanded(
                child: ListView.builder(
                    reverse: true,
                    controller: controller.scrollController,
                    itemCount: controller.inboxChat.length,
                    itemBuilder: (context, index) {
                      if (index < controller.inboxChat.length) {
                        return Column(
                          ///=======================Align the text based on user=================>
                          crossAxisAlignment:
                              controller.inboxChat[index]["sender"] == "0"
                                  ? CrossAxisAlignment.end
                                  : CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Row(
                                mainAxisAlignment:
                                    controller.inboxChat[index]["sender"] == "0"
                                        ? MainAxisAlignment.end
                                        : MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),

                                  //=============================Type Image=========================

                                  // if (controller
                                  //         .inboxChat[index].content!.messageType ==
                                  //     MessageType.img)
                                  //   Container(
                                  //       height: 260.h,
                                  //       width: 260.w,
                                  //       decoration: BoxDecoration(
                                  //           borderRadius: BorderRadius.circular(20),
                                  //           image: DecorationImage(
                                  //               fit: BoxFit.contain,
                                  //               image: CachedNetworkImageProvider(
                                  //                 controller.inboxChat[index].content!
                                  //                     .message!,
                                  //               )))),

                                  ///=============================Type Message=========================

                                  if (controller.inboxChat[index]
                                          ["messageType"] ==
                                      "text")
                                    Flexible(
                                      child: Row(
                                        mainAxisAlignment:
                                            controller.inboxChat[index]
                                                        ["sender"] ==
                                                    "0"
                                                ? MainAxisAlignment.end
                                                : MainAxisAlignment.start,
                                        //crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          ///=======================Show time if Getting Message=================

                                          if (controller.inboxChat[index]
                                                  ["sender"] ==
                                              "0")
                                            CustomText(
                                              right: 10.w,
                                              text: "3.20",
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w200,
                                            ),

                                          ///============================Message Body==============================

                                          Flexible(
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16,
                                                      vertical: 10),
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: AppColors
                                                          .blueLightActive),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.r),
                                                    topRight:
                                                        Radius.circular(8.r),
                                                    bottomLeft:
                                                        controller.inboxChat[
                                                                        index][
                                                                    "sender"] ==
                                                                "0"
                                                            ? Radius.circular(
                                                                8.r)
                                                            : Radius.circular(
                                                                0.r),
                                                    bottomRight:
                                                        controller.inboxChat[
                                                                        index][
                                                                    "sender"] !=
                                                                "0"
                                                            ? Radius.circular(
                                                                8.r)
                                                            : Radius.circular(
                                                                0.r),
                                                  ),
                                                  color: controller.inboxChat[
                                                                  index]
                                                              ["sender"] ==
                                                          "0"
                                                      ? AppColors.greenDarkHover
                                                      : AppColors.greenLight),
                                              child: CustomText(
                                                maxLines: 10,
                                                textAlign: TextAlign.left,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                text:
                                                    controller.inboxChat[index]
                                                        ["message"],
                                                color:
                                                    controller.inboxChat[index]
                                                                ["sender"] ==
                                                            "0"
                                                        ? AppColors.white
                                                        : AppColors.blueNormal,
                                              ),
                                            ),
                                          ),

                                          ///=======================Show time if Sending Message=================

                                          if (controller.inboxChat[index]
                                                  ["sender"] !=
                                              "0")
                                            CustomText(
                                              left: 10.w,
                                              text: "3.20",
                                              fontSize: 10.w,
                                              fontWeight: FontWeight.w200,
                                            ),
                                        ],
                                      ),
                                    ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: GetBuilder<ChatController>(builder: (controller) {
        return AnimatedPadding(
          padding: MediaQuery.of(context).viewInsets,
          duration: const Duration(milliseconds: 100),
          curve: Curves.decelerate,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Row(
              children: [
                ///============================Text Input Field=====================>

                Expanded(
                    child: SizedBox(
                  height: 50,
                  child: CustomTextField(
                    textEditingController: controller.inputController,
                    cursorColor: AppColors.white,
                    fieldBorderColor: AppColors.greenNormal,
                    textInputAction: TextInputAction.done,
                    hintText: "Write your message",
                    hintStyle: const TextStyle(color: AppColors.white),
                    fillColor: AppColors.greenNormal,
                    borderRadius: 5.r,

                    ///===============================Send Button==========================
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.onMaessageSend();
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 4.w),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.r),
                            child: SvgPicture.asset(
                              AppIcons.sendIcon,
                              colorFilter: const ColorFilter.mode(
                                  AppColors.white, BlendMode.srcIn),
                              height: 24.h,
                              width: 24.w,
                            ),
                          )),
                    ),
                    inputTextStyle: const TextStyle(color: AppColors.white),
                  ),
                )),
              ],
            ),
          ),
        );
      }),
    );
  }
}
