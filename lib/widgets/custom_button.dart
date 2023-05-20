import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT5:
        return getPadding(
          top: 5,
          right: 5,
          bottom: 5,
        );
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return ColorConstant.red700;
      case ButtonVariant.OutlineGray300_1:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillRed700:
        return ColorConstant.red700;
      case ButtonVariant.OutlineGray40001:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray500:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.pink900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return BorderSide(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray300_1:
        return BorderSide(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray40001:
        return BorderSide(
          color: ColorConstant.gray40001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray500:
        return BorderSide(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillPink900:
      case ButtonVariant.FillRed700:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case ButtonShape.CustomBorderTL15:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterRegular18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterBold16:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterRegular16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular16Gray100:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterRegular16Black90001:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder15,
  CircleBorder20,
  RoundedBorder5,
  CustomBorderTL15,
  CircleBorder12,
}

enum ButtonPadding {
  PaddingAll5,
  PaddingT5,
  PaddingAll9,
}

enum ButtonVariant {
  FillPink900,
  OutlineGray300,
  OutlineGray300_1,
  FillRed700,
  OutlineGray40001,
  OutlineGray500,
}

enum ButtonFontStyle {
  InterRegular16WhiteA700,
  InterRegular18,
  InterBold16,
  InterRegular16,
  InterRegular16Gray100,
  InterBold14,
  InterRegular16Black90001,
  InterRegular14,
}
