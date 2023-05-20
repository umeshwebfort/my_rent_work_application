import '../permissions_one_screen/widgets/permissions_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

class PermissionsOneScreen extends StatelessWidget {
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
            text: "Permissions",
            margin: getMargin(
              left: 9,
            ),
          ),
        ),
        body: Container(
          height: getVerticalSize(
            874,
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
                    left: 19,
                    top: 47,
                    right: 19,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 2,
                          right: 1,
                        ),
                        child: Row(
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
                                93,
                              ),
                              text: "Change",
                              margin: getMargin(
                                top: 5,
                                bottom: 5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            left: 1,
                            top: 55,
                            right: 1,
                          ),
                          child: ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return Padding(
                                padding: getPadding(
                                  top: 18.0,
                                  bottom: 18.0,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    322,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.gray40001,
                                  ),
                                ),
                              );
                            },
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return PermissionsOneItemWidget();
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 14,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.gray40001,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
