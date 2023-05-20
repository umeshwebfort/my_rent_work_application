import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class PermissionsBottomsheet extends StatelessWidget {
  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

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
              left: 17,
              top: 25,
              right: 17,
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
                  child: Container(
                    margin: getMargin(
                      left: 4,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 26,
                      right: 16,
                      bottom: 26,
                    ),
                    decoration: AppDecoration.outlineGray4001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "View Only",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14,
                                ),
                              ),
                              CustomSwitch(
                                margin: getMargin(
                                  left: 175,
                                ),
                                value: isSelectedSwitch,
                                onChanged: (value) {
                                  isSelectedSwitch = value;
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 10,
                            right: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "View Add Tenant Only",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14,
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  26,
                                ),
                                width: getHorizontalSize(
                                  43,
                                ),
                                margin: getMargin(
                                  left: 94,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 6,
                                        ),
                                        child: Text(
                                          "No",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular14WhiteA700,
                                        ),
                                      ),
                                    ),
                                    CustomSwitch(
                                      alignment: Alignment.bottomCenter,
                                      value: isSelectedSwitch1,
                                      onChanged: (value) {
                                        isSelectedSwitch1 = value;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Full Control",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14,
                                ),
                              ),
                              CustomSwitch(
                                margin: getMargin(
                                  left: 168,
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
                            top: 117,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                height: getVerticalSize(
                                  32,
                                ),
                                width: getHorizontalSize(
                                  135,
                                ),
                                text: "Save & Add New",
                                padding: ButtonPadding.PaddingAll9,
                                fontStyle: ButtonFontStyle.InterRegular14,
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  32,
                                ),
                                width: getHorizontalSize(
                                  135,
                                ),
                                text: "Save & Exit",
                                margin: getMargin(
                                  left: 20,
                                ),
                                padding: ButtonPadding.PaddingAll9,
                                fontStyle: ButtonFontStyle.InterRegular14,
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
                  text: "Permission",
                  margin: getMargin(
                    left: 23,
                  ),
                  variant: ButtonVariant.OutlineGray300,
                  padding: ButtonPadding.PaddingAll9,
                  fontStyle: ButtonFontStyle.InterRegular14,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
