import 'package:ebookpb/Pages/WelcomePage/WelcomePage.dart';
import 'package:get/get.dart';

class SplashController extends GetxController { 
  @override
  void onInit() {

    super.onInit();
    splashController();
  }

  void splashController() {
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(WelcomePage());
    });
  }
}