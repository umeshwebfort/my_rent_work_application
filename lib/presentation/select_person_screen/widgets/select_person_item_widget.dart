import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

// ignore: must_be_immutable
class SelectPersonItemWidget extends StatelessWidget {
  SelectPersonItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgMan1,
          height: getSize(
            40,
          ),
          width: getSize(
            40,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 8,
            top: 1,
            bottom: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Vikas",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold16,
              ),
              Text(
                "+91 - 9999956254",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular12,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomButton(
          height: getVerticalSize(
            30,
          ),
          width: getHorizontalSize(
            78,
          ),
          text: "Add",
          margin: getMargin(
            top: 5,
            bottom: 5,
          ),
        ),
      ],
    );
  }
}
