import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/BottomNavBar/bottom_nav_bar.dart';
import 'package:reeroute_vendor/components/buttons.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({super.key});

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
                  color: Color(0xff2a4f6d),
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
                  color: Color(0xff2a4f6d),
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
                          style: fontStyle_2(),
                          decoration: InputDecoration(
                            hintText: "State Bank of India",
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
                "Enter Account No.*",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'rubik',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.475,
                  color: Color(0xff2a4f6d),
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
                    style: fontStyle_2(),
                    decoration: InputDecoration(
                      hintText: "Enter bank account number",
                      hintStyle: hintFontStyle(),
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
                  color: Color(0xff2a4f6d),
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
                    style: fontStyle_2(),
                    decoration: InputDecoration(
                      hintText: "Enter your bank ifsc code",
                      hintStyle: hintFontStyle(),
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
                  color: Color(0xff2a4f6d),
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
                    color: Color(0xfff79633),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Upload Cancel cheque",
                      style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 18,
                        color: Color(0xfff79633),
                        letterSpacing: 0.475,
                      ),
                    ),
                    const SizedBox(width: 20),
                    SvgPicture.asset('assets/upload.svg'),
                  ],
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
