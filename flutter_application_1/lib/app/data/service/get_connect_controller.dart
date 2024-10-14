import 'package:get/get.dart';
import '../models/articles.dart';

class GetConnectController extends GetConnect {
  static const String _baseUrl =
      'https://my-json-server.typicode.com/Fallid/codelab-api/db';
  // static const String _apiKey = 'YOUR_API'; // Ganti ke API KEY yang sudah didapat
  // static const String _category = 'business';
  // static const String _country = 'us'; //us maksudnya United States ya

  RxList<Article> articles = RxList<Article>([]);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    fetchArticles();
    super.onInit();
  }

  Future<void> fetchArticles() async {
    try {
      isLoading.value = true; // set loading state to true
      final response = await get((_baseUrl));

      if (response.statusCode == 200) {
        final articlesResult = Articles.fromJson(response.body);
        articles.value = articlesResult.articles;
      } else {
        print("Request failed with status ${response.statusCode}");
      }
    } catch (e) {
      print('An error occurred: $e');
    } finally {
      isLoading.value = false; // set status loading to false when it done
    }
  }
}
