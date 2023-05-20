import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillPink900 => BoxDecoration(
        color: ColorConstant.pink900,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: ColorConstant.gray10002,
      );
  static BoxDecoration get txtOutlineGray40001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray40001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineGray5002 => BoxDecoration(
        color: ColorConstant.red5001,
        border: Border.all(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray5001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray3002 => BoxDecoration(
        color: ColorConstant.red700,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineGray500 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: ColorConstant.red50,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        color: ColorConstant.gray100,
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray4001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillRed700 => BoxDecoration(
        color: ColorConstant.red700,
      );
  static BoxDecoration get txtFillPink900 => BoxDecoration(
        color: ColorConstant.pink900,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL251 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        25,
      ),
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtCircleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius customBorderTL15 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
  );

  static BorderRadius customBorderTL25 = BorderRadius.only(
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
  );

  static BorderRadius txtCircleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder18 = BorderRadius.circular(
    getHorizontalSize(
      18,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
