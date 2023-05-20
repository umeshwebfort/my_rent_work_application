import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class DrawerDraweritem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: getPadding(
            bottom: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 26,
                  right: 64,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMan1,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        bottom: 3,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                        top: 1,
                        bottom: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Vikas",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold16WhiteA700,
                          ),
                          Text(
                            "+91 - 9999956254",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12WhiteA700,
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        30,
                      ),
                      width: getHorizontalSize(
                        87,
                      ),
                      text: "Edit",
                      margin: getMargin(
                        left: 33,
                        top: 13,
                      ),
                      variant: ButtonVariant.FillRed700,
                      fontStyle: ButtonFontStyle.InterRegular16Gray100,
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 20,
                  right: 48,
                ),
                padding: getPadding(
                  top: 2,
                  bottom: 2,
                ),
                decoration: AppDecoration.fillRed700.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL251,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.maxFinite,
                      child: Container(
                        width: getHorizontalSize(
                          312,
                        ),
                        margin: getMargin(
                          top: 7,
                        ),
                        padding: getPadding(
                          left: 18,
                          top: 41,
                          right: 18,
                          bottom: 41,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL251,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgHomeBlueGray900,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 7,
                                    top: 2,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Home",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular16Black900,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLibraryadd,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 3,
                                    ),
                                    child: Text(
                                      "Add Property",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16Black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgChat,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 2,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Chat",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16Black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgMinimize,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 2,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Access Control",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16Black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgHelpoutline,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 3,
                                    ),
                                    child: Text(
                                      "Help & Support",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16Black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLogin,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 3,
                                    ),
                                    child: Text(
                                      "Logout",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16Black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                                bottom: 477,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgDeleteoutline,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 2,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Delete Account",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16Black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
