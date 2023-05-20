import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:my_rent_work_application/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(23),
        width: getHorizontalSize(43),
        toggleSize: 17,
        borderRadius: getHorizontalSize(
          11.00,
        ),
        activeColor: ColorConstant.pink900,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.gray200,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
