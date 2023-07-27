import 'package:flutter/material.dart';

import 'package:reeroute_vendor/Drivers/manage_driver.dart';

import '../components/buttons.dart';

class EditDriverDetails extends StatefulWidget {
  const EditDriverDetails({super.key});

  @override
  State<EditDriverDetails> createState() => _EditDriverDetailsState();
}

class _EditDriverDetailsState extends State<EditDriverDetails> {
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
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38, left: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Edit your details',
                            style: fontStyle_1(),
                          ),
                          const SizedBox(height: 37),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Color(0xfffdead6),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'rubik',
                                    fontSize: 60,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 37),
                          Text(
                            'Full Name*',
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          const SizedBox(height: 18),
                          Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0x26000000),
                              ),
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
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.475,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff2a4f6d),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Text(
                            'Mobile Number',
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          const SizedBox(height: 18),
                          Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0x26000000),
                              ),
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
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.475,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff2a4f6d),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
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
          ],
        ),
      ),
      bottomNavigationBar: ContinueBtn(
        text: 'Save',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ManageDriver(),
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
