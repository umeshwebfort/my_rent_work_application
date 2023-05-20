import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';

// ignore: must_be_immutable
class GridflatsItemWidget extends StatelessWidget {
  GridflatsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomButton(
            height: getVerticalSize(
              30,
            ),
            width: getHorizontalSize(
              161,
            ),
            text: "Flats Status",
            variant: ButtonVariant.FillRed700,
            shape: ButtonShape.CustomBorderTL15,
            fontStyle: ButtonFontStyle.InterBold14,
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 2,
                  ),
                  child: Text(
                    "Total",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 85,
                    top: 2,
                  ),
                  child: Text(
                    "05",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold14Cyan900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rented",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
                Padding(
                  padding: getPadding(
                    left: 69,
                  ),
                  child: Text(
                    "04",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold14Green900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "To-Let",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
                Padding(
                  padding: getPadding(
                    left: 71,
                  ),
                  child: Text(
                    "04",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 15,
            ),
            child: SizedBox(
              width: getHorizontalSize(
                139,
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
          Padding(
            padding: getPadding(
              top: 6,
            ),
            child: Text(
              "Rent Detail",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterBold14Black900,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 2,
                  ),
                  child: Text(
                    "Total",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 43,
                    top: 2,
                  ),
                  child: Text(
                    "₹ 100000",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold14Cyan900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Received",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
                Padding(
                  padding: getPadding(
                    left: 14,
                  ),
                  child: Text(
                    "₹ 100000",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold14Green900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "Pending",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    bottom: 1,
                  ),
                  child: Text(
                    "₹ 100000",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
