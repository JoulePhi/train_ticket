import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kai_access/app/data/images/app_icons.dart';
import 'package:kai_access/app/data/images/app_images.dart';
import 'package:kai_access/app/data/utils/app_colors.dart';
import 'package:kai_access/app/data/utils/utils.dart';
import 'package:kai_access/app/modules/home/views/my_card_view.dart';
import 'package:kai_access/app/modules/home/views/news_card_view.dart';
import 'package:kai_access/app/modules/home/views/ticket_card_view.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bg), fit: BoxFit.fill),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppIcons.burgerMenu,
                  height: 25,
                ),
                Expanded(
                  child: SizedBox(
                    child: ListView(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Align(
                                child: Image.asset(
                                  AppImages.home3d,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Utils.spaceV(60),
                                SizedBox(
                                  width: Get.width / 2,
                                  child: Text(
                                    'Mau pergi ke mana hari ini?',
                                    style: Utils.tStyleBold(
                                        24, AppColors.darkPurple),
                                  ),
                                ),
                                Utils.spaceV(40),
                                const TicketCardView(),
                                Utils.spaceV(20),
                                Text(
                                  'Tiket Saya',
                                  style: Utils.tStyleBold(
                                    16,
                                    AppColors.deepPurple,
                                  ),
                                ),
                                Utils.spaceV(20),
                                SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      const MyCardView(),
                                      Utils.spaceH(20),
                                      const MyCardView(),
                                    ],
                                  ),
                                ),
                                Utils.spaceV(20),
                                Text(
                                  'Berita',
                                  style: Utils.tStyleBold(
                                    16,
                                    AppColors.deepPurple,
                                  ),
                                ),
                                Utils.spaceV(10),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      const NewsCardView(),
                                      Utils.spaceH(10),
                                      const NewsCardView(),
                                      Utils.spaceH(10),
                                      const NewsCardView(),
                                      Utils.spaceH(10),
                                      const NewsCardView(),
                                      Utils.spaceH(10),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
