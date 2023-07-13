import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/buttons.dart';
import 'kyc_selection_screen.dart';

class KycScreen extends StatelessWidget {
  const KycScreen({super.key});

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
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 54),
              const Text(
                "Complete your KYC",
                style: TextStyle(
                  fontFamily: 'rubik',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2a4f6d),
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry.",
                style: TextStyle(
                  fontFamily: 'krub',
                  fontSize: 12,
                  color: Color(0xff2a4f6d),
                ),
              ),
              const SizedBox(height: 48),
              Row(
                children: [
                  Image.asset(
                    'assets/pan_icon.png',
                    height: 24,
                    width: 43.2,
                  ),
                  const SizedBox(
                    width: 18.8,
                  ),
                  const Text(
                    "PAN",
                    style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2a4f6d),
                      letterSpacing: 0.475,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 34),
              Row(
                children: [
                  Image.asset(
                    'assets/aadhaar_icon.png',
                    height: 24,
                    width: 43.2,
                  ),
                  const SizedBox(
                    width: 18.8,
                  ),
                  const Text(
                    "Aadhaar Card",
                    style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2a4f6d),
                      letterSpacing: 0.475,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 34),
              Row(
                children: [
                  Image.asset(
                    'assets/gst_icon.png',
                    height: 24,
                    width: 43.2,
                  ),
                  const SizedBox(
                    width: 18.8,
                  ),
                  const Text(
                    "GST",
                    style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2a4f6d),
                      letterSpacing: 0.475,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 230),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Do this Later",
                    style: TextStyle(
                      color: Color(0xff2a4f6d),
                      fontSize: 18,
                      fontFamily: 'rubik',
                      letterSpacing: 0.475,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ContinueBtn(
        text: 'Start my KYC',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => KycScreen2(),
            ),
          );
        },
      ),
    );
  }
}
