import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Vehicles/edit_vehicle.dart';

class VehicleDetails extends StatefulWidget {
  const VehicleDetails({super.key});

  @override
  State<VehicleDetails> createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
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
                            const EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        BackButton(
                                          color: Color(0xff2a4f6d),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          "Vehicle Details",
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
                                    const SizedBox(width: 98),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => EditVehicle(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            'Edit',
                                            style: TextStyle(
                                              color: Color(0xff2a4f6d),
                                              fontFamily: 'rubik',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SvgPicture.asset(
                                              'assets/chevron_right.svg'),
                                        ],
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
                    const SizedBox(height: 32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Registration No.      :    MH 04 SS 1998 ',
                          style: TextStyle(
                            color: Color(0xff2a4f6d),
                            fontSize: 18,
                            fontFamily: 'rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Vehicle Type             :    Open Truck ',
                          style: TextStyle(
                            color: Color(0xff2a4f6d),
                            fontSize: 18,
                            fontFamily: 'rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Color                          :    Black  ',
                          style: TextStyle(
                            color: Color(0xff2a4f6d),
                            fontSize: 18,
                            fontFamily: 'rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Maker Name              :    Ashok Leyland ',
                          style: TextStyle(
                            color: Color(0xff2a4f6d),
                            fontSize: 18,
                            fontFamily: 'rubik',
                            fontWeight: FontWeight.w400,
                          ),
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
