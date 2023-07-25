import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
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
                            const EdgeInsets.only(left: 22, top: 20, right: 22),
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
                                const SizedBox(width: 10),
                                Text(
                                  "Booking Details",
                                  style: TextStyle(
                                    fontFamily: 'krub',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2a4f6d),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
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
                            const SizedBox(height: 28),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, top: 40),
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
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => CancelInterest(
                            width: 414,
                            height: 286,
                          ),
                        );
                      },
                      child: Container(
                        width: 354,
                        decoration: BoxDecoration(
                          color: Color(0xfff79633),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: Center(
                            child: Text(
                              "Cancel Interest",
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

class CancelInterest extends StatelessWidget {
  final double width;
  final double height;

  CancelInterest({required this.width, required this.height});

  void _logout(BuildContext context) {
    //TODO Logout function
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(
          horizontal: 16.0), // Set the inset padding to control width
      content: Container(
        width: width,
        height: height,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 64),
            Text(
              'Are you sure?',
              style: TextStyle(
                color: Color(0xff2A4F6D),
                fontFamily: 'rubik',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.475,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff2A4F6D),
                fontFamily: 'krub',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.475,
              ),
            ),
            const SizedBox(height: 64),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Color(0xfff79633),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff79633),
                            letterSpacing: 0.475,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => LanguageSelectionScreen(),
                      //   ),
                      // );
                    },
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                        color: Color(0xfff79633),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Yes",
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 0.475,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
