import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_drop_down.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

class EditProfileScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            text: "Edit Profile",
            margin: getMargin(
              left: 15,
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
                        top: 53,
                        right: 11,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 9,
                            ),
                            child: Text(
                              "Upload User Photo",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
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
                            hintText: "Name",
                            margin: getMargin(
                              top: 35,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: ageController,
                                    hintText: "Age",
                                    margin: getMargin(
                                      right: 4,
                                    ),
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                                Expanded(
                                  child: CustomDropDown(
                                    focusNode: FocusNode(),
                                    icon: Container(
                                      margin: getMargin(
                                        left: 30,
                                        right: 7,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown,
                                      ),
                                    ),
                                    hintText: "Sex",
                                    margin: getMargin(
                                      left: 4,
                                    ),
                                    padding: DropDownPadding.PaddingT8,
                                    fontStyle: DropDownFontStyle.InterRegular16,
                                    items: dropdownItemList,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              38,
                            ),
                            width: getHorizontalSize(
                              121,
                            ),
                            text: "Save",
                            margin: getMargin(
                              left: 99,
                              top: 52,
                            ),
                            shape: ButtonShape.CircleBorder20,
                            padding: ButtonPadding.PaddingAll9,
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
