import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/styles_manager.dart';

class ProductLabel extends StatelessWidget {
  const ProductLabel(
      {super.key, required this.productName, required this.productPrice});

  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Text(
          productName,
          style: getMediumStyle(color: ColorManager.primary)
              .copyWith(fontSize: 18.sp),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )),
        Text(
          productPrice,
          style: getMediumStyle(color: ColorManager.primary)
              .copyWith(fontSize: 18.sp),
        ),
      ],
    );
  }
}