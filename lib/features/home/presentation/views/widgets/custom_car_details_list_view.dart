import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/spacer.dart';
import '../constant.dart';

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
        itemCount: customCarDetailsList.length,
        itemBuilder: (context, index) {
          return CustomOneDetailCarWidget(
            icon: customCarDetailsList[index][0],
            fText: customCarDetailsList[index][1],
            sText: customCarDetailsList[index][2],
          );
        },
      ),
    );
  }
}

class CustomOneDetailCarWidget extends StatelessWidget {
  const CustomOneDetailCarWidget({
    super.key,
    required this.fText,
    required this.sText,
    required this.icon,
  });
  final String fText, sText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
      child: Container(
        decoration: const BoxDecoration(color: Color(0xffF7F7FD)),
        child: Row(
          children: [
            Icon(icon),
            horizontalpace(20),
            Text(
              fText,
              style: TextStyle(fontSize: 20.sp),
            ),
            const Spacer(),
            Text(
              sText,
              style: TextStyle(fontSize: 20.sp),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
