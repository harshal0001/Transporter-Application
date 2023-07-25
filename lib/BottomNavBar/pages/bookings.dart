import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Bookings/assigned_booking_screen.dart';
import 'package:reeroute_vendor/Bookings/cancelled_booking.dart';
import 'package:reeroute_vendor/Bookings/completed_booking_screen.dart';
import 'package:reeroute_vendor/Bookings/interested_booking_screen.dart';
import 'package:reeroute_vendor/BottomNavBar/pages/notifications.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/frame.svg'),
        titleSpacing: 28,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 26.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notifications(),
                  ),
                );
              },
              child: Image.asset(
                'assets/notification.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 18, top: 58, bottom: 16),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InterestedBooking(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Interested Bookings",
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          const Spacer(flex: 1),
                          SvgPicture.asset('assets/chevron_right.svg'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    child: const Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 18, top: 22, bottom: 22),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AssignedBooking(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Assigned Bookings",
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          const Spacer(flex: 1),
                          SvgPicture.asset('assets/chevron_right.svg'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    child: const Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 18, top: 22, bottom: 22),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompletedBooking(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Completed Bookings",
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          const Spacer(flex: 1),
                          SvgPicture.asset('assets/chevron_right.svg'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    child: const Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 18, top: 22, bottom: 22),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CancelledBooking(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Canceled Bookings",
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          const Spacer(flex: 1),
                          SvgPicture.asset('assets/chevron_right.svg'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    child: const Divider(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
