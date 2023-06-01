import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/dashboard_screen_container_page/dashboard_screen_container_page.dart';
import 'package:my_rent_work_application/presentation/sign_up_screen_done_screen/sign_up_screen_done_screen.dart';

import '../../apis/apis.dart';

class SignUpScreenDoneOneScreen extends StatefulWidget {
  @override
  State<SignUpScreenDoneOneScreen> createState() =>
      _SignUpScreenDoneOneScreenState();
}

class _SignUpScreenDoneOneScreenState extends State<SignUpScreenDoneOneScreen> {
  @override
  void initState() {
    super.initState();
    print("\n\nInside the splash screen initState................");

    Future.delayed(const Duration(milliseconds: 1500), () {
      //before going to home page we need to return to the normal system UI mode
      //i.e., exit the full screen mode
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

      print("\n\nInside the splash screen Future................");

      //set colors of upper status bar, or bottom navogation bar, etc using SystemChrome
      /*
      // SystemChrome.setSystemUIOverlayStyle(
      //   SystemUiOverlayStyle(
      //statusBarColor is the color of the bar displaying percentage in the device
      //     statusBarColor: Colors.cyanAccent,
      //     systemNavigationBarColor: Colors.purple.shade200,
      //     systemNavigationBarDividerColor: Colors.lightGreenAccent.shade700,
      //     statusBarBrightness: Brightness.dark,
      //   ),
      // );
        */

      //Navigate to home page if user is already logged in
      if (APIs.auth.currentUser != null) {
        print(
            "\nUser(alreadyLoggedIn) =============> ${APIs.auth.currentUser}");
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => DashboardScreenContainerPage()));
      }
      //Navigate to login screen if user is signed out
      else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SignUpScreenDoneScreen()));
      }
      print("\n\nFuture.delayed over...............");
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 60,
            right: 60,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMyrentworklogo,
                height: getVerticalSize(
                  218,
                ),
                width: getHorizontalSize(
                  239,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
