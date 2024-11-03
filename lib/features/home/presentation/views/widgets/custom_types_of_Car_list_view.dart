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
      shrinkWrap: true,
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
      padding: EdgeInsets.all(10.r),
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
        color: const Color(0xff42455C),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          type,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
