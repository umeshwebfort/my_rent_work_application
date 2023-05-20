import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/dashboard_screen_container_page/dashboard_screen_container_page.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_bottom_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

class TenantHistoryScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            65,
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
              top: 14,
              bottom: 17,
            ),
          ),
          title: AppbarTitle(
            text: "Tenant History",
            margin: getMargin(
              left: 9,
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                875,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
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
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 22,
                        top: 37,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBulding1,
                            height: getVerticalSize(
                              46,
                            ),
                            width: getHorizontalSize(
                              50,
                            ),
                            margin: getMargin(
                              top: 1,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              bottom: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Shanti Villa",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold16,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Pocket 6, Sector 9, Rohini, Delhi, India...",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 115,
                        bottom: 722,
                      ),
                      padding: getPadding(
                        left: 19,
                        top: 8,
                        right: 19,
                        bottom: 8,
                      ),
                      decoration: AppDecoration.fillGray10002,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 1,
                              bottom: 1,
                            ),
                            child: Text(
                              "Flat no. 4",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Previous Tenant Histroy",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16,
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
                        left: 21,
                        top: 183,
                        right: 18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 1,
                              right: 1,
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
                                    bottom: 10,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Vikas",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16,
                                      ),
                                      Text(
                                        "Flat no. : 101",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "ID-ADV - ",
                                              style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Verified",
                                              style: TextStyle(
                                                color: ColorConstant.green900,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
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
                                    106,
                                  ),
                                  text: "Delete",
                                  margin: getMargin(
                                    top: 19,
                                    bottom: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 48,
                              top: 2,
                            ),
                            child: Text(
                              "JAN-FEB, 2023",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold12Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray40001,
                              indent: getHorizontalSize(
                                1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 20,
                              right: 1,
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
                                    bottom: 10,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Somvir",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16,
                                      ),
                                      Text(
                                        "Flat no. : 104",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "ID-ADV - ",
                                              style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Verified",
                                              style: TextStyle(
                                                color: ColorConstant.green900,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
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
                                    106,
                                  ),
                                  text: "Delete",
                                  margin: getMargin(
                                    top: 19,
                                    bottom: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 50,
                              top: 2,
                            ),
                            child: Text(
                              "NOV-FEB, 2023",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold12Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
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
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardScreenContainerPage;
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Access:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardScreenContainerPage:
        return DashboardScreenContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
