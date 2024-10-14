import 'package:get/get.dart';

class homeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => homeBinding(),
    );
  }
}
