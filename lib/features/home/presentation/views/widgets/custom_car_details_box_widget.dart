import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomCarDetailsBoxWidget extends StatelessWidget {
  const CustomCarDetailsBoxWidget({
    super.key,
    required this.image,
    required this.text,
    required this.price,
    this.width,
    this.height,
  });
  final String image, text, price;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.r),
      width: width ?? MediaQuery.of(context).size.width * (0.5 / 4),
      height: height ?? 60.h,
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
              image,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
