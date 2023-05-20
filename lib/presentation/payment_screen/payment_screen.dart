import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/dashboard_screen_container_page/dashboard_screen_container_page.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_button.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_bottom_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_drop_down.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

class PaymentScreen extends StatelessWidget {
  TextEditingController rectanglesixteeController = TextEditingController();

  TextEditingController rectangleeighteController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            63,
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
            text: "Payment",
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarButton(
              margin: getMargin(
                left: 26,
                top: 13,
                right: 26,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 2,
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
                        top: 26,
                        right: 26,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 2,
                            ),
                            child: Text(
                              "Received Amount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold16,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      right: 7,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Amount",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular16Black900,
                                        ),
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            150,
                                          ),
                                          focusNode: FocusNode(),
                                          controller: rectanglesixteeController,
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Date",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular16Black900,
                                        ),
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            150,
                                          ),
                                          focusNode: FocusNode(),
                                          controller: rectangleeighteController,
                                          textInputAction: TextInputAction.done,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
                              top: 12,
                            ),
                            child: Text(
                              "Comments",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              78,
                            ),
                            width: getHorizontalSize(
                              312,
                            ),
                            margin: getMargin(
                              top: 1,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7,
                                ),
                              ),
                              border: Border.all(
                                color: ColorConstant.blueGray100,
                                width: getHorizontalSize(
                                  1,
                                ),
                              ),
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              30,
                            ),
                            width: getHorizontalSize(
                              126,
                            ),
                            text: "Submit",
                            margin: getMargin(
                              top: 20,
                            ),
                            fontStyle: ButtonFontStyle.InterRegular16Gray100,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: getMargin(
                        bottom: 67,
                      ),
                      padding: getPadding(
                        left: 19,
                        top: 18,
                        right: 19,
                        bottom: 18,
                      ),
                      decoration: AppDecoration.fillGray10001,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 2,
                            ),
                            child: Text(
                              "Payment History",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold16,
                            ),
                          ),
                          CustomDropDown(
                            focusNode: FocusNode(),
                            icon: Container(
                              margin: getMargin(
                                left: 30,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgFilteralt,
                              ),
                            ),
                            hintText: "Search...",
                            margin: getMargin(
                              left: 1,
                              top: 12,
                            ),
                            variant: DropDownVariant.None,
                            items: dropdownItemList,
                            prefix: Container(
                              margin: getMargin(
                                left: 6,
                                top: 4,
                                right: 10,
                                bottom: 3,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgSearch,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                31,
                              ),
                            ),
                            onChanged: (value) {},
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 33,
                              right: 9,
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
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    bottom: 7,
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
                                        "29 April, 2023 | 11:34 PM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular10,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: getPadding(
                                    top: 15,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "₹ 2500",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold19,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 7,
                              top: 4,
                            ),
                            child: Text(
                              "Comments",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold10,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              193,
                            ),
                            margin: getMargin(
                              left: 8,
                              top: 3,
                            ),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular10,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 15,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray40001,
                              endIndent: getHorizontalSize(
                                7,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 12,
                              right: 9,
                              bottom: 204,
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
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    bottom: 7,
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
                                        "29 April, 2023 | 11:34 PM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular10,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: getPadding(
                                    top: 15,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "₹ 2500",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold19Green900,
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
