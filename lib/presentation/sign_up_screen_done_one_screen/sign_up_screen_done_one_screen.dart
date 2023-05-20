import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';

class SignUpScreenDoneOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 60,
            right: 60,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMyrentworklogo,
                height: getVerticalSize(
                  218,
                ),
                width: getHorizontalSize(
                  239,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
