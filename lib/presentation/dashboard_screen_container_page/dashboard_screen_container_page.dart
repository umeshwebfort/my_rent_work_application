import '../dashboard_screen_container_page/widgets/listaccountcirc_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_drop_down.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DashboardScreenContainerPage extends StatelessWidget {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController group571Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            60,
          ),
          leadingWidth: 43,
          leading: Container(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              left: 19,
              top: 19,
              bottom: 12,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AppbarImage(
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  svgPath: ImageConstant.imgDehaze,
                ),
                AppbarImage(
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  svgPath: ImageConstant.imgDehaze,
                ),
              ],
            ),
          ),
          title: AppbarTitle(
            text: "My Rent Work",
            margin: getMargin(
              left: 7,
            ),
          ),
          actions: [
            CustomButton(
              height: getVerticalSize(
                37,
              ),
              width: getHorizontalSize(
                180,
              ),
              text: "+ Add New Property",
              margin: getMargin(left: 18, top: 7, right: 2),
              variant: ButtonVariant.OutlineGray300,
              shape: ButtonShape.CircleBorder20,
              padding: ButtonPadding.PaddingAll9,
              fontStyle: ButtonFontStyle.InterBold16,
              alignment: Alignment.topLeft,
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Container(
            width: double.maxFinite,
            margin: getMargin(
              top: 10,
            ),
            decoration: AppDecoration.fillRed700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL25,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    margin: getMargin(
                      top: 9,
                    ),
                    padding: getPadding(
                      left: 15,
                      top: 20,
                      right: 15,
                      bottom: 20,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL25,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(
                            115,
                          ),
                          width: getHorizontalSize(
                            326,
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: getMargin(
                                    top: 19,
                                  ),
                                  padding: getPadding(
                                    left: 8,
                                    top: 7,
                                    right: 8,
                                    bottom: 7,
                                  ),
                                  decoration:
                                      AppDecoration.outlineGray300.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 25,
                                          bottom: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Total Rent ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 8,
                                                top: 5,
                                              ),
                                              child: Text(
                                                "₹ 1000",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 21,
                                        ),
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            76,
                                          ),
                                          child: VerticalDivider(
                                            width: getHorizontalSize(
                                              1,
                                            ),
                                            thickness: getVerticalSize(
                                              1,
                                            ),
                                            color: ColorConstant.gray300,
                                            indent: getHorizontalSize(
                                              17,
                                            ),
                                            endIndent: getHorizontalSize(
                                              2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 27,
                                          bottom: 5,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Received Rent",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 20,
                                                top: 9,
                                              ),
                                              child: Text(
                                                "₹ 900",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 12,
                                        ),
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            76,
                                          ),
                                          child: VerticalDivider(
                                            width: getHorizontalSize(
                                              1,
                                            ),
                                            thickness: getVerticalSize(
                                              1,
                                            ),
                                            color: ColorConstant.gray300,
                                            indent: getHorizontalSize(
                                              19,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 8,
                                          top: 28,
                                          bottom: 5,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Pending Rent",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 7,
                                              ),
                                              child: Text(
                                                "₹ 100",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  37,
                                ),
                                width: getHorizontalSize(
                                  180,
                                ),
                                text: "Total Rent Status",
                                margin: getMargin(
                                  left: 18,
                                ),
                                variant: ButtonVariant.OutlineGray300,
                                shape: ButtonShape.CircleBorder20,
                                padding: ButtonPadding.PaddingAll9,
                                fontStyle: ButtonFontStyle.InterBold16,
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 9,
                            top: 20,
                            right: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Building / Property List",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular16Black900,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                  bottom: 9,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    127,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(
                                      21,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 11,
                                  bottom: 5,
                                ),
                                child: Text(
                                  "2",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            195,
                          ),
                          width: getHorizontalSize(
                            323,
                          ),
                          margin: getMargin(
                            top: 14,
                          ),
                          child: InkWell(
                            onTap: () => Navigator.pushNamed(context,
                                AppRoutes.propertyDetailPageFilterScreen),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 69,
                                      top: 33,
                                    ),
                                    child: Text(
                                      "Shanti Villa",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: getPadding(
                                      left: 9,
                                      top: 10,
                                      right: 9,
                                      bottom: 10,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray400.copyWith(
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
                                            left: 4,
                                            right: 18,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgBulding1,
                                                height: getVerticalSize(
                                                  46,
                                                ),
                                                width: getHorizontalSize(
                                                  50,
                                                ),
                                                margin: getMargin(
                                                  top: 1,
                                                  bottom: 6,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 6,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Shanti Villa",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold16,
                                                      ),
                                                      Container(
                                                        height: getVerticalSize(
                                                          31,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          224,
                                                        ),
                                                        margin: getMargin(
                                                          left: 2,
                                                          top: 1,
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Text(
                                                                "Pocket 6, Sector 9, Rohini, Delhi, India...",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12,
                                                              ),
                                                            ),
                                                            CustomDropDown(
                                                              width:
                                                                  getHorizontalSize(
                                                                106,
                                                              ),
                                                              focusNode:
                                                                  FocusNode(),
                                                              hintText:
                                                                  "Access Control",
                                                              variant:
                                                                  DropDownVariant
                                                                      .None,
                                                              padding:
                                                                  DropDownPadding
                                                                      .PaddingT1,
                                                              fontStyle:
                                                                  DropDownFontStyle
                                                                      .InterMedium12,
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              items:
                                                                  dropdownItemList,
                                                              onChanged:
                                                                  (value) {},
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
                                        Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 7,
                                            bottom: 7,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 5,
                                                  bottom: 8,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 18,
                                                      ),
                                                      child: Text(
                                                        "Rent Status",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium13,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 2,
                                                        top: 10,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            "Total",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular12Bluegray900,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 47,
                                                            ),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: "₹",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .cyan900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "100000",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .cyan900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 4,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            "Received",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular12Bluegray900,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 23,
                                                            ),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: "₹",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .green900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "100000",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .green900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 5,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 1,
                                                            ),
                                                            child: Text(
                                                              "Pending",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular12Bluegray900,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 29,
                                                              bottom: 1,
                                                            ),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: "₹",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .pink900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "100000",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .pink900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: getVerticalSize(
                                                  97,
                                                ),
                                                child: VerticalDivider(
                                                  width: getHorizontalSize(
                                                    1,
                                                  ),
                                                  thickness: getVerticalSize(
                                                    1,
                                                  ),
                                                  color: ColorConstant.gray400,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                  bottom: 49,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 17,
                                                      ),
                                                      child: Text(
                                                        "Maintenance",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium13,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 14,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            "Total",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular12Bluegray900,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 50,
                                                            ),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: "₹",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "100000",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
