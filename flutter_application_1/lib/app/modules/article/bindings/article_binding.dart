import 'package:get/get.dart';

class articleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => articleBinding(),
    );
  }
}
