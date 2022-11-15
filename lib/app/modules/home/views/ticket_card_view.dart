import 'package:flutter/material.dart';
import 'package:kai_access/app/data/utils/app_colors.dart';
import 'package:kai_access/app/data/utils/utils.dart';
import 'package:get/get.dart';
import 'package:kai_access/app/routes/app_pages.dart';

class TicketCardView extends GetView {
  const TicketCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: Get.width,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Keberangkatan',
                      style: Utils.tStyleBold(12, AppColors.lBlue),
                    ),
                    Text(
                      'PWT',
                      style: Utils.tStyleBold(
                        20,
                        AppColors.darkPurple,
                      ),
                    ),
                    Text(
                      'Stasiun Purwokerto',
                      style: Utils.tStyleThin(10, AppColors.grey),
                    )
                  ],
                ),
              ),
              const SizedBox(
                child: Icon(
                  Icons.swap_horiz_rounded,
                  color: AppColors.lBlue,
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Tujuan',
                      style: Utils.tStyleBold(12, AppColors.lBlue),
                    ),
                    Text(
                      'SLO',
                      style: Utils.tStyleBold(
                        20,
                        AppColors.darkPurple,
                      ),
                    ),
                    Text(
                      'Solo Balapan',
                      style: Utils.tStyleThin(10, AppColors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: .1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tanggal Keberangkatan',
                    style: Utils.tStyleBold(12, AppColors.lBlue),
                  ),
                  Text(
                    'Rabu, 12 Agustus 2020',
                    style: Utils.tStyleBold(
                      14,
                      AppColors.darkPurple,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: 50,
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Switch(value: false, onChanged: (a) {}))),
                  Text(
                    'Pulang Pergi',
                    style: Utils.tStyleBold(10, AppColors.darkPurple),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jumlah Penumpang',
                    style: Utils.tStyleBold(14, AppColors.lBlue),
                  ),
                  Utils.spaceV(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.remove_circle_outline,
                        color: AppColors.grey,
                      ),
                      Utils.spaceH(20),
                      Text(
                        '1',
                        style: Utils.tStyleBold(20, AppColors.darkPurple),
                      ),
                      Utils.spaceH(20),
                      const Icon(
                        Icons.add_circle_outline,
                        color: AppColors.darkPurple,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: AppColors.oGradient,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.SELECT_TICKET);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    disabledForegroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    //make color or elevated button transparent
                  ),
                  child: const Text(
                    'CARI TIKET',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
