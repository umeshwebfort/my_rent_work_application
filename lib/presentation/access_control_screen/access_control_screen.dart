import 'package:my_rent_work_application/presentation/dashboard_screen_container1_screen/dashboard_screen_container1_screen.dart';

import '../access_control_screen/widgets/access_control_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/dashboard_screen_container_page/dashboard_screen_container_page.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_bottom_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

class AccessControlScreen extends StatefulWidget {
  @override
  State<AccessControlScreen> createState() => _AccessControlScreenState();
}

class _AccessControlScreenState extends State<AccessControlScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              top: 16,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "Access Control",
            margin: getMargin(
              left: 7,
            ),
          ),
          actions: [
            CustomButton(
              height: getVerticalSize(
                30,
              ),
              width: getHorizontalSize(
                87,
              ),
              text: "Add",
              margin: getMargin(
                left: 18,
                top: 13,
                right: 18,
                bottom: 13,
              ),
              variant: ButtonVariant.FillRed700,
              fontStyle: ButtonFontStyle.InterRegular16Gray100,
              onTap: () {
                print("Helo");
                Navigator.pushNamed(context, AppRoutes.selectPersonScreen);
              },
            ),
          ],
        ),
        body: Container(
          height: getVerticalSize(
            813,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
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
                          598,
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
                    top: 56,
                    right: 17,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            left: 1,
                          ),
                          child: ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return Padding(
                                padding: getPadding(
                                  top: 15.0,
                                  bottom: 15.0,
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
                              return AccessControlItemWidget();
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 18,
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
