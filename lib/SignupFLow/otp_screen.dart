import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/buttons.dart';
import '../components/otp_number.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SvgPicture.asset('assets/frame.svg'),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 28,
                top: 56,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter OTP",
                    style: TextStyle(
                      fontFamily: 'rubik',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xff2A4F6D),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry.",
                    style: TextStyle(
                      fontFamily: 'krub',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff2A4F6D),
                    ),
                  ),
                  SizedBox(height: 86),
                  OtpNumber(),
                  SizedBox(height: 320),
                  Row(
                    children: [
                      SvgPicture.asset('assets/call.svg'),
                      SizedBox(width: 20),
                      Text(
                        "Get OTP through call instead ?",
                        style: TextStyle(
                          fontFamily: 'krub',
                          fontSize: 14,
                          color: Color(0xff2a4f6d),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: OtpContinueBtn(),
    );
  }
}
