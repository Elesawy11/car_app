import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_task/core/utils/spacer.dart';
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
            SizedBox(
              height: 120.h,
              child: const StatusListView(),
            ),
            Image.asset(
              Assets.assetsImagesImage6,
            ),
            verticalSpace(12),
            const CustomCarWidget()
          ],
        ),
      ),
    );
  }
}

class CustomCarWidget extends StatelessWidget {
  const CustomCarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.44,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.44,
                color: const Color(0xffD5DBE5),
                child: const Center(
                  child: Text(
                    'جي ام سي | يوكن | الفئة الرابعة',
                  ),
                ),
              ),
              Image.asset(Assets.assetsImagesImage1),
            ],
          ),
        ),
        Positioned(
          bottom: -30,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.44,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomDetailsWidget(),
                CustomDetailsWidget(),
                CustomDetailsWidget(),
                CustomDetailsWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CustomDetailsWidget extends StatelessWidget {
  const CustomDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (0.44 / 4.5),
      height: 60.h,
      decoration: BoxDecoration(
        color: const Color(0xffF7F7FD),
        // color: Colors.red,
        borderRadius: BorderRadius.circular(
          12.r,
        ),
      ),
      child: FittedBox(
        child: Column(
          children: [
            SvgPicture.asset(
              Assets.assetsIconsHomeAd1,
              width: 12.w,
              height: 12.h,
            ),
            const Text('السعر'),
            const Text('12,500')
          ],
        ),
      ),
    );
  }
}
