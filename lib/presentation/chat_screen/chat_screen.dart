import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController messageController = TextEditingController();

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
          title: Padding(
            padding: getPadding(
              left: 11,
            ),
            child: Row(
              children: [
                AppbarImage(
                  height: getSize(
                    40,
                  ),
                  width: getSize(
                    40,
                  ),
                  imagePath: ImageConstant.imgMan1,
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                    bottom: 2,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            right: 63,
                          ),
                          child: Text(
                            "Vikas",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold16WhiteA700,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "+91 - 9999956254",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular12WhiteA700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                alignment: Alignment.bottomCenter,
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
                  CustomTextFormField(
                    width: double.maxFinite,
                    focusNode: FocusNode(),
                    controller: messageController,
                    hintText: "Type your message",
                    variant: TextFormFieldVariant.OutlineGray400_2,
                    padding: TextFormFieldPadding.PaddingT21,
                    fontStyle: TextFormFieldFontStyle.InterRegular16Black900,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.bottomCenter,
                    suffix: Container(
                      margin: getMargin(
                        left: 12,
                        top: 22,
                        right: 22,
                        bottom: 17,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSend,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        63,
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
