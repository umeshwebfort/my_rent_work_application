import '../chat_one_screen/widgets/chat_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';

class ChatOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
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
              top: 15,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "Chat",
            margin: getMargin(
              left: 11,
            ),
          ),
        ),
        body: Container(
          height: getVerticalSize(
            874,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
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
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 21,
                    top: 47,
                    right: 18,
                    bottom: 728,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          19,
                        ),
                      );
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ChatOneItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
