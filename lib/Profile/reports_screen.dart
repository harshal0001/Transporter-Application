import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Report/booking_reports.dart';
import 'package:reeroute_vendor/Report/driver_report.dart';
import 'package:reeroute_vendor/Report/vehicle_report.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Reports",
          style: TextStyle(
            fontFamily: 'krub',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.475,
            color: Color(0xff2a4f6d),
          ),
        ),
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
                        left: 36, right: 18, top: 30, bottom: 14),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingReport(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Booking Reports",
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
                            builder: (context) => VehicleReport(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Vehicle Reports",
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
                            builder: (context) => DriverReport(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Driver Reports",
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
