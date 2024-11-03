// import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SystemChromeController extends GetxController {
  void getStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xff52556D),
      ),
    );
  }
}
