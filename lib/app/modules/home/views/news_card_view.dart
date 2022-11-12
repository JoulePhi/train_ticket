import 'package:flutter/material.dart';
import 'package:kai_access/app/data/utils/app_colors.dart';
import 'package:kai_access/app/data/utils/utils.dart';
import 'package:get/get.dart';
import 'package:kai_access/app/data/images/app_images.dart';

class NewsCardView extends GetView {
  const NewsCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 280,
      // height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                decoration: BoxDecoration(
                    color: AppColors.lTurquoise,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Tips',
                  style: Utils.tStyleBold(14, AppColors.darkBlue),
                ),
              ),
              Utils.spaceV(10),
              SizedBox(
                width: 150,
                child: Text(
                  'Tetap jaga komunikasi selama di kereta',
                  style: Utils.tStyleBold(18, AppColors.deepPurple),
                ),
              )
            ],
          ),
          Expanded(child: SizedBox(child: Image.asset(AppImages.news1)))
        ],
      ),
    );
  }
}
