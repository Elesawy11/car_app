import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/spacer.dart';

class CustomOwnerWidget extends StatelessWidget {
  const CustomOwnerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffEDF1F3),
            borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Image.asset(
                Assets.assetsImagesAccount,
                width: 40.r,
                height: 40.r,
              ),
            ),
            horizontalpace(12),
            const Text(
              'يوكن للسيارات المعتمدة',
              style: TextStyle(
                  // color: Colors.white,
                  // fontSize: 24.sp,
                  ),
            ),
            const Spacer(),
            const Text(
              "كل السيارات",
              style: TextStyle(
                  // color: Colors.white,
                  // fontSize: 24.sp,
                  ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}