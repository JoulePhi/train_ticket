import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kai_access/app/data/images/app_images.dart';
import 'package:kai_access/app/data/utils/app_colors.dart';
import 'package:kai_access/app/data/utils/utils.dart';

import '../controllers/select_ticket_controller.dart';

class SelectTicketView extends GetView<SelectTicketController> {
  const SelectTicketView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height,
          child: Image.asset(
            AppImages.bg1,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: context.mediaQueryPadding.top,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Pilih tempat\ndudukmu',
                    style: Utils.tStyleBold(22, AppColors.deepPurple),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Ekonomi(C)',
                        style: Utils.tStyleMedium(12, AppColors.deepPurple),
                      ),
                      Utils.spaceV(10),
                      Text(
                        'Gerbong 2-3A',
                        style: Utils.tStyleBold(16, AppColors.lBlue),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            border:
                                Border.all(color: AppColors.lGrey, width: 2)),
                      ),
                      Utils.spaceH(10),
                      Text(
                        'Tersedia',
                        style: Utils.tStyleMedium(12, AppColors.deepPurple),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: AppColors.lOrange,
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      Utils.spaceH(10),
                      Text(
                        'Terisi',
                        style: Utils.tStyleMedium(12, AppColors.deepPurple),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            gradient: AppColors.bGradient,
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      Utils.spaceH(10),
                      Text(
                        'Terpilih',
                        style: Utils.tStyleMedium(12, AppColors.deepPurple),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: Get.width * .3,
                      child: Column(
                        children: [
                          Text(
                            'Gerbong',
                            style: Utils.tStyleBold(14, AppColors.darkPurple),
                          ),
                          Utils.spaceV(10),
                          Expanded(
                            child: SizedBox(
                              child: ListView.builder(
                                itemCount: controller.gerbong.length,
                                itemBuilder: ((context, index) {
                                  return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 10),
                                      child: Obx(
                                        () => GestureDetector(
                                          onTap: () {
                                            controller.indexGerbong.value =
                                                index;
                                          },
                                          child: Container(
                                            width: Get.width * .1,
                                            height: 100,
                                            decoration: controller
                                                        .indexGerbong.value !=
                                                    index
                                                ? BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: AppColors.lGrey,
                                                        width: 2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  )
                                                : BoxDecoration(
                                                    gradient:
                                                        AppColors.bGradient,
                                                    border: Border.all(
                                                        color: AppColors.lGrey,
                                                        width: 2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                            child: Center(
                                              child: Text(
                                                '${index + 1}',
                                                style: controller.indexGerbong
                                                            .value ==
                                                        index
                                                    ? Utils.tStyleBold(
                                                        16, Colors.white)
                                                    : Utils.tStyleBold(
                                                        16, AppColors.darkGrey),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ));
                                }),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Get.width * .7,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'A',
                                style:
                                    Utils.tStyleBold(14, AppColors.darkPurple),
                              ),
                              Text(
                                'B',
                                style:
                                    Utils.tStyleBold(14, AppColors.darkPurple),
                              ),
                              Text(
                                'C',
                                style:
                                    Utils.tStyleBold(14, AppColors.darkPurple),
                              ),
                              Text(
                                'D',
                                style:
                                    Utils.tStyleBold(14, AppColors.darkPurple),
                              ),
                              Text(
                                'E',
                                style:
                                    Utils.tStyleBold(14, AppColors.darkPurple),
                              ),
                            ],
                          ),
                          Utils.spaceV(10),
                          Expanded(
                            child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Obx(
                                  () => GridView.builder(
                                    itemCount: controller
                                        .gerbong[controller.indexGerbong.value]
                                        .length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5,
                                      crossAxisSpacing: 15,
                                      mainAxisSpacing: 25,
                                    ),
                                    itemBuilder: ((context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          controller.pilihKursi(index);
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: controller.gerbong[controller
                                                            .indexGerbong.value]
                                                        [index]['status'] ==
                                                    'available'
                                                ? BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: AppColors.lGrey,
                                                        width: 2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                  )
                                                : (controller.gerbong[controller
                                                                .indexGerbong
                                                                .value][index]
                                                            ['status'] ==
                                                        'selected')
                                                    ? BoxDecoration(
                                                        gradient:
                                                            AppColors.bGradient,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6),
                                                      )
                                                    : BoxDecoration(
                                                        color:
                                                            AppColors.lOrange,
                                                        borderRadius:
                                                            BorderRadius.circular(3))),
                                      );
                                    }),
                                  ),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: Container(
                  width: Get.width * .8,
                  height: 50,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff85D3FF), Color(0xff2596D7)],
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'PILIH TEMPAT DUDUK',
                      style: TextStyle(
                          fontFamily: 'Jkt-ExtraBold',
                          fontSize: 14,
                          color: Colors.white,
                          letterSpacing: 2),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
