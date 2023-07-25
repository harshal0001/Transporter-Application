import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reeroute_vendor/Bookings/track_my_bookings.dart';

class MyTrips extends StatefulWidget {
  const MyTrips({super.key});

  @override
  State<MyTrips> createState() => _MyTripsState();
}

class _MyTripsState extends State<MyTrips> {
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
                              left: 20, top: 20, bottom: 20, right: 20),
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
                                    "My Trips",
                                    style: TextStyle(
                                      fontFamily: 'rubik',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff2a4f6d),
                                      letterSpacing: 0.643,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 54,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: Color(0xffe57e38),
                                          width: 1,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6),
                                        child: Text(
                                          "Ongoing",
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.211,
                                            color: Color(0xfff79633),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
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
                                          "Edit",
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
                                                    "Call Driver",
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
                                const SizedBox(height: 24),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TrackMyBookings()),
                                    );
                                  },
                                  child: Container(
                                    width: 344,
                                    decoration: BoxDecoration(
                                      color: Color(0xfff79633),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12, bottom: 12),
                                      child: Center(
                                        child: Text(
                                          "Track your booking",
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 40),
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
