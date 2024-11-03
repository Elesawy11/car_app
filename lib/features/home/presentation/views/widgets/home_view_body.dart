import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_task/core/utils/spacer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'custom_car_widget.dart';
import 'custom_types_of_Car_list_view.dart';
import 'home_app_bar.dart';
import 'status_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              // width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const HomeAppBar(),
                  SizedBox(
                    height: 120.h,
                    child: const StatusListView(),
                  ),
                  Image.asset(
                    Assets.assetsImagesImage6,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                  verticalSpace(12),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: const CustomTextField(),
                  ),
                  verticalSpace(12),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: const CustomTypesOfCarListView(),
                  ),
                  verticalSpace(18),
                ],
              ),
            ),
          ),
          // const SliverToBoxAdapter(
          //   child: CustomCarWidget(),
          // ),
          SliverGrid.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 24.h,
              maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.5,
              // mainAxisSpacing: 5.h,
              // crossAxisSpacing: 10.w,
              // childAspectRatio: 2,
            ),
            itemBuilder: (context, index) {
              return const CustomCarWidget();
            },
          ),
          SliverToBoxAdapter(
            child: verticalSpace(24),
          ),
          SliverToBoxAdapter(
            child: Image.asset(
              Assets.assetsImagesImage5,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
