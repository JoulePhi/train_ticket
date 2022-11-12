import 'package:flutter/material.dart';
import 'package:kai_access/app/data/utils/app_colors.dart';
import 'package:kai_access/app/data/utils/utils.dart';
import 'package:get/get.dart';

class MyCardView extends GetView {
  const MyCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: 250,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: AppColors.oGradient,
              ),
              child: const Center(
                child: Text(
                  'Besok',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bengawan',
                  style: Utils.tStyleBold(14, AppColors.darkPurple),
                ),
                Utils.spaceV(10),
                Text(
                  'PWT-LPY',
                  style: Utils.tStyleBold(10, AppColors.grey),
                )
              ],
            ),
            Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: AppColors.bGradient,
                ),
                child: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                )),
          ],
        ));
  }
}
