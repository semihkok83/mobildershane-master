import 'package:get/get.dart';

import '../controllers/semih_deneme_controller.dart';

class SemihDenemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SemihDenemeController>(
      () => SemihDenemeController(),
    );
  }
}
