import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CancelledBookingDetails extends StatefulWidget {
  const CancelledBookingDetails({super.key});

  @override
  State<CancelledBookingDetails> createState() =>
      _CancelledBookingDetailsState();
}

class _CancelledBookingDetailsState extends State<CancelledBookingDetails> {
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
                              left: 20, top: 30, bottom: 30, right: 20),
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
                                    "Bookings Details",
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
                              Row(
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
