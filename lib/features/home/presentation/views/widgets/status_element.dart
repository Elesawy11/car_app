import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/spacer.dart';

class StatusElement extends StatelessWidget {
  const StatusElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(12),
        const CircleAvatar(
          radius: 36,
          backgroundColor: Colors.red,
          child: CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32,
              backgroundImage: AssetImage(
                Assets.assetsImagesImage11,
              ),
            ),
          ),
        ),
        const Text('جيلي')
      ],
    );
  }
}
