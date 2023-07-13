import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/buttons.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/frame.svg'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 55),
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
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                const SizedBox(height: 123),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: OnboardingBtn(),
    );
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
}
