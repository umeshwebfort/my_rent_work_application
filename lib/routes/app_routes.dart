import 'package:flutter/material.dart';
import 'package:my_rent_work_application/presentation/sign_up_screen_done_one_screen/sign_up_screen_done_one_screen.dart';
import 'package:my_rent_work_application/presentation/sign_up_screen_done_screen/sign_up_screen_done_screen.dart';
import 'package:my_rent_work_application/presentation/otp_screen_done_screen/otp_screen_done_screen.dart';
import 'package:my_rent_work_application/presentation/dashboard_screen_container1_screen/dashboard_screen_container1_screen.dart';
import 'package:my_rent_work_application/presentation/add_building_property_screen/add_building_property_screen.dart';
import 'package:my_rent_work_application/presentation/property_detail_page_screen/property_detail_page_screen.dart';
import 'package:my_rent_work_application/presentation/property_detail_page_filter_screen/property_detail_page_filter_screen.dart';
import 'package:my_rent_work_application/presentation/add_tenant_screen/add_tenant_screen.dart';
import 'package:my_rent_work_application/presentation/tenant_detail_screen_two_screen/tenant_detail_screen_two_screen.dart';
import 'package:my_rent_work_application/presentation/tenant_detail_screen_one_screen/tenant_detail_screen_one_screen.dart';
import 'package:my_rent_work_application/presentation/payment_screen/payment_screen.dart';
import 'package:my_rent_work_application/presentation/payment_screen_one_screen/payment_screen_one_screen.dart';
import 'package:my_rent_work_application/presentation/tenant_discontinue_screen/tenant_discontinue_screen.dart';
import 'package:my_rent_work_application/presentation/tenant_history_screen/tenant_history_screen.dart';
import 'package:my_rent_work_application/presentation/access_control_screen/access_control_screen.dart';
import 'package:my_rent_work_application/presentation/select_person_screen/select_person_screen.dart';
import 'package:my_rent_work_application/presentation/add_person_screen/add_person_screen.dart';
import 'package:my_rent_work_application/presentation/permissions_one_screen/permissions_one_screen.dart';
import 'package:my_rent_work_application/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:my_rent_work_application/presentation/chat_screen/chat_screen.dart';
import 'package:my_rent_work_application/presentation/delete_account_screen/delete_account_screen.dart';
import 'package:my_rent_work_application/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:my_rent_work_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpScreenDoneOneScreen =
      '/sign_up_screen_done_one_screen';

  static const String signUpScreenDoneScreen = '/sign_up_screen_done_screen';

  static const String otpScreenDoneScreen = '/otp_screen_done_screen';

  static const String dashboardScreenContainerPage =
      '/dashboard_screen_container_page';

  static const String dashboardScreenContainer1Screen =
      '/dashboard_screen_container1_screen';

  static const String addBuildingPropertyScreen =
      '/add_building_property_screen';

  static const String propertyDetailPageScreen = '/property_detail_page_screen';

  static const String propertyDetailPageFilterScreen =
      '/property_detail_page_filter_screen';

  static const String addTenantScreen = '/add_tenant_screen';

  static const String tenantDetailScreenTwoScreen =
      '/tenant_detail_screen_two_screen';

  static const String tenantDetailScreenOneScreen =
      '/tenant_detail_screen_one_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentScreenOneScreen = '/payment_screen_one_screen';

  static const String tenantDiscontinueScreen = '/tenant_discontinue_screen';

  static const String tenantHistoryScreen = '/tenant_history_screen';

  static const String accessControlScreen = '/access_control_screen';

  static const String selectPersonScreen = '/select_person_screen';

  static const String addPersonScreen = '/add_person_screen';

  static const String permissionsOneScreen = '/permissions_one_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String chatScreen = '/chat_screen';

  static const String deleteAccountScreen = '/delete_account_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpScreenDoneOneScreen: (context) => SignUpScreenDoneOneScreen(),
    signUpScreenDoneScreen: (context) => SignUpScreenDoneScreen(),
    otpScreenDoneScreen: (context) => OtpScreenDoneScreen(
          text: "hello",
        ),
    dashboardScreenContainer1Screen: (context) =>
        DashboardScreenContainer1Screen(),
    addBuildingPropertyScreen: (context) => AddBuildingPropertyScreen(),
    propertyDetailPageScreen: (context) => PropertyDetailPageScreen(),
    propertyDetailPageFilterScreen: (context) =>
        PropertyDetailPageFilterScreen(),
    addTenantScreen: (context) => AddTenantScreen(),
    tenantDetailScreenTwoScreen: (context) => TenantDetailScreenTwoScreen(),
    tenantDetailScreenOneScreen: (context) => TenantDetailScreenOneScreen(),
    paymentScreen: (context) => PaymentScreen(),
    paymentScreenOneScreen: (context) => PaymentScreenOneScreen(),
    tenantDiscontinueScreen: (context) => TenantDiscontinueScreen(),
    tenantHistoryScreen: (context) => TenantHistoryScreen(),
    accessControlScreen: (context) => AccessControlScreen(),
    selectPersonScreen: (context) => SelectPersonScreen(),
    addPersonScreen: (context) => AddPersonScreen(),
    permissionsOneScreen: (context) => PermissionsOneScreen(),
    chatOneScreen: (context) => ChatOneScreen(),
    chatScreen: (context) => ChatScreen(),
    deleteAccountScreen: (context) => DeleteAccountScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
