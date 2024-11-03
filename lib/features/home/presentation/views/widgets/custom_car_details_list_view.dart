import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/spacer.dart';

class CustomCarOneDetailsListView extends StatelessWidget {
  const CustomCarOneDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.21,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const CustomOneDetailCarWidget();
        },
      ),
    );
  }
}

class CustomOneDetailCarWidget extends StatelessWidget {
  const CustomOneDetailCarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
      child: Container(
        decoration: const BoxDecoration(color: Color(0xffF7F7FD)),
        child: Row(
          children: [
            const Icon(Icons.directions_car),
            horizontalpace(20),
            Text(
              'اللون الخارجي',
              style: TextStyle(fontSize: 20.sp),
            ),
            const Spacer(),
            Text(
              'أبيض',
              style: TextStyle(fontSize: 20.sp),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
