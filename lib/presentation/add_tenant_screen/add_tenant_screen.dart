import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_drop_down.dart';
import 'package:my_rent_work_application/widgets/custom_radio_button.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

class AddTenantScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController contactnumberController = TextEditingController();

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController flatnumberController = TextEditingController();

  TextEditingController idnumberController = TextEditingController();

  TextEditingController totalmembersController = TextEditingController();

  TextEditingController typeshopsController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_monthly", "lbl_quarterly"];

  String radioGroup1 = "";

  List<String> radioList1 = ["lbl_half_yearly", "lbl_yearly"];

  String radioGroup2 = "";

  TextEditingController maintenancecharController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController monthlyrentController = TextEditingController();

  TextEditingController dateoneController = TextEditingController();

  TextEditingController typeofrentController = TextEditingController();

  TextEditingController pendingrentController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            text: "Add Tenant Detail",
            margin: getMargin(
              left: 9,
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 2,
            ),
            child: Container(
              height: getVerticalSize(
                2311,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
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
                              2294,
                            ),
                            width: double.maxFinite,
                            margin: getMargin(
                              top: 16,
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
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 14,
                        right: 13,
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
                              "Upload Tenant Photo",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 2,
                              top: 7,
                              right: 2,
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
                                      top: 7,
                                      right: 13,
                                      bottom: 7,
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
                                            top: 2,
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
                                      89,
                                    ),
                                    width: getHorizontalSize(
                                      161,
                                    ),
                                    padding: getPadding(
                                      left: 54,
                                      top: 18,
                                      right: 54,
                                      bottom: 18,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray500.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgUser1,
                                          height: getSize(
                                            52,
                                          ),
                                          width: getSize(
                                            52,
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
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: nameController,
                            hintText: "Tenant Name",
                            margin: getMargin(
                              left: 4,
                              top: 19,
                            ),
                          ),
                          CustomDropDown(
                            focusNode: FocusNode(),
                            icon: Container(
                              margin: getMargin(
                                left: 30,
                                right: 6,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdown,
                              ),
                            ),
                            hintText: "Sex",
                            margin: getMargin(
                              left: 4,
                              top: 20,
                            ),
                            padding: DropDownPadding.PaddingT8,
                            fontStyle: DropDownFontStyle.InterRegular16,
                            items: dropdownItemList,
                            onChanged: (value) {},
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: contactnumberController,
                            hintText: "Contact Number",
                            margin: getMargin(
                              left: 4,
                              top: 20,
                            ),
                            textInputType: TextInputType.number,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 20,
                              right: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomDropDown(
                                    focusNode: FocusNode(),
                                    icon: Container(
                                      margin: getMargin(
                                        left: 27,
                                        right: 9,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown,
                                      ),
                                    ),
                                    hintText: "Occupation",
                                    margin: getMargin(
                                      right: 4,
                                    ),
                                    padding: DropDownPadding.PaddingT8,
                                    fontStyle: DropDownFontStyle.InterRegular16,
                                    items: dropdownItemList1,
                                    onChanged: (value) {},
                                  ),
                                ),
                                Expanded(
                                  child: CustomDropDown(
                                    focusNode: FocusNode(),
                                    icon: Container(
                                      margin: getMargin(
                                        left: 30,
                                        right: 6,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown,
                                      ),
                                    ),
                                    hintText: "ID Proof",
                                    margin: getMargin(
                                      left: 4,
                                    ),
                                    padding: DropDownPadding.PaddingT8,
                                    fontStyle: DropDownFontStyle.InterRegular16,
                                    items: dropdownItemList2,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: flatnumberController,
                            hintText: "Flat Number",
                            margin: getMargin(
                              left: 4,
                              top: 19,
                            ),
                            textInputType: TextInputType.number,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 19,
                            ),
                            child: Text(
                              "Upload ID (Front)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
                              top: 7,
                              right: 1,
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
                                      top: 7,
                                      right: 13,
                                      bottom: 7,
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
                                            top: 2,
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
                                      89,
                                    ),
                                    width: getHorizontalSize(
                                      161,
                                    ),
                                    padding: getPadding(
                                      left: 49,
                                      top: 13,
                                      right: 49,
                                      bottom: 13,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray500.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgIdcard1,
                                          height: getSize(
                                            63,
                                          ),
                                          width: getSize(
                                            63,
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
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 19,
                            ),
                            child: Text(
                              "Upload ID (Back)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 7,
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
                                      top: 7,
                                      right: 13,
                                      bottom: 7,
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
                                            top: 2,
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
                                      89,
                                    ),
                                    width: getHorizontalSize(
                                      161,
                                    ),
                                    padding: getPadding(
                                      left: 49,
                                      top: 13,
                                      right: 49,
                                      bottom: 13,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray500.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgIdcard1,
                                          height: getSize(
                                            63,
                                          ),
                                          width: getSize(
                                            63,
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
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: idnumberController,
                            hintText: "ID Number",
                            margin: getMargin(
                              left: 3,
                              top: 19,
                            ),
                            textInputType: TextInputType.number,
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: totalmembersController,
                            hintText: "Total Member(Houses / Flat)",
                            margin: getMargin(
                              top: 19,
                            ),
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: typeshopsController,
                            hintText: "Type Shops / Office/ halls / Plots",
                            margin: getMargin(
                              top: 19,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              854,
                            ),
                            width: getHorizontalSize(
                              328,
                            ),
                            margin: getMargin(
                              left: 2,
                              top: 451,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: getPadding(
                                      left: 14,
                                      top: 30,
                                      right: 14,
                                      bottom: 30,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray5002.copyWith(
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
                                        Container(
                                          height: getVerticalSize(
                                            72,
                                          ),
                                          width: getHorizontalSize(
                                            296,
                                          ),
                                          margin: getMargin(
                                            top: 11,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 1,
                                                  ),
                                                  child: Text(
                                                    "Maintenance",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular18Black900,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    40,
                                                  ),
                                                  width: getHorizontalSize(
                                                    140,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.pink900,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    40,
                                                  ),
                                                  width: getHorizontalSize(
                                                    140,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        20,
                                                      ),
                                                    ),
                                                    border: Border.all(
                                                      color: ColorConstant
                                                          .gray40001,
                                                      width: getHorizontalSize(
                                                        1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        "Maintenance",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular18Black900,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 10,
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: CustomButton(
                                                              height:
                                                                  getVerticalSize(
                                                                40,
                                                              ),
                                                              text:
                                                                  "Include Rent",
                                                              margin: getMargin(
                                                                right: 8,
                                                              ),
                                                              shape: ButtonShape
                                                                  .CircleBorder20,
                                                              padding:
                                                                  ButtonPadding
                                                                      .PaddingAll9,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: CustomButton(
                                                              height:
                                                                  getVerticalSize(
                                                                40,
                                                              ),
                                                              text: "Separate",
                                                              margin: getMargin(
                                                                left: 8,
                                                              ),
                                                              variant: ButtonVariant
                                                                  .OutlineGray40001,
                                                              shape: ButtonShape
                                                                  .CircleBorder20,
                                                              padding:
                                                                  ButtonPadding
                                                                      .PaddingAll9,
                                                              fontStyle:
                                                                  ButtonFontStyle
                                                                      .InterRegular16Black90001,
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
                                            left: 2,
                                            top: 20,
                                          ),
                                          child: Column(
                                            children: [
                                              CustomRadioButton(
                                                text: "Monthly",
                                                value: radioList[0],
                                                groupValue: radioGroup,
                                                margin: getMargin(
                                                  top: 2,
                                                  right: 195,
                                                ),
                                                fontStyle: RadioFontStyle
                                                    .InterRegular16,
                                                onChange: (value) {
                                                  radioGroup = value;
                                                },
                                              ),
                                              CustomRadioButton(
                                                text: "Quarterly",
                                                value: radioList[1],
                                                groupValue: radioGroup,
                                                margin: getMargin(
                                                  left: 186,
                                                  bottom: 2,
                                                ),
                                                fontStyle: RadioFontStyle
                                                    .InterRegular16,
                                                onChange: (value) {
                                                  radioGroup = value;
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 9,
                                          ),
                                          child: Column(
                                            children: [
                                              CustomRadioButton(
                                                text: "Half Yearly",
                                                value: radioList1[0],
                                                groupValue: radioGroup1,
                                                margin: getMargin(
                                                  right: 153,
                                                ),
                                                fontStyle: RadioFontStyle
                                                    .InterRegular16,
                                                onChange: (value) {
                                                  radioGroup1 = value;
                                                },
                                              ),
                                              CustomRadioButton(
                                                text: "Yearly",
                                                value: radioList1[1],
                                                groupValue: radioGroup1,
                                                margin: getMargin(
                                                  left: 188,
                                                ),
                                                fontStyle: RadioFontStyle
                                                    .InterRegular16,
                                                onChange: (value) {
                                                  radioGroup1 = value;
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 1,
                                            top: 7,
                                          ),
                                          child: CustomRadioButton(
                                            text: "None",
                                            value: "None",
                                            groupValue: radioGroup2,
                                            margin: getMargin(
                                              left: 1,
                                              top: 7,
                                            ),
                                            fontStyle:
                                                RadioFontStyle.InterRegular16,
                                            onChange: (value) {
                                              radioGroup2 = value;
                                            },
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: maintenancecharController,
                                          hintText: "Maintenance Charges",
                                          margin: getMargin(
                                            left: 2,
                                            top: 13,
                                            right: 4,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 1,
                                            top: 23,
                                          ),
                                          child: Text(
                                            "Security Deposit",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular18Black900,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 8,
                                            right: 4,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: CustomButton(
                                                  height: getVerticalSize(
                                                    40,
                                                  ),
                                                  text: "Yes",
                                                  margin: getMargin(
                                                    right: 8,
                                                  ),
                                                  shape: ButtonShape
                                                      .CircleBorder20,
                                                  padding:
                                                      ButtonPadding.PaddingAll9,
                                                ),
                                              ),
                                              Expanded(
                                                child: CustomButton(
                                                  height: getVerticalSize(
                                                    40,
                                                  ),
                                                  text: "No",
                                                  margin: getMargin(
                                                    left: 8,
                                                  ),
                                                  variant: ButtonVariant
                                                      .OutlineGray40001,
                                                  shape: ButtonShape
                                                      .CircleBorder20,
                                                  padding:
                                                      ButtonPadding.PaddingAll9,
                                                  fontStyle: ButtonFontStyle
                                                      .InterRegular16Black90001,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: amountController,
                                          hintText: "Security Deposit Amount",
                                          margin: getMargin(
                                            left: 2,
                                            top: 19,
                                            right: 4,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 16,
                                          ),
                                          child: Text(
                                            "Security Receiving Date",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular16Black900,
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: dateController,
                                          hintText: "31/05/2023",
                                          margin: getMargin(
                                            left: 2,
                                            top: 4,
                                            right: 4,
                                          ),
                                          padding:
                                              TextFormFieldPadding.PaddingT8,
                                          suffix: Container(
                                            margin: getMargin(
                                              left: 30,
                                              top: 5,
                                              right: 9,
                                              bottom: 7,
                                            ),
                                            child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDaterange,
                                            ),
                                          ),
                                          suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              36,
                                            ),
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: monthlyrentController,
                                          hintText: "Monthly Rent",
                                          margin: getMargin(
                                            top: 22,
                                            right: 6,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 15,
                                          ),
                                          child: Text(
                                            "Rent Start Date",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular16Black900,
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: dateoneController,
                                          hintText: "31/05/2023",
                                          margin: getMargin(
                                            top: 5,
                                            right: 6,
                                          ),
                                          padding:
                                              TextFormFieldPadding.PaddingT8,
                                          suffix: Container(
                                            margin: getMargin(
                                              left: 30,
                                              top: 5,
                                              right: 9,
                                              bottom: 7,
                                            ),
                                            child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDaterange,
                                            ),
                                          ),
                                          suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              36,
                                            ),
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: typeofrentController,
                                          hintText: "Type of rent",
                                          margin: getMargin(
                                            left: 2,
                                            top: 23,
                                            right: 4,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 19,
                                            right: 4,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: getHorizontalSize(
                                                  98,
                                                ),
                                                padding: getPadding(
                                                  all: 11,
                                                ),
                                                decoration: AppDecoration
                                                    .txtFillPink900
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCircleBorder20,
                                                ),
                                                child: Text(
                                                  "Pending Rent",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12WhiteA700,
                                                ),
                                              ),
                                              Container(
                                                width: getHorizontalSize(
                                                  104,
                                                ),
                                                padding: getPadding(
                                                  left: 9,
                                                  top: 11,
                                                  right: 9,
                                                  bottom: 11,
                                                ),
                                                decoration: AppDecoration
                                                    .txtOutlineGray40001
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCircleBorder20,
                                                ),
                                                child: Text(
                                                  "Advance Rent",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular13Black90001,
                                                ),
                                              ),
                                              Container(
                                                width: getHorizontalSize(
                                                  76,
                                                ),
                                                padding: getPadding(
                                                  left: 19,
                                                  top: 11,
                                                  right: 19,
                                                  bottom: 11,
                                                ),
                                                decoration: AppDecoration
                                                    .txtOutlineGray40001
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCircleBorder20,
                                                ),
                                                child: Text(
                                                  "None",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular13Black90001,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: pendingrentController,
                                          hintText: "Pending Rent",
                                          margin: getMargin(
                                            left: 2,
                                            top: 22,
                                            right: 4,
                                          ),
                                          textInputAction: TextInputAction.done,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: getMargin(
                                      left: 21,
                                    ),
                                    padding: getPadding(
                                      left: 26,
                                      top: 8,
                                      right: 26,
                                      bottom: 8,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray3002.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder18,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "RENT DETAIL",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterBold16WhiteA700,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgPrinter,
                                  height: getVerticalSize(
                                    20,
                                  ),
                                  width: getHorizontalSize(
                                    18,
                                  ),
                                  alignment: Alignment.topLeft,
                                  margin: getMargin(
                                    left: 3,
                                    top: 2,
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
                              top: 45,
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
