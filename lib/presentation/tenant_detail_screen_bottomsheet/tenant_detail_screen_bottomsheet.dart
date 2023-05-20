import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TenantDetailScreenBottomsheet extends StatelessWidget {
  TextEditingController group581Controller = TextEditingController();

  TextEditingController rectanglefortyfController = TextEditingController();

  TextEditingController rectanglethirtyController = TextEditingController();

  TextEditingController rectanglefortyoController = TextEditingController();

  TextEditingController rectanglefortytController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.whiteA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.customBorderTL15,
          ),
          child: Container(
            height: getVerticalSize(
              389,
            ),
            width: double.maxFinite,
            padding: getPadding(
              left: 19,
              top: 25,
              right: 19,
              bottom: 25,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL15,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.whiteA700,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: ColorConstant.gray400,
                        width: getHorizontalSize(
                          1,
                        ),
                      ),
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        312,
                      ),
                      width: getHorizontalSize(
                        316,
                      ),
                      padding: getPadding(
                        left: 3,
                        top: 15,
                        right: 3,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineGray4001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 9,
                                top: 8,
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
                                  Padding(
                                    padding: getPadding(
                                      left: 92,
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
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: getPadding(
                                top: 84,
                                right: 8,
                              ),
                              child: Text(
                                "₹ 200",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14Black900,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: getPadding(
                                top: 81,
                                right: 73,
                              ),
                              child: Text(
                                "Maintenance: ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium11,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: getPadding(
                                top: 51,
                                right: 1,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                            style: AppStyle.txtInterMedium11,
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
                                            style:
                                                AppStyle.txtInterBold14Black900,
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
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: getPadding(
                                right: 1,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          DottedBorder(
                                            color: ColorConstant.gray400,
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                1,
                                              ),
                                              top: getVerticalSize(
                                                1,
                                              ),
                                              right: getHorizontalSize(
                                                1,
                                              ),
                                              bottom: getVerticalSize(
                                                1,
                                              ),
                                            ),
                                            strokeWidth: getHorizontalSize(
                                              1,
                                            ),
                                            radius: Radius.circular(
                                              5,
                                            ),
                                            borderType: BorderType.RRect,
                                            dashPattern: [
                                              2,
                                              2,
                                            ],
                                            child: CustomTextFormField(
                                              width: getHorizontalSize(
                                                59,
                                              ),
                                              focusNode: FocusNode(),
                                              controller: group581Controller,
                                              variant: TextFormFieldVariant
                                                  .OutlineGray400,
                                              suffix: Container(
                                                margin: getMargin(
                                                  left: 20,
                                                  top: 3,
                                                  right: 19,
                                                  bottom: 2,
                                                ),
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUpload,
                                                ),
                                              ),
                                              suffixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(
                                                  25,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 1,
                                              top: 13,
                                            ),
                                            child: Text(
                                              "Date",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterMedium11Black900,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 8,
                                          top: 1,
                                          bottom: 29,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
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
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 1,
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "Advance:",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
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
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold14Green900,
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
                                  CustomTextFormField(
                                    width: getHorizontalSize(
                                      59,
                                    ),
                                    focusNode: FocusNode(),
                                    controller: rectanglefortyfController,
                                    margin: getMargin(
                                      top: 1,
                                    ),
                                    variant:
                                        TextFormFieldVariant.OutlineGray400_1,
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 17,
                                      right: 4,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 1,
                                          ),
                                          child: Text(
                                            "Total:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterBold12Black900,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 112,
                                          ),
                                          child: Text(
                                            "₹ 5600",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterBold14Black900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomButton(
                                    height: getVerticalSize(
                                      24,
                                    ),
                                    width: getHorizontalSize(
                                      83,
                                    ),
                                    text: "Generate",
                                    margin: getMargin(
                                      top: 30,
                                      right: 6,
                                    ),
                                    shape: ButtonShape.CircleBorder12,
                                    fontStyle: ButtonFontStyle.InterRegular14,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                top: 95,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "Attach Bill",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium11Black900,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                      bottom: 3,
                                    ),
                                    child: Text(
                                      "(Monthly)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium11,
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
                                top: 53,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Current Reading",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium11Black900,
                                  ),
                                  CustomTextFormField(
                                    width: getHorizontalSize(
                                      84,
                                    ),
                                    focusNode: FocusNode(),
                                    controller: rectanglethirtyController,
                                    margin: getMargin(
                                      left: 1,
                                    ),
                                    variant:
                                        TextFormFieldVariant.OutlineGray400_1,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                      top: 6,
                                    ),
                                    child: Text(
                                      "Date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium11Black900,
                                    ),
                                  ),
                                  CustomTextFormField(
                                    width: getHorizontalSize(
                                      84,
                                    ),
                                    focusNode: FocusNode(),
                                    controller: rectanglefortyoController,
                                    margin: getMargin(
                                      left: 1,
                                      top: 1,
                                    ),
                                    variant:
                                        TextFormFieldVariant.OutlineGray400_1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 97,
                                top: 51,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Govt. Amt.",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium11Black900,
                                  ),
                                  CustomTextFormField(
                                    width: getHorizontalSize(
                                      59,
                                    ),
                                    focusNode: FocusNode(),
                                    controller: rectanglefortytController,
                                    margin: getMargin(
                                      top: 1,
                                    ),
                                    variant:
                                        TextFormFieldVariant.OutlineGray400_1,
                                    textInputAction: TextInputAction.done,
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
                CustomButton(
                  height: getVerticalSize(
                    32,
                  ),
                  width: getHorizontalSize(
                    115,
                  ),
                  text: "May 2023",
                  margin: getMargin(
                    left: 21,
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
                      bottom: 107,
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
                      bottom: 64,
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
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 100,
                    ),
                    child: SizedBox(
                      height: getVerticalSize(
                        231,
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
                          44,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: getPadding(
                      right: 151,
                    ),
                    child: SizedBox(
                      height: getVerticalSize(
                        273,
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
                          42,
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
    );
  }
}
