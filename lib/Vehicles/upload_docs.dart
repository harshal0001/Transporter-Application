import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Vehicles/upload_rc.dart';

import '../components/buttons.dart';

class UploadDocs extends StatefulWidget {
  const UploadDocs({super.key});

  @override
  State<UploadDocs> createState() => _UploadDocsState();
}

class _UploadDocsState extends State<UploadDocs> {
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
                          const EdgeInsets.only(top: 34, left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upload Documents",
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upload RC Permit",
                                          style: TextStyle(
                                            fontFamily: 'rubik',
                                            fontSize: 18,
                                            color: Color(0xff2a4f6d),
                                            letterSpacing: 0.475,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          "Govt. issued RC",
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
                                ],
                              ),
                              Spacer(),
                              SvgPicture.asset('assets/chevron_right.svg'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 3, bottom: 4),
                            child: Container(
                              width: 2,
                              height: 41.012,
                              color: Color(0x1a2a4f6d),
                            ),
                          ),
                          Row(
                            children: [
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upload Insurance",
                                          style: TextStyle(
                                            fontFamily: 'rubik',
                                            fontSize: 18,
                                            color: Color(0xff2a4f6d),
                                            letterSpacing: 0.475,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          "Govt. issued insurance",
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
                                ],
                              ),
                              Spacer(),
                              SvgPicture.asset('assets/chevron_right.svg'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 3, bottom: 4),
                            child: Container(
                              width: 2,
                              height: 41.012,
                              color: Color(0x1a2a4f6d),
                            ),
                          ),
                          Row(
                            children: [
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
                                        'assets/pan_card.png',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upload PuC",
                                          style: TextStyle(
                                            fontFamily: 'rubik',
                                            fontSize: 18,
                                            color: Color(0xff2a4f6d),
                                            letterSpacing: 0.475,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          "Govt. issued Pollution Under Control",
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
                                ],
                              ),
                              Spacer(),
                              SvgPicture.asset('assets/chevron_right.svg'),
                            ],
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
        text: 'Continue my KYC',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UploadRc(),
            ),
          );
        },
      ),
    );
  }
}
