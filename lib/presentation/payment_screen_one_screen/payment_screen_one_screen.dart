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

class PaymentScreenOneScreen extends StatelessWidget {
  TextEditingController rectanglesixteeController = TextEditingController();

  TextEditingController rectangleeighteController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController paidController = TextEditingController();

  TextEditingController group231Controller = TextEditingController();

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
                        left: 15,
                        top: 18,
                        right: 15,
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
                              left: 6,
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
                              left: 5,
                              top: 12,
                              right: 6,
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
                          Container(
                            height: getVerticalSize(
                              297,
                            ),
                            width: getHorizontalSize(
                              326,
                            ),
                            margin: getMargin(
                              left: 4,
                              top: 17,
                              bottom: 82,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: getHorizontalSize(
                                      193,
                                    ),
                                    margin: getMargin(
                                      left: 8,
                                      top: 78,
                                    ),
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular10,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 49,
                                      top: 16,
                                      right: 13,
                                      bottom: 241,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 5,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                style:
                                                    AppStyle.txtInterRegular10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
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
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMan1,
                                  height: getSize(
                                    40,
                                  ),
                                  width: getSize(
                                    40,
                                  ),
                                  alignment: Alignment.topLeft,
                                  margin: getMargin(
                                    left: 1,
                                    top: 17,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 49,
                                      top: 134,
                                      right: 13,
                                      bottom: 123,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 5,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                style:
                                                    AppStyle.txtInterRegular10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                          ),
                                          child: Text(
                                            "₹ 2500",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterBold19Green900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMan1,
                                  height: getSize(
                                    40,
                                  ),
                                  width: getSize(
                                    40,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  margin: getMargin(
                                    left: 1,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 121,
                                    ),
                                    child: SizedBox(
                                      width: getHorizontalSize(
                                        315,
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
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 61,
                                    ),
                                    child: Text(
                                      "Comments",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold10,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    padding: getPadding(
                                      left: 5,
                                      top: 12,
                                      right: 5,
                                      bottom: 12,
                                    ),
                                    decoration: AppDecoration.outlineBluegray100
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 7,
                                          ),
                                          child: Text(
                                            "Type",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 7,
                                            top: 8,
                                          ),
                                          child: Row(
                                            children: [
                                              CustomTextFormField(
                                                width: getHorizontalSize(
                                                  83,
                                                ),
                                                focusNode: FocusNode(),
                                                controller: paidController,
                                                hintText: "Paid",
                                                variant: TextFormFieldVariant
                                                    .OutlineGray40001,
                                                shape: TextFormFieldShape
                                                    .CircleBorder12,
                                                padding: TextFormFieldPadding
                                                    .PaddingAll1,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .InterRegular14Gray900,
                                              ),
                                              Container(
                                                width: getHorizontalSize(
                                                  83,
                                                ),
                                                margin: getMargin(
                                                  left: 12,
                                                ),
                                                padding: getPadding(
                                                  left: 11,
                                                  top: 2,
                                                  right: 11,
                                                  bottom: 2,
                                                ),
                                                decoration: AppDecoration
                                                    .txtOutlineGray40001
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCircleBorder12,
                                                ),
                                                child: Text(
                                                  "Received",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14Gray900,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 7,
                                            top: 15,
                                          ),
                                          child: Text(
                                            "Month",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 6,
                                              top: 9,
                                              right: 10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: getHorizontalSize(
                                                    83,
                                                  ),
                                                  padding: getPadding(
                                                    left: 18,
                                                    top: 2,
                                                    right: 18,
                                                    bottom: 2,
                                                  ),
                                                  decoration: AppDecoration
                                                      .txtOutlineGray40001
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtCircleBorder12,
                                                  ),
                                                  child: Text(
                                                    "Feb 23",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14Gray900,
                                                  ),
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    83,
                                                  ),
                                                  margin: getMargin(
                                                    left: 12,
                                                  ),
                                                  padding: getPadding(
                                                    left: 18,
                                                    top: 2,
                                                    right: 18,
                                                    bottom: 2,
                                                  ),
                                                  decoration: AppDecoration
                                                      .txtOutlineGray40001
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtCircleBorder12,
                                                  ),
                                                  child: Text(
                                                    "Mar 23",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14Gray900,
                                                  ),
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    83,
                                                  ),
                                                  margin: getMargin(
                                                    left: 12,
                                                  ),
                                                  padding: getPadding(
                                                    left: 15,
                                                    top: 1,
                                                    right: 15,
                                                    bottom: 1,
                                                  ),
                                                  decoration: AppDecoration
                                                      .txtOutlineGray40001
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtCircleBorder12,
                                                  ),
                                                  child: Text(
                                                    "April 23",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14Gray900,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 9,
                                            top: 28,
                                          ),
                                          child: Text(
                                            "Filter by Date Range",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium14Pink900,
                                          ),
                                        ),
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            214,
                                          ),
                                          focusNode: FocusNode(),
                                          controller: group231Controller,
                                          margin: getMargin(
                                            left: 5,
                                            top: 11,
                                          ),
                                          textInputAction: TextInputAction.done,
                                          prefix: Container(
                                            margin: getMargin(
                                              left: 30,
                                              top: 4,
                                              right: 123,
                                              bottom: 4,
                                            ),
                                            child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDaterange,
                                            ),
                                          ),
                                          prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              28,
                                            ),
                                          ),
                                          suffix: Container(
                                            margin: getMargin(
                                              left: 30,
                                              top: 4,
                                              right: 6,
                                              bottom: 4,
                                            ),
                                            child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDaterange,
                                            ),
                                          ),
                                          suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              28,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 27,
                                            right: 27,
                                            bottom: 14,
                                          ),
                                          child: Row(
                                            children: [
                                              CustomButton(
                                                height: getVerticalSize(
                                                  30,
                                                ),
                                                width: getHorizontalSize(
                                                  126,
                                                ),
                                                text: "Clear All",
                                                variant: ButtonVariant
                                                    .OutlineGray500,
                                                fontStyle: ButtonFontStyle
                                                    .InterRegular16,
                                              ),
                                              CustomButton(
                                                height: getVerticalSize(
                                                  30,
                                                ),
                                                width: getHorizontalSize(
                                                  126,
                                                ),
                                                text: "Apply",
                                                margin: getMargin(
                                                  left: 10,
                                                ),
                                                fontStyle: ButtonFontStyle
                                                    .InterRegular16Gray100,
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
