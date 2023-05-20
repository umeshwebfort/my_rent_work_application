import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';

class AddPersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            64,
          ),
          leadingWidth: 44,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgDehaze,
            margin: getMargin(
              left: 20,
              top: 15,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "Add Person",
            margin: getMargin(
              left: 11,
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 1,
            ),
            child: Container(
              decoration: AppDecoration.fillRed700.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      866,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            25,
                          ),
                        ),
                        topRight: Radius.circular(
                          getHorizontalSize(
                            25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
