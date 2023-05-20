import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

// ignore: must_be_immutable
class AccessControlItemWidget extends StatelessWidget {
  AccessControlItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMan1,
                  height: getSize(
                    40,
                  ),
                  width: getSize(
                    40,
                  ),
                  margin: getMargin(
                    bottom: 11,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold16,
                      ),
                      Text(
                        "+91 - 9999956254",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular12,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "Permission (View Only)",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold12Green900,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Text(
                  "Shanti Villa",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold16,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  top: 2,
                  right: 34,
                ),
                child: Text(
                  "Pocket 6, Sector...",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 49,
                top: 2,
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
        CustomButton(
          height: getVerticalSize(
            30,
          ),
          width: getHorizontalSize(
            78,
          ),
          text: "Edit",
          margin: getMargin(
            top: 48,
            bottom: 43,
          ),
        ),
      ],
    );
  }
}
