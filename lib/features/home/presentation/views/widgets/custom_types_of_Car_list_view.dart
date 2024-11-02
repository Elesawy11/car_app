import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTypesOfCarListView extends StatelessWidget {
  const CustomTypesOfCarListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child:const CustomTypeOfCarWidget(),
        );
      },
    );
  }
}
class CustomTypeOfCarWidget extends StatelessWidget {
  const CustomTypeOfCarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
          color: const Color(0xff42455C),
          borderRadius: BorderRadius.circular(18)),
      child: Center(
        child: Text(
          'أسيوي',
          style: TextStyle(
            fontSize: 24.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
