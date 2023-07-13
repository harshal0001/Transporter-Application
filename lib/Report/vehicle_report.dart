import 'package:flutter/material.dart';

class VehicleReport extends StatefulWidget {
  const VehicleReport({super.key});

  @override
  State<VehicleReport> createState() => _VehicleReportState();
}

class _VehicleReportState extends State<VehicleReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Vehicle Reports",
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
