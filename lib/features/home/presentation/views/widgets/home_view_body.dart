import 'package:flutter/material.dart';
import 'package:interview_task/core/utils/assets.dart';
import 'package:interview_task/core/utils/spacer.dart';

import 'home_app_bar.dart';

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
            Column(
              children: [
                verticalSpace(12),
                const CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                      backgroundImage: AssetImage(
                        Assets.assetsImagesImage11,
                      ),
                    ),
                  ),
                ),
                const Text('جيلي')
              ],
            ),
            Image.asset(
              Assets.assetsImagesImage6,
            )
          ],
        ),
      ),
    );
  }
}
