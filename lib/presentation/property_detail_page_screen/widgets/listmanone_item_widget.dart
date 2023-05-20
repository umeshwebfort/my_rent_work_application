import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';

// ignore: must_be_immutable
class ListmanoneItemWidget extends StatelessWidget {
  ListmanoneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
            bottom: 12,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 8,
            bottom: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Vikas",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold16,
              ),
              Text(
                "Flat no. : 101",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular12,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "ID-ADV - ",
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
                      text: "Verified",
                      style: TextStyle(
                        color: ColorConstant.green900,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular12Pink900,
            ),
            Text(
              "₹ 2500",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterBold19,
            ),
            Text(
              "Due date: 10-05-2023",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular12,
            ),
          ],
        ),
      ],
    );
  }
}
