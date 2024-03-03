import 'package:get/get.dart';

class HomeController extends GetxController {
  var num = 0.obs;
  var isDarkTheme = false.obs;

  void increase() => num++;
  void decrease() => num--;
}
