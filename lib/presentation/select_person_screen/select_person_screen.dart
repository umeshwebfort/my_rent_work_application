import '../select_person_screen/widgets/select_person_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

class SelectPersonScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

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
          centerTitle: true,
          title: AppbarTitle(
            text: "Select Person - Access Control",
          ),
        ),
        body: Container(
          height: getVerticalSize(
            635,
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
                          609,
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
                    left: 19,
                    top: 29,
                    right: 18,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 3,
                          right: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                                bottom: 3,
                              ),
                              child: Text(
                                "Contact list",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold18,
                              ),
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                30,
                              ),
                              width: getHorizontalSize(
                                118,
                              ),
                              text: "Add New",
                              padding: ButtonPadding.PaddingT5,
                              prefixWidget: Container(
                                margin: getMargin(
                                  right: 2,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgAddWhiteA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: searchController,
                        hintText: "Search...",
                        margin: getMargin(
                          top: 16,
                        ),
                        variant: TextFormFieldVariant.OutlineBluegray100_1,
                        shape: TextFormFieldShape.CircleBorder12,
                        padding: TextFormFieldPadding.PaddingT7,
                        fontStyle: TextFormFieldFontStyle.InterRegular14Gray500,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: getMargin(
                            left: 6,
                            top: 4,
                            right: 8,
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
                      ),
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            left: 2,
                            top: 26,
                            right: 1,
                          ),
                          child: ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return Padding(
                                padding: getPadding(
                                  top: 14.5,
                                  bottom: 14.5,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    322,
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
                              );
                            },
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return SelectPersonItemWidget();
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 14,
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
    );
  }
}
