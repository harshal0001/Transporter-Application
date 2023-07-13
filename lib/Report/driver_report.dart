import 'package:flutter/material.dart';

class DriverReport extends StatefulWidget {
  const DriverReport({super.key});

  @override
  State<DriverReport> createState() => _DriverReportState();
}

class _DriverReportState extends State<DriverReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Driver Reports",
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
