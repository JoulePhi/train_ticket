import 'package:get/get.dart';

class SelectTicketController extends GetxController {
  var indexGerbong = 0.obs;
  var indexKursi = 0.obs;

  var gerbong = List.generate(10, (indexG) {
    return List<Map<String, dynamic>>.generate(50, (indexK) {
      if (indexG == 0) {
        if (indexK >= 25 && indexK <= 30 || indexK >= 5 && indexK <= 9) {
          return {'id': "ID-${indexG + 1}.${indexK + 1}", 'status': 'filled'};
        } else {
          return {
            'id': "ID-${indexG + 1}.${indexK + 1}",
            'status': 'available'
          };
        }
      } else if (indexG == 1) {
        if (indexK >= 40 && indexK <= 48 || indexK >= 27 && indexK <= 30) {
          return {'id': "ID-${indexG + 1}.${indexK + 1}", 'status': 'filled'};
        } else {
          return {
            'id': "ID-${indexG + 1}.${indexK + 1}",
            'status': 'available'
          };
        }
      } else {
        if (indexK >= 12 && indexK <= 16 || indexK >= 32 && indexK <= 38) {
          return {'id': "ID-${indexG + 1}.${indexK + 1}", 'status': 'filled'};
        } else {
          return {
            'id': "ID-${indexG + 1}.${indexK + 1}",
            'status': 'available'
          };
        }
      }
    });
  }).obs;

  void gantiGerbong(int newGerbong) {
    indexGerbong.value = newGerbong;
    gerbong.refresh();
  }

  void resetChair() {
    for (var element in gerbong[indexGerbong.value]) {
      if (element['status'] != 'filled') {
        element.update('status', (value) => 'available');
      }
    }
  }

  void pilihKursi(int selectedChair) {
    if (gerbong[indexGerbong.value][selectedChair]['status'] == 'available') {
      resetChair();
      gerbong[indexGerbong.value][selectedChair]
          .update('status', (value) => 'selected');
    }
    gerbong.refresh();
  }
}
