import 'package:flutter_application_1/app/getconnect/getConnectView.dart';
import 'package:flutter_application_1/app/getconnect/getConnect_binding.dart';
import 'package:flutter_application_1/app/modules/article/bindings/article_binding.dart';
import 'package:flutter_application_1/app/modules/article/views/article_detail.dart';
import 'package:flutter_application_1/app/modules/article/views/home_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: homeBinding(),
    ),
    GetPage(
        name: _Paths.GETCONNECT,
        page: () => const GetConnectView(),
        binding: GetConnectBinding()),
    GetPage(
        name: _Paths.ARTICLE_DETAILS,
        page: () => ArticleDetailPage(article: Get.arguments),
        binding: articleBinding()),
    GetPage(
        name: _Paths.ARTICLE_DETAILS_WEBVIEW,
        page: () => ArticleDetailWebView(article: Get.arguments),
        binding: articleBinding())
  ];
}
