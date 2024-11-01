import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import 'home_app_bar.dart';
import 'status_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeAppBar(),
            SizedBox(height: 110.h, child: const StatusListView()),
            Image.asset(
              Assets.assetsImagesImage6,
            )
          ],
        ),
      ),
    );
  }
}
