import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void setSystemUI() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    setSystemUI();
    return const HomeViewBody();
  }
}

