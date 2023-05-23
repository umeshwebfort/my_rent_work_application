import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_rent_work_application/core/app_export.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_image.dart';
import 'package:my_rent_work_application/widgets/app_bar/appbar_title.dart';
import 'package:my_rent_work_application/widgets/app_bar/custom_app_bar.dart';
import 'package:my_rent_work_application/widgets/custom_button.dart';
import 'package:my_rent_work_application/widgets/custom_switch.dart';
import 'package:my_rent_work_application/widgets/custom_text_form_field.dart';

import '../../widgets/custom_text_field.dart';

class AddBuildingPropertyScreen extends StatefulWidget {
  @override
  State<AddBuildingPropertyScreen> createState() =>
      _AddBuildingPropertyScreenState();
}

class _AddBuildingPropertyScreenState extends State<AddBuildingPropertyScreen> {
  File? _image;

  Future<void> _uploadImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  List<String> indianStates = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
    'Andaman and Nicobar Islands',
    'Chandigarh',
    'Dadra and Nagar Haveli and Daman and Diu',
    'Delhi',
    'Ladakh',
    'Lakshadweep',
    'Puducherry',
  ];
  var val = 0;
  String selectedState = "";

  bool toggleValueForFlats = false;
  bool toggleValueforShops = false;
  bool toggleValueforHalls = false;
  bool toggleValueforPlots = false;

  int numberOfFlats = 0;
  int numberOfShops = 0;
  int numberOfHalls = 0;
  int numberOfPlots = 0;

  TextEditingController rectanglethirteController = TextEditingController();

  TextEditingController _nameController = TextEditingController();

  TextEditingController _AddressController = TextEditingController();

  TextEditingController rectanglefourteController = TextEditingController();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  TextEditingController shopsController = TextEditingController();

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            63,
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
            text: "Add Building / Property",
            margin: getMargin(
              left: 9,
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 2,
            ),
            child: Container(
              decoration: AppDecoration.fillRed700.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 13,
                      ),
                      padding: getPadding(
                        left: 14,
                        top: 31,
                        right: 14,
                        bottom: 31,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL25,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Text(
                              "BUILDING / PROPERTY DETAILS",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                              top: 19,
                            ),
                            child: Expanded(
                              child: CustomTextField(
                                labelText: 'Name',
                                controller: _nameController,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 7,
                              top: 15,
                            ),
                            child: Expanded(
                              child: CustomTextField(
                                labelText: 'Address',
                                controller: _AddressController,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 7,
                              top: 12,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                        ),
                                      ),
                                      Container(
                                        height: 57,
                                        child: DropdownButtonFormField<String>(
                                            value: indianStates[val],
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedState = newValue!;
                                              });
                                            },
                                            items: indianStates.map((state) {
                                              return DropdownMenuItem<String>(
                                                value: state,
                                                child: Text(state),
                                              );
                                            }).toList(),
                                            decoration: InputDecoration(
                                              labelText: 'State',
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                              top: 14,
                            ),
                            child: Text(
                              "Upload Building / Property Image",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
                              top: 3,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext dialogContext) {
                                        return AlertDialog(
                                          title: Text("Choose an option"),
                                          content: SingleChildScrollView(
                                            child: ListBody(
                                              children: [
                                                GestureDetector(
                                                  child: Text("Camera"),
                                                  onTap: () {
                                                    _uploadImage(
                                                        ImageSource.camera);
                                                    Navigator.pop(
                                                        dialogContext);
                                                  },
                                                ),
                                                SizedBox(height: 20),
                                                GestureDetector(
                                                  child: Text("Gallery"),
                                                  onTap: () {
                                                    _uploadImage(
                                                        ImageSource.gallery);
                                                    Navigator.pop(
                                                        dialogContext);
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 37,
                                      horizontal: 10,
                                    ),
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(
                                        color: ColorConstant.gray500,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgCloudupload,
                                        height: getSize(46),
                                        width: getSize(46),
                                        margin: getMargin(top: 1),
                                      ),
                                      Padding(
                                        padding: getPadding(top: 5),
                                        child: Text(
                                          "Drag & drop your image",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterRegular12Gray600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: ColorConstant.gray500,
                                      width: getHorizontalSize(1),
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(140),
                                    width: getHorizontalSize(161),
                                    decoration:
                                        AppDecoration.outlineGray500.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15,
                                    ),
                                    child: Stack(
                                      children: [
                                        if (_image != null)
                                          Positioned.fill(
                                            child: Image.file(
                                              _image!,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        if (_image == null)
                                          Center(
                                            child: Text(
                                              "No image selected",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(left: 3, top: 20),
                            child: Text(
                              "Select Your Building Units",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Black900,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(340),
                            margin: getMargin(left: 5, top: 3, right: 5),
                            child: Text(
                              "Specify the number of flats, shops, and other units in the building to streamline tenant record management.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Gray600,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(450),
                            margin: getMargin(left: 3, top: 5, right: 3),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: getMargin(top: 7),
                                        decoration: AppDecoration
                                            .outlineGray3001
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder15,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Flats',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  Spacer(),
                                                  Switch(
                                                    value: toggleValueForFlats,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        toggleValueForFlats =
                                                            value;
                                                        if (!toggleValueForFlats) {
                                                          numberOfFlats =
                                                              0; // Reset the number of flats when toggle is turned off
                                                        }
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                              if (toggleValueForFlats)
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Number of Flats:',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    Spacer(),
                                                    IconButton(
                                                      icon: Icon(Icons.remove),
                                                      onPressed: () {
                                                        setState(() {
                                                          if (numberOfFlats >
                                                              0) {
                                                            numberOfFlats--;
                                                          }
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      numberOfFlats.toString(),
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.add),
                                                      onPressed: () {
                                                        setState(() {
                                                          numberOfFlats++;
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Shops',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  Spacer(),
                                                  Switch(
                                                    value: toggleValueforShops,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        toggleValueforShops =
                                                            value;
                                                        if (!toggleValueforShops) {
                                                          numberOfShops =
                                                              0; // Reset the number of flats when toggle is turned off
                                                        }
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                              if (toggleValueforShops)
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Number of Shops:',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    Spacer(),
                                                    IconButton(
                                                      icon: Icon(Icons.remove),
                                                      onPressed: () {
                                                        setState(() {
                                                          if (numberOfShops >
                                                              0) {
                                                            numberOfShops--;
                                                          }
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      numberOfShops.toString(),
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.add),
                                                      onPressed: () {
                                                        setState(() {
                                                          numberOfShops++;
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Halls',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  Spacer(),
                                                  Switch(
                                                    value: toggleValueforHalls,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        toggleValueforHalls =
                                                            value;
                                                        if (!toggleValueforHalls) {
                                                          numberOfHalls =
                                                              0; // Reset the number of flats when toggle is turned off
                                                        }
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                              if (toggleValueforHalls)
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Number of Halls:',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    Spacer(),
                                                    IconButton(
                                                      icon: Icon(Icons.remove),
                                                      onPressed: () {
                                                        setState(() {
                                                          if (numberOfHalls >
                                                              0) {
                                                            numberOfHalls--;
                                                          }
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      numberOfHalls.toString(),
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.add),
                                                      onPressed: () {
                                                        setState(() {
                                                          numberOfHalls++;
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Plots',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  Spacer(),
                                                  Switch(
                                                    value: toggleValueforPlots,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        toggleValueforPlots =
                                                            value;
                                                        if (!toggleValueforPlots) {
                                                          numberOfPlots =
                                                              0; // Reset the number of flats when toggle is turned off
                                                        }
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                              if (toggleValueforPlots)
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Number of Plots:',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    Spacer(),
                                                    IconButton(
                                                      icon: Icon(Icons.remove),
                                                      onPressed: () {
                                                        setState(() {
                                                          if (numberOfPlots >
                                                              0) {
                                                            numberOfPlots--;
                                                          }
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      numberOfPlots.toString(),
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.add),
                                                      onPressed: () {
                                                        setState(() {
                                                          numberOfPlots++;
                                                        });
                                                      },
                                                    ),
                                                  ],
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
                          Container(
                            height: getVerticalSize(40),
                            width: getHorizontalSize(150),
                            margin: getMargin(top: 42, bottom: 12, left: 90),
                            decoration: BoxDecoration(
                              color: Colors
                                  .blue, // Set the background color to blue
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust the border radius as needed
                            ),
                            child: CustomButton(
                              height: getVerticalSize(40),
                              width: getHorizontalSize(165),
                              text: "Save",
                              padding: ButtonPadding.PaddingAll9,
                              fontStyle: ButtonFontStyle.InterRegular18,
                              alignment: Alignment.center,
                              onTap: () {
                                // Add your save button functionality here
                                print("Save button tapped");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
