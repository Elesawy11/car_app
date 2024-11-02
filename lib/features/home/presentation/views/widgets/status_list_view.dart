import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_task/features/home/presentation/views/constant.dart';

import 'status_element.dart';

class StatusListView extends StatelessWidget {
  const StatusListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: statusList.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: StatusElement(
          name: statusList[index][0],
          image: statusList[index][1],
        ),
      ),
    );
  }
}
