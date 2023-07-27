import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cancelled_details_salesTab.dart';
import 'cancelled_details_youTab.dart';

class SalesTeam extends StatelessWidget {
  const SalesTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 40, right: 50),
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
            padding: const EdgeInsets.only(left: 30, right: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CancelledBookingDetailsTab2()),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "View Details",
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          SvgPicture.asset('assets/chevron_right.svg'),
                        ],
                      ),
                    ),
                  ],
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
    );
  }
}
