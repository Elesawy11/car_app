import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContaierWithIconAndText extends StatelessWidget {
  const CustomContaierWithIconAndText({
    super.key,
    this.color,
    required this.text,
    required this.icon,
    this.borderColor,
    this.iconColor,
    this.textColor,
    this.width,
  });
  final Color? color, borderColor;
  final String text;
  final IconData icon;
  final Color? iconColor, textColor;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: borderColor ?? color ?? Colors.white,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: iconColor ?? Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 24.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
