import 'package:flutter/material.dart';

class CancelledBooking extends StatefulWidget {
  const CancelledBooking({super.key});

  @override
  State<CancelledBooking> createState() => _CancelledBookingState();
}

class _CancelledBookingState extends State<CancelledBooking> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
