import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_task/core/helpers/system_chrome_controller.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SystemChromeController()).getStatusBarColor();
    return const HomeViewBody();
  }
}
