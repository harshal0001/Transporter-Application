import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Drivers/upload_documents.dart';

import '../components/buttons.dart';

class AddDriver extends StatefulWidget {
  const AddDriver({super.key});

  @override
  State<AddDriver> createState() => _AddDriverState();
}

class _AddDriverState extends State<AddDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 86,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 48,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 20, right: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      BackButton(
                                        color: Color(0xff2a4f6d),
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        "Add Driver",
                                        style: TextStyle(
                                          fontFamily: 'rubik',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff2a4f6d),
                                          letterSpacing: 0.643,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 40, left: 23, right: 33),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter your details",
                              style: fontStyle_1(),
                            ),
                            const SizedBox(height: 36),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Take a selfie*",
                                  style: fontStyle_1(),
                                ),
                                SvgPicture.asset('assets/camera.svg'),
                              ],
                            ),
                            const SizedBox(height: 36),
                            Text(
                              "Full Name*",
                              style: fontStyle_1(),
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
                                  style: fontStyle_2(),
                                  decoration: InputDecoration(
                                    hintText: "Enter your full name",
                                    hintStyle: hintFontStyle(),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text("Email Address", style: fontStyle_1()),
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
                                  style: fontStyle_2(),
                                  decoration: InputDecoration(
                                    hintText: "Enter your email address",
                                    hintStyle: hintFontStyle(),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Select Preferred city*",
                                  style: fontStyle_1(),
                                ),
                                SvgPicture.asset('assets/add.svg')
                              ],
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.name,
                                        showCursor: false,
                                        style: fontStyle_2(),
                                        decoration: InputDecoration(
                                          hintText: "Select your current city",
                                          hintStyle: hintFontStyle(),
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
                              "Select No. of fleet*",
                              style: fontStyle_1(),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        showCursor: false,
                                        style: fontStyle_2(),
                                        decoration: InputDecoration(
                                          hintText: "1",
                                          hintStyle: hintFontStyle(),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset('assets/down_arrow.svg')
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
          ],
        ),
      ),
      bottomNavigationBar: ContinueBtn(
        text: 'Continue',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UploadDoc(),
            ),
          );
        },
      ),
    );
  }
}

TextStyle fontStyle_2() {
  return const TextStyle(
    fontFamily: 'rubik',
    fontSize: 18,
    color: Color(0xff2a4f6d),
  );
}

TextStyle hintFontStyle() {
  return const TextStyle(
    fontFamily: 'rubik',
    fontSize: 18,
    color: Color(0x332a4f6d),
  );
}

TextStyle fontStyle_1() {
  return const TextStyle(
    fontFamily: 'rubik',
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Color(0xff2a4f6d),
  );
}
