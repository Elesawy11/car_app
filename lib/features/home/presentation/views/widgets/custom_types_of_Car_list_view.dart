import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_task/features/home/presentation/views/constant.dart';

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
      itemCount: carTypesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: CustomTypeOfCarWidget(
            type: carTypesList[index],
          ),
        );
      },
    );
  }
}

class CustomTypeOfCarWidget extends StatelessWidget {
  const CustomTypeOfCarWidget({
    super.key,
    required this.type,
  });
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
          color: const Color(0xff42455C),
          borderRadius: BorderRadius.circular(18)),
      child: Center(
        child: Text(
          type,
          style: TextStyle(
            fontSize: 24.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
