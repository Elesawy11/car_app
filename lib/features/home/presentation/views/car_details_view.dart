import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_task/core/utils/assets.dart';
import 'package:interview_task/core/utils/spacer.dart';
import 'package:interview_task/features/home/presentation/views/widgets/custom_car_widget.dart';
import 'widgets/custom_car_details_list_view.dart';
import 'widgets/custom_car_with_details_widget.dart';
import 'widgets/custom_connect_icon.dart';
import 'widgets/custom_container_with_icon_and_text.dart';
import 'widgets/custom_owner_widget.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const CustomCarWithDetailsWidget(),
                verticalSpace(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'يوكن بحالة جيدة',
                      style: TextStyle(
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      '8,700 د.ك',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                verticalSpace(12),
                const CustomContaierWithIconAndText(
                  text: 'مكفولة حتي 70000 كم',
                  color: Color(0xffA55959),
                  icon: Icons.beenhere_outlined,
                ),
                verticalSpace(20),
                const CustomCarOneDetailsListView(),
                verticalSpace(20),
                const Text(
                  'هذا النص قابل للتغيير,هذا النص قابل للتغييرهذا النص قابل للتغييرهذا النص قابل للتغييرthis text,هذا النص قابل للتغييرهذا النص قابل للتغييرهذا النص قابل للتغيير',
                ),
                verticalSpace(20),
                const CustomOwnerWidget(),
                verticalSpace(20),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return const CustomCarWidget();
                    },
                  ),
                ),
                verticalSpace(80),
                Row(
                  children: [
                    const CustomConnectIcon(
                      image: Assets.assetsIconsCall,
                      color: Color(0xff7BA68F),
                    ),
                    horizontalpace(8),
                    const CustomConnectIcon(
                      image: Assets.assetsIconsChat,
                      color: Color(
                        0xffBFC0FF,
                      ),
                    ),
                    CustomContaierWithIconAndText(
                      width: 180.w,
                      color: const Color(0xff50536C),
                      text: 'موقع السيارة',
                      icon: Icons.location_on,
                    ),
                    CustomContaierWithIconAndText(
                      width: 180.w,
                      iconColor: const Color(0xff50536C),
                      textColor: const Color(0xff50536C),
                      borderColor: const Color(0xff50536C),
                      // color: Color(0xff50536C),
                      text: 'احجز سيارتك',
                      icon: Icons.book,
                    ),
                  ],
                ),
                verticalSpace(20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
