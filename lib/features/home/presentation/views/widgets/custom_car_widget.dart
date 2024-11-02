import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_car_details_box_widget.dart';

class CustomCarWidget extends StatelessWidget {
  const CustomCarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              children: [
                Container(
                  color: const Color(0xffD5DBE6),
                  child: const Center(
                    child: Text(
                      'جي ام سي | يوكن | الفئة الرابعة',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  Assets.assetsImagesImage1,
                  height: 150.h,
                  width: MediaQuery.of(context).size.width * 0.5,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              // height: 60.h,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCarDetailsBoxWidget(),
                  CustomCarDetailsBoxWidget(),
                  CustomCarDetailsBoxWidget(),
                  CustomCarDetailsBoxWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
