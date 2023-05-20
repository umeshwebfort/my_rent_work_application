import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/dashboard_screen_container_page/dashboard_screen_container_page.dart';
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
        return "/";
      case BottomBarEnum.Access:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardScreenContainerPage:
        return DashboardScreenContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
