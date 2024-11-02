import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';

class CustomCarDetailsBoxWidget extends StatelessWidget {
  const CustomCarDetailsBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (0.5 / 4.5),
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
            const Text(
              'السعر',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Text(
              '12,500',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
