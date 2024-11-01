import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    setSystemUI();
    super.initState();
  }

  void setSystemUI() {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff52556D),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}
