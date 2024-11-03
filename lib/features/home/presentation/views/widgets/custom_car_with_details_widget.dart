import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/spacer.dart';
import '../constant.dart';
import 'custom_car_details_box_widget.dart';
import 'custom_icon_button.dart';

class CustomCarWithDetailsWidget extends StatelessWidget {
  const CustomCarWithDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          Assets.assetsImagesImage1,
          height: MediaQuery.of(context).size.height * 0.22,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                icon: Icons.arrow_back,
                onPressed: Get.back,
              ),
              Row(
                children: [
                  const CustomIconButton(
                    icon: Icons.replay,
                  ),
                  horizontalpace(20),
                  const CustomIconButton(
                    icon: Icons.favorite_outline,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            bottom: -40.h,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                height: 60.h,
                child: ListView.builder(
                  itemCount: carDetailsList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: CustomCarDetailsBoxWidget(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 80.h,
                        image: carDetailsList[index][0],
                        text: carDetailsList[index][1],
                        price: carDetailsList[index][2],
                      ),
                    );
                  },
                ),
              ),
            )),
      ],
    );
  }
}
