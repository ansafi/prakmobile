import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<homeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(247, 248, 239, 179),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../../../assets/images/cat.png', // Ganti dengan path gambar kucing yang benar
              height: 300,
              width: 300,
            ),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang di CatCare!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes
                    .GETCONNECT); // Navigasi ke LoginView saat tombol ditekan
              },
              child: const Text("go to get connect"),
            ),
          ],
        ),
      ),
    );
  }
}
