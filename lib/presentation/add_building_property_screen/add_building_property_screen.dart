import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_switch.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

class AddBuildingPropertyScreen extends StatelessWidget {
  TextEditingController rectanglethirteController = TextEditingController();

  TextEditingController rectanglefourteController = TextEditingController();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  TextEditingController shopsController = TextEditingController();

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

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
              top: 15,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "Add Building / Property",
            margin: getMargin(
              left: 9,
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
                        top: 13,
                      ),
                      padding: getPadding(
                        left: 14,
                        top: 31,
                        right: 14,
                        bottom: 31,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL25,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Text(
                              "BUILDING / PROPERTY DETAILS",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                              top: 19,
                            ),
                            child: Text(
                              "Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: rectanglethirteController,
                            margin: getMargin(
                              left: 5,
                              top: 1,
                              right: 7,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 7,
                              top: 15,
                            ),
                            child: Text(
                              "Address",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: rectanglefourteController,
                            margin: getMargin(
                              left: 7,
                              top: 1,
                              right: 5,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                              top: 12,
                              right: 6,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      right: 9,
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
                                          child: Text(
                                            "State",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular16Black900,
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            36,
                                          ),
                                          width: getHorizontalSize(
                                            150,
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
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      left: 9,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Pin Code",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular16Black900,
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            36,
                                          ),
                                          width: getHorizontalSize(
                                            150,
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                              top: 14,
                            ),
                            child: Text(
                              "Upload Building / Property Image",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
                              top: 3,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DottedBorder(
                                  color: ColorConstant.gray500,
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
                                    15,
                                  ),
                                  borderType: BorderType.RRect,
                                  dashPattern: [
                                    2,
                                    2,
                                  ],
                                  child: Container(
                                    padding: getPadding(
                                      left: 13,
                                      top: 33,
                                      right: 13,
                                      bottom: 33,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray500.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgCloudupload,
                                          height: getSize(
                                            46,
                                          ),
                                          width: getSize(
                                            46,
                                          ),
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 10,
                                          ),
                                          child: Text(
                                            "Drag & drop your image",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Gray600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: ColorConstant.gray500,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      140,
                                    ),
                                    width: getHorizontalSize(
                                      161,
                                    ),
                                    padding: getPadding(
                                      left: 29,
                                      top: 19,
                                      right: 29,
                                      bottom: 19,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray500.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgBulding1,
                                          height: getSize(
                                            102,
                                          ),
                                          width: getSize(
                                            102,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              355,
                            ),
                            width: getHorizontalSize(
                              322,
                            ),
                            margin: getMargin(
                              left: 3,
                              top: 13,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomSwitch(
                                  margin: getMargin(
                                    right: 11,
                                    bottom: 109,
                                  ),
                                  alignment: Alignment.bottomRight,
                                  value: isSelectedSwitch,
                                  onChanged: (value) {
                                    isSelectedSwitch = value;
                                  },
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                        ),
                                        child: Text(
                                          "Select Your Building Units",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular16Black900,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          311,
                                        ),
                                        margin: getMargin(
                                          left: 5,
                                          top: 3,
                                          right: 5,
                                        ),
                                        child: Text(
                                          "Specify the number of flats, shops, and other units in the building to streamline tenant record management.",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterRegular14Gray600,
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          top: 2,
                                        ),
                                        padding: getPadding(
                                          top: 17,
                                          bottom: 17,
                                        ),
                                        decoration: AppDecoration
                                            .outlineGray3001
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder15,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                left: 14,
                                                right: 12,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 3,
                                                    ),
                                                    child: Text(
                                                      "Flats",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16Black900,
                                                    ),
                                                  ),
                                                  CustomSwitch(
                                                    value: isSelectedSwitch1,
                                                    onChanged: (value) {
                                                      isSelectedSwitch1 = value;
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 14,
                                                top: 19,
                                                right: 12,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 4,
                                                      bottom: 3,
                                                    ),
                                                    child: Text(
                                                      "Number of Flats",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16Gray500,
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgRemove,
                                                    height: getSize(
                                                      24,
                                                    ),
                                                    width: getSize(
                                                      24,
                                                    ),
                                                    margin: getMargin(
                                                      left: 43,
                                                      top: 2,
                                                      bottom: 2,
                                                    ),
                                                  ),
                                                  CustomButton(
                                                    height: getVerticalSize(
                                                      28,
                                                    ),
                                                    width: getHorizontalSize(
                                                      64,
                                                    ),
                                                    text: "0",
                                                    margin: getMargin(
                                                      left: 10,
                                                    ),
                                                    variant: ButtonVariant
                                                        .OutlineGray300_1,
                                                    shape: ButtonShape
                                                        .RoundedBorder5,
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular16,
                                                  ),
                                                  CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgAdd,
                                                    height: getSize(
                                                      24,
                                                    ),
                                                    width: getSize(
                                                      24,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      top: 2,
                                                      bottom: 2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 13,
                                              ),
                                              child: Divider(
                                                height: getVerticalSize(
                                                  1,
                                                ),
                                                thickness: getVerticalSize(
                                                  1,
                                                ),
                                                color:
                                                    ColorConstant.blueGray100,
                                              ),
                                            ),
                                            CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: shopsController,
                                              hintText: "Shops",
                                              margin: getMargin(
                                                top: 19,
                                                right: 1,
                                              ),
                                              variant: TextFormFieldVariant
                                                  .UnderLineBluegray100,
                                              padding: TextFormFieldPadding
                                                  .PaddingAll1,
                                              fontStyle: TextFormFieldFontStyle
                                                  .InterRegular16Black900,
                                              textInputAction:
                                                  TextInputAction.done,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 20,
                                                top: 15,
                                                right: 13,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 4,
                                                    ),
                                                    child: Text(
                                                      "Halls",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16Black900,
                                                    ),
                                                  ),
                                                  CustomSwitch(
                                                    margin: getMargin(
                                                      top: 1,
                                                    ),
                                                    value: isSelectedSwitch2,
                                                    onChanged: (value) {
                                                      isSelectedSwitch2 = value;
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 14,
                                              ),
                                              child: Divider(
                                                height: getVerticalSize(
                                                  2,
                                                ),
                                                thickness: getVerticalSize(
                                                  2,
                                                ),
                                                color:
                                                    ColorConstant.blueGray100,
                                                endIndent: getHorizontalSize(
                                                  1,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 22,
                                                top: 15,
                                                right: 12,
                                                bottom: 1,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 5,
                                                    ),
                                                    child: Text(
                                                      "Plots",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16Black900,
                                                    ),
                                                  ),
                                                  CustomSwitch(
                                                    margin: getMargin(
                                                      top: 2,
                                                    ),
                                                    value: isSelectedSwitch3,
                                                    onChanged: (value) {
                                                      isSelectedSwitch3 = value;
                                                    },
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
                          CustomButton(
                            height: getVerticalSize(
                              40,
                            ),
                            width: getHorizontalSize(
                              165,
                            ),
                            text: "Save",
                            margin: getMargin(
                              top: 42,
                              bottom: 12,
                            ),
                            shape: ButtonShape.CircleBorder20,
                            padding: ButtonPadding.PaddingAll9,
                            fontStyle: ButtonFontStyle.InterRegular18,
                            alignment: Alignment.center,
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
