import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/presentation/otp_screen_done_screen/otp_screen_done_screen.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_phone_number.dart';

class SignUpScreenDoneScreen extends StatefulWidget {
  static String verify = "";

  const SignUpScreenDoneScreen({Key? key}) : super(key: key);
  @override
  State<SignUpScreenDoneScreen> createState() => _SignUpScreenDoneScreenState();
}

class _SignUpScreenDoneScreenState extends State<SignUpScreenDoneScreen> {
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode("91");
  TextEditingController countryController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  var phone = "";
  final String text = "";
  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 47,
                    top: 18,
                  ),
                  child: Text(
                    "Enter Mobile Number",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular25,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      "We are using phone number for verification",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular16,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    642,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 37,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            628,
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
                          margin: getMargin(
                            top: 14,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 18,
                            right: 26,
                            bottom: 18,
                          ),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL25,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                margin: getMargin(
                                  left: 72,
                                ),
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                  border: Border.all(
                                    color: ColorConstant.gray40001,
                                    width: getHorizontalSize(
                                      1,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 55,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          SizedBox(
                                            width: 40,
                                            child: CountryPickerUtils
                                                .getDefaultFlagImage(
                                              selectedCountry,
                                            ),
                                          ),
                                          Text(
                                            "|",
                                            style: TextStyle(
                                                fontSize: 33,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                              child: TextField(
                                            onChanged: (value) {
                                              phone = value;
                                            },
                                            keyboardType: TextInputType.phone,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Phone",
                                            ),
                                          ))
                                        ],
                                      ),
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
                                  text: "Send OTP",
                                  margin: getMargin(
                                    top: 49,
                                    bottom: 179,
                                  ),
                                  shape: ButtonShape.CircleBorder20,
                                  padding: ButtonPadding.PaddingAll9,
                                  fontStyle: ButtonFontStyle.InterRegular18,
                                  alignment: Alignment.center,
                                  onTap: () async {
                                    print("OTP");
                                    await FirebaseAuth.instance
                                        .verifyPhoneNumber(
                                      phoneNumber:
                                          '${countryController.text + phone}',
                                      verificationCompleted:
                                          (PhoneAuthCredential credential) {},
                                      verificationFailed:
                                          (FirebaseAuthException e) {},
                                      codeSent: (String verificationId,
                                          int? resendToken) {
                                        print(
                                            "\n Start ${SignUpScreenDoneScreen.verify} 239 line no.Umesh Bind Testing");
                                        SignUpScreenDoneScreen.verify =
                                            verificationId;
                                        // OtpScreenDoneScreen("phone":countryController.text + phone);
                                      },
                                      codeAutoRetrievalTimeout:
                                          (String verificationId) {},
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            OtpScreenDoneScreen(
                                          text: "hello",
                                        ),
                                      ),
                                    );
                                  }),
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
      ),
    );
  }
}
