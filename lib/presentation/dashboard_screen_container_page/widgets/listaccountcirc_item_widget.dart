import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';

// ignore: must_be_immutable
class ListaccountcircItemWidget extends StatelessWidget {
  ListaccountcircItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgAccountcircle,
            height: getSize(
              18,
            ),
            width: getSize(
              18,
            ),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 3,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular14,
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular13,
            ),
          ),
        ],
      ),
    );
  }
}
