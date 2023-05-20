import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

class TenantDiscontinueScreen extends StatelessWidget {
  TextEditingController group567Controller = TextEditingController();

  TextEditingController group566Controller = TextEditingController();

  TextEditingController rectanglethirtyController = TextEditingController();

  TextEditingController rectanglefortytController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        resizeToAvoidBottomInset: false,
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
            text: "Tenant Discontinue",
            margin: getMargin(
              left: 7,
            ),
          ),
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
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        top: 140,
                      ),
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
                          418,
                        ),
                        width: getHorizontalSize(
                          316,
                        ),
                        padding: getPadding(
                          left: 3,
                          top: 23,
                          right: 3,
                          bottom: 23,
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
                                        style:
                                            AppStyle.txtInterMedium12Black900,
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
                                        style:
                                            AppStyle.txtInterMedium12Black900,
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
                                        style:
                                            AppStyle.txtInterMedium12Black900,
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
                                  top: 75,
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
                                  top: 72,
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
                                  top: 42,
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
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: getPadding(
                                  top: 105,
                                  right: 1,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
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
                                            controller: group567Controller,
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
                                        Container(
                                          width: getHorizontalSize(
                                            64,
                                          ),
                                          margin: getMargin(
                                            top: 15,
                                          ),
                                          child: Text(
                                            "Date: \n01-05-2023",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium11Black900,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 1,
                                        bottom: 44,
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
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 12,
                                  right: 5,
                                  bottom: 6,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
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
                                              left: 112,
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
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        top: 21,
                                      ),
                                      child: Text(
                                        "Discontinue Date",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium11Black900,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        right: 2,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              115,
                                            ),
                                            focusNode: FocusNode(),
                                            controller: group566Controller,
                                            hintText: "15-1-2023",
                                            margin: getMargin(
                                              top: 6,
                                            ),
                                            variant: TextFormFieldVariant
                                                .OutlineGray500,
                                            padding:
                                                TextFormFieldPadding.PaddingT8,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterRegular13,
                                            suffix: Container(
                                              margin: getMargin(
                                                left: 18,
                                                top: 4,
                                                right: 7,
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
                                          CustomButton(
                                            height: getVerticalSize(
                                              30,
                                            ),
                                            width: getHorizontalSize(
                                              126,
                                            ),
                                            text: "Generate",
                                            margin: getMargin(
                                              left: 50,
                                              bottom: 4,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 1,
                                        top: 18,
                                        right: 2,
                                      ),
                                      padding: getPadding(
                                        left: 12,
                                        top: 17,
                                        right: 12,
                                        bottom: 17,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray10002.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 5,
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              "Rent Charge Type",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold13,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgCheckbox,
                                            height: getSize(
                                              24,
                                            ),
                                            width: getSize(
                                              24,
                                            ),
                                            margin: getMargin(
                                              left: 56,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 4,
                                              top: 4,
                                              bottom: 3,
                                            ),
                                            child: Text(
                                              "Full month",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular13Black900,
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
                              child: Padding(
                                padding: getPadding(
                                  top: 86,
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
                                        style:
                                            AppStyle.txtInterMedium11Black900,
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
                                  top: 44,
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
                                    Container(
                                      width: getHorizontalSize(
                                        71,
                                      ),
                                      margin: getMargin(
                                        left: 2,
                                        top: 6,
                                      ),
                                      child: Text(
                                        "Last Reading: \n1100",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium11Black900,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        64,
                                      ),
                                      margin: getMargin(
                                        left: 2,
                                        top: 7,
                                      ),
                                      child: Text(
                                        "Last Date: \n01-05-2023",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium11Black900,
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
                                  left: 97,
                                  top: 42,
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
                      left: 36,
                      top: 123,
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
                        top: 198,
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
                        top: 354,
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
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: getPadding(
                        top: 397,
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
                        left: 115,
                      ),
                      child: SizedBox(
                        height: getVerticalSize(
                          354,
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
                            167,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: getVerticalSize(
                        396,
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
                          165,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 40,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMan1,
                            height: getVerticalSize(
                              61,
                            ),
                            width: getHorizontalSize(
                              62,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 3,
                              bottom: 19,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Somvir",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold16,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Pocket 6, Sector 9...",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular13,
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
