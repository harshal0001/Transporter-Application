import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssignDriver extends StatefulWidget {
  const AssignDriver({super.key});

  @override
  State<AssignDriver> createState() => _AssignDriverState();
}

class _AssignDriverState extends State<AssignDriver> {
  int _currentIndex = 1;
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
                              left: 20, top: 20, bottom: 30, right: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: SvgPicture.asset(
                                          'assets/chevron_left.svg')),
                                  const SizedBox(width: 6),
                                  Text(
                                    "Assign Driver",
                                    style: TextStyle(
                                      fontFamily: 'rubik',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff2a4f6d),
                                      letterSpacing: 0.643,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 8,
                                          width: 8,
                                          decoration: BoxDecoration(
                                            color: Color(0xff0acf83),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        const SizedBox(width: 14),
                                        Text(
                                          "Mumbai",
                                          style: TextStyle(
                                            fontFamily: 'rubik',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff2a4f6d),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 1,
                                          width: 180,
                                          color: Color(0x1a2a4f6d),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 8,
                                          width: 8,
                                          color: Color(0xffea1414),
                                        ),
                                        const SizedBox(width: 14),
                                        Text(
                                          "Delhi",
                                          style: TextStyle(
                                            fontFamily: 'rubik',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
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
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 26, top: 40, right: 40),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Material Type : ",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    Text(
                                      "Processed Items",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Text(
                                      "Vehicle Type : ",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    Text(
                                      "Open Truck",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Text(
                                      "Material Weight : ",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    Text(
                                      "1 Ton",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Text(
                                      "Truck Height : ",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    Text(
                                      "6 Ft.",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Text(
                                      "Truck Length : ",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    Text(
                                      "10 Ft.",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Text(
                                      "Amount Quoted : ",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    Text(
                                      "Rs. 20,000/-",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "LR",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "View",
                                          style: TextStyle(
                                            fontFamily: 'rubik',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.475,
                                            color: Color(0xffe57e38),
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Text(
                                          "Reupload",
                                          style: TextStyle(
                                            fontFamily: 'rubik',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.475,
                                            color: Color(0xffe57e38),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "POD Uploaded",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.475,
                                        color: Color(0xffe57e38),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 34),
                                Container(
                                  width: 354,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff6f6f6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 20,
                                      left: 26,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Driver Details",
                                          style: TextStyle(
                                            fontFamily: 'rubik',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.475,
                                            color: Color(0xff2a4f6d),
                                          ),
                                        ),
                                        const SizedBox(height: 24),
                                        Row(
                                          children: [
                                            Text(
                                              "Driver’s Name       :    Some Name ",
                                              style: TextStyle(
                                                fontFamily: 'rubik',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.475,
                                                color: Color(0xff2a4f6d),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 24),
                                        Row(
                                          children: [
                                            Text(
                                              "Vehicle No.            :    MH 04 SS 1998 ",
                                              style: TextStyle(
                                                fontFamily: 'rubik',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.475,
                                                color: Color(0xff2a4f6d),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 42, right: 25, bottom: 24),
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 296,
                                              decoration: BoxDecoration(
                                                color: Color(0xfff79633),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12, bottom: 12),
                                                child: Center(
                                                  child: Text(
                                                    "Edit details",
                                                    style: TextStyle(
                                                      fontFamily: 'inter',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 169),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              height: 24,
              width: 24,
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/booking.png',
              height: 24,
              width: 24,
            ),
            label: 'Bookings',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/profile.png',
              height: 24,
              width: 24,
            ),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
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



//****Edit Driver Details
// Container(
//                                   width: 354,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xfff6f6f6),
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                       top: 20,
//                                       left: 26,
//                                     ),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Driver Details",
//                                           style: TextStyle(
//                                             fontFamily: 'rubik',
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.w400,
//                                             letterSpacing: 0.475,
//                                             color: Color(0xff2a4f6d),
//                                           ),
//                                         ),
//                                         const SizedBox(height: 24),
//                                         Row(
//                                           children: [
//                                             Text(
//                                               "Driver’s Name",
//                                               style: TextStyle(
//                                                 fontFamily: 'rubik',
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.w400,
//                                                 letterSpacing: 0.475,
//                                                 color: Color(0xff2a4f6d),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         const SizedBox(height: 18),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 16),
//                                           child: Container(
//                                             width: 358,
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                               border: Border.all(
//                                                   color: Color(0x26000000),
//                                                   width: 1,
//                                                   style: BorderStyle.solid),
//                                               borderRadius:
//                                                   BorderRadius.circular(8),
//                                             ),
//                                             child: Padding(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 18.0),
//                                               child: Row(
//                                                 children: [
//                                                   Expanded(
//                                                     child: TextFormField(
//                                                       keyboardType:
//                                                           TextInputType.name,
//                                                       showCursor: false,
//                                                       style: fontStyle_2(),
//                                                       decoration:
//                                                           InputDecoration(
//                                                         hintText:
//                                                             "Select driver's name",
//                                                         hintStyle:
//                                                             hintFontStyle(),
//                                                         border:
//                                                             InputBorder.none,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   SvgPicture.asset(
//                                                       'assets/down_arrow.svg')
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         const SizedBox(height: 25),
//                                         Row(
//                                           children: [
//                                             Text(
//                                               "Vehicle Number",
//                                               style: TextStyle(
//                                                 fontFamily: 'rubik',
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.w400,
//                                                 letterSpacing: 0.475,
//                                                 color: Color(0xff2a4f6d),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         const SizedBox(height: 18),
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               right: 16, bottom: 16),
//                                           child: Container(
//                                             width: 358,
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                               border: Border.all(
//                                                   color: Color(0x26000000),
//                                                   width: 1,
//                                                   style: BorderStyle.solid),
//                                               borderRadius:
//                                                   BorderRadius.circular(8),
//                                             ),
//                                             child: Padding(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 18.0),
//                                               child: Row(
//                                                 children: [
//                                                   Expanded(
//                                                     child: TextFormField(
//                                                       keyboardType:
//                                                           TextInputType.name,
//                                                       showCursor: false,
//                                                       style: fontStyle_2(),
//                                                       decoration:
//                                                           InputDecoration(
//                                                         hintText:
//                                                             "Select vehicle number",
//                                                         hintStyle:
//                                                             hintFontStyle(),
//                                                         border:
//                                                             InputBorder.none,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   SvgPicture.asset(
//                                                       'assets/down_arrow.svg')
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
