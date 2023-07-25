import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reeroute_vendor/BottomNavBar/bottom_nav_bar.dart';
import 'package:reeroute_vendor/components/buttons.dart';

import '../theme.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({super.key});

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  File? _image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this._image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to pick an image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/frame.svg'),
        titleSpacing: 28,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: ContinueBtn(
        text: 'Continue',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavBar(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 27, right: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 55),
              Text(
                "Enter your bank details",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'rubik',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.475,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 55),
              Text(
                "Select Bank*",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'rubik',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.475,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                width: 358,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0x26000000),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          showCursor: false,
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            color: primaryColor,
                          ),
                          decoration: InputDecoration(
                            hintText: "State Bank of India",
                            hintStyle: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              color: Color(0x332a4f6d),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset('assets/down_arrow.svg')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "Enter Account No.*",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'rubik',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.475,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                width: 358,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0x26000000),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    showCursor: false,
                    style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: primaryColor,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter bank account number",
                      hintStyle: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        color: Color(0x332a4f6d),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "Enter IFSC Code",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'rubik',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.475,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                width: 358,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0x26000000),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    showCursor: false,
                    style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: primaryColor,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter your bank ifsc code",
                      hintStyle: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        color: Color(0x332a4f6d),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "Upload Cancel cheque*",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'rubik',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.475,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    style: BorderStyle.solid,
                    color: secondaryColor,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    pickImage(ImageSource.gallery);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Upload Cancel cheque",
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 18,
                          color: secondaryColor,
                          letterSpacing: 0.475,
                        ),
                      ),
                      const SizedBox(width: 20),
                      SvgPicture.asset('assets/upload.svg'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 160),
            ],
          ),
        ),
      ),
    );
  }
}
