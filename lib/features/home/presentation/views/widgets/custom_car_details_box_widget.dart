import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';

class CustomCarDetailsBoxWidget extends StatelessWidget {
  const CustomCarDetailsBoxWidget({
    super.key,
    required this.image,
    required this.text,
    required this.price,
  });
  final String image, text, price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.r),
      width: MediaQuery.of(context).size.width * (0.5 / 4),
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
              image,
              width: 12.w,
              height: 12.h,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              price,
              style: const TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
