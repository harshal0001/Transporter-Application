import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/components/buttons.dart';
import 'package:reeroute_vendor/kyc/pan_front_side_screen.dart';

class KycScreen2 extends StatelessWidget {
  const KycScreen2({super.key});

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
        text: 'Continue my KYC',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PanCardFrontSide()),
          );
        },
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 54),
              Text(
                "Your KYC",
                style: TextStyle(
                  fontFamily: 'rubik',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2a4f6d),
                ),
              ),
              SizedBox(height: 6),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry.",
                style: TextStyle(
                  fontFamily: 'krub',
                  fontSize: 12,
                  color: Color(0xff2a4f6d),
                ),
              ),
              SizedBox(height: 48),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 2,
                        color: Color(0x1a2a4f6d),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/pan_card.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PAN Card",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            color: Color(0xff2a4f6d),
                            letterSpacing: 0.475,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Govt. issued PAN Card",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 12,
                            color: Color(0xff0acf83),
                            letterSpacing: 0.475,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 82),
                    child: SvgPicture.asset('assets/chevron_right.svg'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 3, bottom: 4),
                child: Container(
                  width: 2,
                  height: 41.012,
                  color: Color(0x1a2a4f6d),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 2,
                        color: Color(0x1a2a4f6d),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/pan_card.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aadhaar Card",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            color: Color(0xff2a4f6d),
                            letterSpacing: 0.475,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Govt. issued Aadhaar Card",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 12,
                            color: Color(0xff0acf83),
                            letterSpacing: 0.475,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 56),
                    child: SvgPicture.asset('assets/chevron_right.svg'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 3, bottom: 4),
                child: Container(
                  width: 2,
                  height: 41.012,
                  color: Color(0x1a2a4f6d),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 2,
                        color: Color(0x1a2a4f6d),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        'assets/gst_logo.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "GST",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            color: Color(0xff2a4f6d),
                            letterSpacing: 0.475,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Govt. issued GST",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 12,
                            color: Color(0xff0acf83),
                            letterSpacing: 0.475,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 114),
                    child: SvgPicture.asset('assets/chevron_right.svg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
