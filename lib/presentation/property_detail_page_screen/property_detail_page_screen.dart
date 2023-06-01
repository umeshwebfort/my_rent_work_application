import '../property_detail_page_screen/widgets/gridflats_item_widget.dart';
import '../property_detail_page_screen/widgets/listmanone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/dashboard_screen_container_page/dashboard_screen_container_page.dart';
import 'package:my_rent_work_application/widgets/custom_bottom_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_drop_down.dart';

class PropertyDetailPageScreen extends StatelessWidget {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 54,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: Text(
                        "Property Status",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular18,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        5,
                      ),
                      width: getHorizontalSize(
                        87,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.red700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  1181,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 15,
                ),
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
                                1162,
                              ),
                              width: double.maxFinite,
                              margin: getMargin(
                                top: 18,
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
                          left: 12,
                          top: 40,
                          right: 15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    bottom: 5,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shanti Villa",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16,
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        148,
                                      ),
                                      margin: getMargin(
                                        left: 2,
                                      ),
                                      child: Text(
                                        "Pocket 6, Sector 9, Rohini, \nDelhi, India",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                  ],
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    30,
                                  ),
                                  width: getHorizontalSize(
                                    117,
                                  ),
                                  text: "Maintenance",
                                  margin: getMargin(
                                    top: 9,
                                    bottom: 13,
                                  ),
                                  fontStyle:
                                      ButtonFontStyle.InterRegular16Gray100,
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: getPadding(
                                  top: 22,
                                ),
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: getVerticalSize(
                                      236,
                                    ),
                                    crossAxisCount: 2,
                                    mainAxisSpacing: getHorizontalSize(
                                      11,
                                    ),
                                    crossAxisSpacing: getHorizontalSize(
                                      11,
                                    ),
                                  ),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return GridflatsItemWidget();
                                  },
                                ),
                              ),
                            ),
                            CustomDropDown(
                              focusNode: FocusNode(),
                              icon: Container(
                                margin: getMargin(
                                  left: 30,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgFilteralt,
                                ),
                              ),
                              hintText: "Search tenant name or room no...",
                              margin: getMargin(
                                top: 29,
                              ),
                              variant: DropDownVariant.None,
                              items: dropdownItemList,
                              prefix: Container(
                                margin: getMargin(
                                  right: 30,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgPictureaspdf,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                maxHeight: getVerticalSize(
                                  31,
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            Padding(
                              padding: getPadding(
                                left: 3,
                                top: 25,
                                right: 3,
                              ),
                              child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return Padding(
                                    padding: getPadding(
                                      top: 20.0,
                                      bottom: 20.0,
                                    ),
                                    child: SizedBox(
                                      width: getHorizontalSize(
                                        320,
                                      ),
                                      child: Divider(
                                        height: getVerticalSize(
                                          1,
                                        ),
                                        thickness: getVerticalSize(
                                          1,
                                        ),
                                        color: ColorConstant.gray40001,
                                      ),
                                    ),
                                  );
                                },
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return ListmanoneItemWidget();
                                },
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.gray40001,
                                indent: getHorizontalSize(
                                  9,
                                ),
                                endIndent: getHorizontalSize(
                                  4,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 14,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBulding1,
                                    height: getVerticalSize(
                                      36,
                                    ),
                                    width: getHorizontalSize(
                                      40,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      bottom: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "To-let",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold16,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 3,
                                          ),
                                          child: Text(
                                            "Flat no. : 101",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  CustomButton(
                                    height: getVerticalSize(
                                      30,
                                    ),
                                    width: getHorizontalSize(
                                      117,
                                    ),
                                    text: "Add Tenant",
                                    margin: getMargin(
                                      top: 4,
                                      bottom: 2,
                                    ),
                                    fontStyle:
                                        ButtonFontStyle.InterRegular16Gray100,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: CustomBottomBar(
        //   onChanged: (BottomBarEnum type) {
        //     Navigator.pushNamed(
        //         navigatorKey.currentContext!, getCurrentRoute(type));
        //   },
        // ),
      ),
    );
  }

  //Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.dashboardScreenContainerPage;
  //     case BottomBarEnum.Add:
  //       return "/";
  //     case BottomBarEnum.Access:
  //       return "/";
  //     case BottomBarEnum.Chat:
  //       return "/";
  //     default:
  //       return "/";
  //   }
  // }

//   //Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.dashboardScreenContainerPage:
//         return DashboardScreenContainerPage();
//       default:
//         return DefaultWidget();
//     }
//   }
}
