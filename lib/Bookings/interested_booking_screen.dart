import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Bookings/booking_details_screen.dart';

class InterestedBooking extends StatefulWidget {
  const InterestedBooking({super.key});

  @override
  State<InterestedBooking> createState() => _InterestedBookingState();
}

class _InterestedBookingState extends State<InterestedBooking> {
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
                            const EdgeInsets.only(left: 20, top: 30, right: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      "Interested Bookings",
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
                                SvgPicture.asset('assets/filter.svg'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 35),
                          child: Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  color: Color(0xff0acf83),
                                  borderRadius: BorderRadius.circular(4),
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 33),
                          child: Row(
                            children: [
                              Container(
                                height: 42,
                                width: 2,
                                color: Color(0x1a2a4f6d),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 40),
                          child: Row(
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
                              const SizedBox(
                                width: 118,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingDetails()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "View Details",
                                      style: TextStyle(
                                        fontFamily: 'rubik',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2a4f6d),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/chevron_right.svg'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 22),
                          child: Divider(),
                        ),
                      ],
                    ),
                  ],
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

/*

                
 */