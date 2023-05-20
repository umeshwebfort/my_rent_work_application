import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

class TenantDetailScreenOneScreen extends StatelessWidget {
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
              top: 15,
              bottom: 17,
            ),
          ),
          title: AppbarTitle(
            text: "Tenant Detail",
            margin: getMargin(
              left: 9,
            ),
          ),
          actions: [
            Container(
              margin: getMargin(
                left: 21,
                top: 13,
                right: 21,
                bottom: 13,
              ),
              padding: getPadding(
                left: 12,
                top: 4,
                right: 12,
                bottom: 4,
              ),
              decoration: AppDecoration.fillRed700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                children: [
                  AppbarImage(
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    svgPath: ImageConstant.imgEditWhiteA700,
                    margin: getMargin(
                      top: 1,
                      bottom: 1,
                    ),
                  ),
                  AppbarSubtitle1(
                    text: "Edit",
                    margin: getMargin(
                      left: 5,
                      right: 8,
                      bottom: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
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
                  CustomImageView(
                    imagePath: ImageConstant.imgMan1,
                    height: getVerticalSize(
                      61,
                    ),
                    width: getHorizontalSize(
                      62,
                    ),
                    alignment: Alignment.topLeft,
                    margin: getMargin(
                      left: 21,
                      top: 25,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 95,
                        top: 50,
                      ),
                      child: Text(
                        "Pocket 6, Sector 9...",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular13,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: getPadding(
                        left: 95,
                        top: 21,
                        right: 13,
                        bottom: 828,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 5,
                            ),
                            child: Text(
                              "Somvir",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold16,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCall1,
                            height: getVerticalSize(
                              18,
                            ),
                            width: getHorizontalSize(
                              19,
                            ),
                            margin: getMargin(
                              left: 11,
                              bottom: 7,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgMorevert,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              top: 2,
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
                        left: 95,
                        top: 67,
                      ),
                      child: RichText(
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
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: getPadding(
                        left: 22,
                        top: 137,
                        right: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Rent Due Date:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                ),
                                child: Text(
                                  "15-05-2023",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold12Black900,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: getPadding(
                              top: 11,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray400,
                              indent: getHorizontalSize(
                                1,
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
                        top: 102,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Maintenance:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                ),
                                child: Text(
                                  "₹ 3000",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold12Black900,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Security:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                  ),
                                  child: Text(
                                    "₹ 3000",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold12Black900,
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
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 177,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "₹ 5000",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14Black900,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "Monthly Rent",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular12Gray600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: getPadding(
                        top: 177,
                        right: 137,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "₹ 1000",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14Black900,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              "Advance",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular12Gray600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: getPadding(
                        top: 176,
                        right: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "₹ 0",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14Black900,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "Pending",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular12Gray600,
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
                        top: 225,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          317,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.gray400,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgInfooutline,
                    height: getSize(
                      17,
                    ),
                    width: getSize(
                      17,
                    ),
                    alignment: Alignment.topRight,
                    margin: getMargin(
                      top: 49,
                      right: 123,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(
                        left: 23,
                        top: 261,
                        right: 21,
                      ),
                      padding: getPadding(
                        left: 4,
                        top: 9,
                        right: 4,
                        bottom: 9,
                      ),
                      decoration: AppDecoration.outlineGray4001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 8,
                                top: 14,
                                right: 39,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: getHorizontalSize(
                                      58,
                                    ),
                                    child: Text(
                                      "Electricity\nBill",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterMedium12Black900,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 30,
                                      bottom: 14,
                                    ),
                                    child: Text(
                                      "Water Bill",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium12Black900,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                      bottom: 11,
                                    ),
                                    child: Text(
                                      "Rent",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium12Black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 11,
                              top: 9,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                    bottom: 4,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "₹ 100",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold14Black900,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "Units: 100",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium12,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: Text(
                                          "20 Days",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                    bottom: 25,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "₹ 100",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold14Black900,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "Fixed",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 21,
                                    top: 3,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Rent Amount:",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium11,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 17,
                                              ),
                                              child: Text(
                                                "₹ 5200",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold14Black900,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 9,
                                        ),
                                        child: SizedBox(
                                          width: getHorizontalSize(
                                            145,
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
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                          top: 2,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Maintenance: ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterMedium11,
                                                ),
                                                Text(
                                                  "(Monthly)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterMedium11,
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 25,
                                                top: 2,
                                                bottom: 7,
                                              ),
                                              child: Text(
                                                "₹ 200",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold14Black900,
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
                          Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: SizedBox(
                              width: getHorizontalSize(
                                145,
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
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                              right: 6,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Advance:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium11,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 47,
                                  ),
                                  child: Text(
                                    "₹ 200",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold14Green900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 13,
                              right: 4,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Total:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold12Black900,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 108,
                                  ),
                                  child: Text(
                                    "₹ 5600",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold14Black900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 16,
                              right: 4,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgWhatsapp1,
                                  height: getSize(
                                    22,
                                  ),
                                  width: getSize(
                                    22,
                                  ),
                                  margin: getMargin(
                                    top: 1,
                                    bottom: 3,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgChatbubbleoutline,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  margin: getMargin(
                                    left: 6,
                                    bottom: 2,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: getHorizontalSize(
                                    83,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                  ),
                                  padding: getPadding(
                                    left: 20,
                                    top: 2,
                                    right: 20,
                                    bottom: 2,
                                  ),
                                  decoration: AppDecoration.txtOutlineGray40001
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder12,
                                  ),
                                  child: Text(
                                    "Delete",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14Gray900,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    83,
                                  ),
                                  margin: getMargin(
                                    left: 7,
                                    top: 2,
                                  ),
                                  padding: getPadding(
                                    left: 12,
                                    top: 2,
                                    right: 12,
                                    bottom: 2,
                                  ),
                                  decoration:
                                      AppDecoration.txtFillPink900.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder12,
                                  ),
                                  child: Text(
                                    "Payment",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14WhiteA700,
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
                      32,
                    ),
                    width: getHorizontalSize(
                      115,
                    ),
                    text: "June 2023",
                    margin: getMargin(
                      left: 38,
                      top: 244,
                    ),
                    variant: ButtonVariant.OutlineGray300,
                    padding: ButtonPadding.PaddingAll9,
                    fontStyle: ButtonFontStyle.InterRegular14,
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: getPadding(
                        top: 319,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          317,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.gray400,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: getPadding(
                        top: 421,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          317,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.black900,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: getHorizontalSize(
                        317,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: ColorConstant.gray400,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 109,
                        top: 287,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: getVerticalSize(
                              166,
                            ),
                            child: VerticalDivider(
                              width: getHorizontalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray40001,
                              indent: getHorizontalSize(
                                1,
                              ),
                              endIndent: getHorizontalSize(
                                32,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 77,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                166,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.gray40001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: getVerticalSize(
                        251,
                      ),
                      width: getHorizontalSize(
                        317,
                      ),
                      margin: getMargin(
                        bottom: 110,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: getMargin(
                                left: 1,
                              ),
                              padding: getPadding(
                                left: 4,
                                top: 9,
                                right: 4,
                                bottom: 9,
                              ),
                              decoration:
                                  AppDecoration.outlineGray4001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 14,
                                      right: 39,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            58,
                                          ),
                                          child: Text(
                                            "Electricity\nBill",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtInterMedium12Black900,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 30,
                                            bottom: 14,
                                          ),
                                          child: Text(
                                            "Water Bill",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium12Black900,
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: getPadding(
                                            top: 3,
                                            bottom: 11,
                                          ),
                                          child: Text(
                                            "Rent",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium12Black900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                      top: 9,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      57,
                                                    ),
                                                    margin: getMargin(
                                                      top: 2,
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "Not \nCollected",
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtInterBold12Black900,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 35,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "₹ 100",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold14Black900,
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 2,
                                                          ),
                                                          child: Text(
                                                            "Fixed",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium12,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 6,
                                              ),
                                              child: Text(
                                                "Last Units: 100",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium12,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 5,
                                              ),
                                              child: Text(
                                                "Last Date: 20-05-2023",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 3,
                                            bottom: 2,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  left: 1,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 1,
                                                        bottom: 1,
                                                      ),
                                                      child: Text(
                                                        "Rent Amount:",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium11,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 17,
                                                      ),
                                                      child: Text(
                                                        "₹ 5200",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14Black900,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 9,
                                                ),
                                                child: SizedBox(
                                                  width: getHorizontalSize(
                                                    145,
                                                  ),
                                                  child: Divider(
                                                    height: getVerticalSize(
                                                      1,
                                                    ),
                                                    thickness: getVerticalSize(
                                                      1,
                                                    ),
                                                    color:
                                                        ColorConstant.gray500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 1,
                                                  top: 2,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Maintenance: ",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium11,
                                                        ),
                                                        Text(
                                                          "(Monthly)",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium11,
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 25,
                                                        top: 2,
                                                        bottom: 7,
                                                      ),
                                                      child: Text(
                                                        "₹ 200",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14Black900,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 6,
                                                ),
                                                child: SizedBox(
                                                  width: getHorizontalSize(
                                                    145,
                                                  ),
                                                  child: Divider(
                                                    height: getVerticalSize(
                                                      1,
                                                    ),
                                                    thickness: getVerticalSize(
                                                      1,
                                                    ),
                                                    color:
                                                        ColorConstant.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          bottom: 1,
                                                        ),
                                                        child: Text(
                                                          "Advance:",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium11,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 47,
                                                        ),
                                                        child: Text(
                                                          "₹ 200",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold14Green900,
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
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 10,
                                        right: 4,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                            ),
                                            child: Text(
                                              "Total:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold12Black900,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 108,
                                            ),
                                            child: Text(
                                              "₹ 5600",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold14Black900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 6,
                                      top: 16,
                                      right: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgWhatsapp1,
                                          height: getSize(
                                            22,
                                          ),
                                          width: getSize(
                                            22,
                                          ),
                                          margin: getMargin(
                                            top: 1,
                                            bottom: 3,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgChatbubbleoutline,
                                          height: getSize(
                                            24,
                                          ),
                                          width: getSize(
                                            24,
                                          ),
                                          margin: getMargin(
                                            left: 6,
                                            bottom: 2,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: getHorizontalSize(
                                            83,
                                          ),
                                          margin: getMargin(
                                            top: 2,
                                          ),
                                          padding: getPadding(
                                            left: 20,
                                            top: 2,
                                            right: 20,
                                            bottom: 2,
                                          ),
                                          decoration: AppDecoration
                                              .txtOutlineGray40001
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder12,
                                          ),
                                          child: Text(
                                            "Delete",
                                            overflow: TextOverflow.ellipsis,
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
                                            left: 7,
                                            top: 2,
                                          ),
                                          padding: getPadding(
                                            left: 12,
                                            top: 2,
                                            right: 12,
                                            bottom: 2,
                                          ),
                                          decoration: AppDecoration
                                              .txtFillPink900
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder12,
                                          ),
                                          child: Text(
                                            "Payment",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14WhiteA700,
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
                              32,
                            ),
                            width: getHorizontalSize(
                              115,
                            ),
                            text: "May 2023",
                            margin: getMargin(
                              left: 16,
                            ),
                            variant: ButtonVariant.OutlineGray300,
                            padding: ButtonPadding.PaddingAll9,
                            fontStyle: ButtonFontStyle.InterRegular14,
                            alignment: Alignment.topLeft,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                top: 75,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  317,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.gray400,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                bottom: 73,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  317,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.black900,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                bottom: 41,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  317,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.gray400,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 96,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: getVerticalSize(
                                      166,
                                    ),
                                    child: VerticalDivider(
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: ColorConstant.gray40001,
                                      indent: getHorizontalSize(
                                        1,
                                      ),
                                      endIndent: getHorizontalSize(
                                        32,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 68,
                                    ),
                                    child: SizedBox(
                                      height: getVerticalSize(
                                        166,
                                      ),
                                      child: VerticalDivider(
                                        width: getHorizontalSize(
                                          1,
                                        ),
                                        thickness: getVerticalSize(
                                          1,
                                        ),
                                        color: ColorConstant.gray40001,
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
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: getMargin(
                        top: 103,
                        right: 21,
                      ),
                      padding: getPadding(
                        left: 17,
                        top: 6,
                        right: 17,
                        bottom: 6,
                      ),
                      decoration: AppDecoration.fillPink900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              "Receive Payment",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: getMargin(
                        top: 55,
                        right: 21,
                      ),
                      padding: getPadding(
                        left: 11,
                        top: 14,
                        right: 11,
                        bottom: 14,
                      ),
                      decoration: AppDecoration.outlineBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgComputer,
                                  height: getVerticalSize(
                                    12,
                                  ),
                                  width: getHorizontalSize(
                                    16,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                    bottom: 1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                  ),
                                  child: Text(
                                    "Download PDF",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 11,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgInsertdrivefile,
                                  height: getSize(
                                    18,
                                  ),
                                  width: getSize(
                                    18,
                                  ),
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 9,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "Generate Bill",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 9,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgNotinterestedGray600,
                                  height: getSize(
                                    18,
                                  ),
                                  width: getSize(
                                    18,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 9,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Tenant Discontinue",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 9,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgDelete,
                                  height: getSize(
                                    18,
                                  ),
                                  width: getSize(
                                    18,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Delete All",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
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
      ),
    );
  }
}
