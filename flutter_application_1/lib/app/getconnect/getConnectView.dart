import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../data/service/get_connect_controller.dart';
import '../component/card_article.dart';

class GetConnectView extends GetView<GetConnectController> {
  const GetConnectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Get Connect'),
        ),
        body: Obx(() {
          if (controller.isLoading.value) {
            // Display a progress indicator while loading
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).colorScheme.secondary),
              ),
            );
          } else {
            // Display the list of articles
            return ListView.builder(
              shrinkWrap: true,
              itemCount: controller.articles.length,
              itemBuilder: (context, index) {
                var article = controller.articles[index];
                return CardArticle(article: article);
              },
            );
          }
        }));
  }
}
