import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_task/features/home/presentation/views/car_details_view.dart';
import 'package:interview_task/features/home/presentation/views/constant.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_car_details_box_widget.dart';

class CustomCarWidget extends StatelessWidget {
  const CustomCarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const CarDetailsView()),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                color: const Color(0xffD5DBE6),
                child: const FittedBox(
                  fit: BoxFit.fill,
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
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.fill,
              ),
            ],
          ),
          Positioned(
            bottom: -30.h,
            child: SizedBox(
              height: 60.h,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: carsDetailsBoxList.length,
                itemBuilder: (context, index) {
                  return CustomCarDetailsBoxWidget(
                    image: carsDetailsBoxList[index][0],
                    text: carsDetailsBoxList[index][1],
                    price: carsDetailsBoxList[index][2],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
