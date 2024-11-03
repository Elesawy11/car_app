import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomConnectIcon extends StatelessWidget {
  const CustomConnectIcon({
    super.key,
    required this.image,
    required this.color,
  });
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40.r,
        height: 40.r,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20.r)),
        child: Center(
          child: SvgPicture.asset(
            image,
            width: 24.r,
            height: 24.r,
          ),
        ));
  }
}
