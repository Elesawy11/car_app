import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_task/features/home/presentation/views/home_view.dart';

void main(List<String> args) {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const InterviewTask(),
    ),
  );
}

class InterviewTask extends StatelessWidget {
  const InterviewTask({super.key});
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(500, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        // themeMode: ThemeMode.system,
        locale: Locale('ar'),
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
