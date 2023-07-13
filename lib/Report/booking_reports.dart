import 'package:flutter/material.dart';

class BookingReport extends StatefulWidget {
  const BookingReport({super.key});

  @override
  State<BookingReport> createState() => _BookingReportState();
}

class _BookingReportState extends State<BookingReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Booking Reports",
          style: TextStyle(
            fontFamily: 'krub',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.475,
            color: Color(0xff2a4f6d),
          ),
        ),
      ),
    );
  }
}
