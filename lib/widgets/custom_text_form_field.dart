import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.InterRegular14:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.InterRegular16:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.InterRegular16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.InterRegular14Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.InterRegular13:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.InterRegular14Gray500:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case TextFormFieldShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineGray500:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray500,
          ),
        );
      case TextFormFieldVariant.FillRed700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineBluegray100:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.blueGray100,
          ),
        );
      case TextFormFieldVariant.OutlineGray400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray400_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineGray40001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray40001,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineGray500:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray500,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBluegray100_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blueGray100,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineGray400_2:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blueGray100,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillRed700:
        return ColorConstant.red700;
      case TextFormFieldVariant.OutlineGray400:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineGray400_1:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineGray40001:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineGray500:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineBluegray100_1:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineGray400_2:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineGray500:
        return false;
      case TextFormFieldVariant.FillRed700:
        return true;
      case TextFormFieldVariant.UnderLineBluegray100:
        return false;
      case TextFormFieldVariant.OutlineGray400:
        return true;
      case TextFormFieldVariant.OutlineGray400_1:
        return true;
      case TextFormFieldVariant.OutlineGray40001:
        return true;
      case TextFormFieldVariant.OutlineGray500:
        return true;
      case TextFormFieldVariant.OutlineBluegray100_1:
        return true;
      case TextFormFieldVariant.OutlineGray400_2:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT8:
        return getPadding(
          left: 8,
          top: 8,
          bottom: 8,
        );
      case TextFormFieldPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      case TextFormFieldPadding.PaddingAll1:
        return getPadding(
          all: 1,
        );
      case TextFormFieldPadding.PaddingT7:
        return getPadding(
          top: 7,
          right: 7,
          bottom: 7,
        );
      case TextFormFieldPadding.PaddingT21:
        return getPadding(
          left: 21,
          top: 21,
          bottom: 21,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder7,
  CircleBorder15,
  CircleBorder12,
}

enum TextFormFieldPadding {
  PaddingAll8,
  PaddingT8,
  PaddingAll5,
  PaddingAll1,
  PaddingT7,
  PaddingT21,
}

enum TextFormFieldVariant {
  None,
  OutlineBluegray100,
  UnderLineGray500,
  FillRed700,
  UnderLineBluegray100,
  OutlineGray400,
  OutlineGray400_1,
  OutlineGray40001,
  OutlineGray500,
  OutlineBluegray100_1,
  OutlineGray400_2,
}

enum TextFormFieldFontStyle {
  InterRegular16Gray600,
  InterRegular14,
  InterRegular16,
  InterRegular16Black900,
  InterRegular14Gray900,
  InterRegular13,
  InterRegular14Gray500,
}
