import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/access_control_screen/access_control_screen.dart';
import 'package:my_rent_work_application/presentation/add_building_property_screen/add_building_property_screen.dart';
import 'package:my_rent_work_application/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:my_rent_work_application/presentation/chat_screen/chat_screen.dart';
import 'package:my_rent_work_application/presentation/dashboard_screen_container_page/dashboard_screen_container_page.dart';
import 'package:my_rent_work_application/presentation/property_detail_page_filter_screen/property_detail_page_filter_screen.dart';
import 'package:my_rent_work_application/presentation/select_person_screen/select_person_screen.dart';
import 'package:my_rent_work_application/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class DashboardScreenContainer1Screen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.pink900,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.dashboardScreenContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardScreenContainerPage;
      case BottomBarEnum.Add:
        return AppRoutes.addBuildingPropertyScreen;
      case BottomBarEnum.Access:
        return AppRoutes.accessControlScreen;
      case BottomBarEnum.Chat:
        return AppRoutes.chatOneScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardScreenContainerPage:
        return DashboardScreenContainerPage();
      case AppRoutes.addBuildingPropertyScreen:
        return AddBuildingPropertyScreen();
      case AppRoutes.accessControlScreen:
        return AccessControlScreen();
      case AppRoutes.chatOneScreen:
        return ChatOneScreen();
      case AppRoutes.selectPersonScreen:
        return SelectPersonScreen();
      case AppRoutes.chatScreen:
        return ChatScreen();
      case AppRoutes.propertyDetailPageFilterScreen:
        return PropertyDetailPageFilterScreen();

      default:
        return DefaultWidget();
    }
  }
}
