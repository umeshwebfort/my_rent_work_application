import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

class DeleteAccountScreen extends StatelessWidget {
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
            text: "Delete Account",
            margin: getMargin(
              left: 6,
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
              height: getVerticalSize(
                875,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 57,
                        right: 18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMan1,
                            height: getVerticalSize(
                              88,
                            ),
                            width: getHorizontalSize(
                              84,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "Vikas",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "+91 - 9999956254",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 19,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray500,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 29,
                            ),
                            child: Text(
                              "Are you sure to Delete your Account",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              38,
                            ),
                            width: getHorizontalSize(
                              121,
                            ),
                            text: "Delete",
                            margin: getMargin(
                              top: 10,
                            ),
                            shape: ButtonShape.CircleBorder20,
                            padding: ButtonPadding.PaddingAll9,
                          ),
                        ],
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
