import 'package:get/get.dart';

import '../data/service/get_connect_controller.dart';

class GetConnectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetConnectController>(
      () => GetConnectController(),
    );
  }
}
