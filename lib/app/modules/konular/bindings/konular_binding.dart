import 'package:get/get.dart';

import '../controllers/konular_controller.dart';

class KonularBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KonularController>(
      () => KonularController(),
    );
  }
}
