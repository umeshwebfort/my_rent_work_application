import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/sign_up_screen_done_screen/sign_up_screen_done_screen.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';
import 'package:pinput/pinput.dart';

class OtpScreenDoneScreen extends StatefulWidget {
  const OtpScreenDoneScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<OtpScreenDoneScreen> createState() => _OtpScreenDoneScreenState();
}

class _OtpScreenDoneScreenState extends State<OtpScreenDoneScreen> {
  TextEditingController enterotpController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  String smsCode = 'xxxx';

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Text(
                  "OTP Verification",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular25,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  "Check your phone for SMS Code",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular16,
                ),
              ),
              Container(
                height: getVerticalSize(
                  643,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 35,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          629,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: ColorConstant.red700,
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
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: getPadding(
                          left: 35,
                          top: 19,
                          right: 35,
                          bottom: 19,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMyrentworklogo,
                              height: getVerticalSize(
                                138,
                              ),
                              width: getHorizontalSize(
                                152,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 93,
                              ),
                              child: Text(
                                " +91 - 99999 55555",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular17,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(
                                      20,
                                    ),
                                    width: getSize(
                                      20,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 3,
                                    ),
                                    child: Text(
                                      "Change number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14Pink900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinput(
                              length: 6,
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: focusedPinTheme,
                              submittedPinTheme: submittedPinTheme,
                              showCursor: true,
                              onChanged: (value) {
                                smsCode = value;
                              },
                              onCompleted: (pin) => print(pin),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Resend OTP in 21 sec...",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
                                  ),
                                  // InkWell(
                                  //   onTap: () async {
                                  //     print("OTP");
                                  //     await FirebaseAuth.instance
                                  //         .verifyPhoneNumber(
                                  //       phoneNumber:
                                  //           // '${this.phone}',
                                  //       verificationCompleted:
                                  //           (PhoneAuthCredential credential) {},
                                  //       verificationFailed:
                                  //           (FirebaseAuthException e) {},
                                  //       codeSent: (String verificationId,
                                  //           int? resendToken) {
                                  //         SignUpScreenDoneScreen.verify =
                                  //             verificationId;
                                  //         print(verificationId);
                                  //       },
                                  //       codeAutoRetrievalTimeout:
                                  //           (String verificationId) {},
                                  //     );
                                  //   },
                                  // ),
                                  Text(
                                    "Re-send OTP",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14Pink900,
                                  ),
                                ],
                              ),
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                40,
                              ),
                              width: getHorizontalSize(
                                165,
                              ),
                              text: "Verify Me",
                              margin: getMargin(
                                top: 52,
                                bottom: 137,
                              ),
                              shape: ButtonShape.CircleBorder20,
                              padding: ButtonPadding.PaddingAll9,
                              fontStyle: ButtonFontStyle.InterRegular18,
                              onTap: () async {
                                print(smsCode);
                                try {
                                  PhoneAuthCredential credential =
                                      PhoneAuthProvider.credential(
                                          verificationId:
                                              SignUpScreenDoneScreen.verify,
                                          smsCode: smsCode);

                                  // Sign the user in (or link) with the credential
                                  await auth.signInWithCredential(credential);
                                  Navigator.pushNamedAndRemoveUntil(
                                      context,
                                      "dashboard_screen_container_page",
                                      (route) => false);
                                } catch (e) {
                                  print("wrong OTP");
                                }
                              },
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
      ),
    );
  }
}
