import 'package:get/get.dart';

import '../controllers/dersler_controller.dart';

class DerslerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DerslerController>(
      () => DerslerController(),
    );
  }
}
