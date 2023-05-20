import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/custom_switch.dart';

// ignore: must_be_immutable
class PermissionsOneItemWidget extends StatelessWidget {
  PermissionsOneItemWidget();

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgBulding1,
          height: getVerticalSize(
            46,
          ),
          width: getHorizontalSize(
            50,
          ),
          margin: getMargin(
            top: 1,
            bottom: 3,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Shanti Villa",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold16,
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 1,
                ),
                child: Text(
                  "Pocket 6, Sector...",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Flat no: ",
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
                        text: "104",
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomSwitch(
          margin: getMargin(
            top: 12,
            bottom: 15,
          ),
          value: isSelectedSwitch,
          onChanged: (value) {
            isSelectedSwitch = value;
          },
        ),
      ],
    );
  }
}
