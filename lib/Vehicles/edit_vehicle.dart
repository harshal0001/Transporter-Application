import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Vehicles/manage_vehicles.dart';

import '../components/buttons.dart';

class EditVehicle extends StatefulWidget {
  const EditVehicle({super.key});

  @override
  State<EditVehicle> createState() => _EditVehicleState();
}

class _EditVehicleState extends State<EditVehicle> {
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
                        padding:
                            const EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    BackButton(
                                      color: Color(0xff2a4f6d),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      "Add Vehicle",
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
                          const EdgeInsets.only(top: 34, left: 23, right: 33),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vehicle Type*',
                            style: TextStyle(
                              color: Color(0xff2a4f6d),
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      showCursor: false,
                                      style: fontStyle_2(),
                                      decoration: InputDecoration(
                                        hintText: "Select vehicle type",
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
                            'Maker Name*',
                            style: TextStyle(
                              color: Color(0xff2a4f6d),
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      showCursor: false,
                                      style: fontStyle_2(),
                                      decoration: InputDecoration(
                                        hintText: "Select maker name",
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
                            'Color*',
                            style: TextStyle(
                              color: Color(0xff2a4f6d),
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                children: [
                                  Expanded(
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
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Text(
                            'Registration Number',
                            style: TextStyle(
                              color: Color(0xff2a4f6d),
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      showCursor: false,
                                      style: fontStyle_2(),
                                      decoration: InputDecoration(
                                        hintText: "enter your email address",
                                        hintStyle: hintFontStyle(),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ContinueBtn(
        text: 'Save',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ManageVehicles(),
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
