import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Drivers/add_driver.dart';
import 'package:reeroute_vendor/Drivers/driver_details.dart';
import 'package:reeroute_vendor/Drivers/edit_driver_details.dart';

import '../components/buttons.dart';

class ManageDriver extends StatefulWidget {
  const ManageDriver({super.key});

  @override
  State<ManageDriver> createState() => _ManageDriverState();
}

class _ManageDriverState extends State<ManageDriver> {
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    BackButton(
                                      color: Color(0xff2a4f6d),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      "Manage Drivers",
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 47, left: 20, right: 13),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 9, right: 19),
                            child: Row(
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
                                    const SizedBox(width: 16),
                                    Text(
                                      'Some Name',
                                      style: TextStyle(
                                        color: Color(0xff2a4f6d),
                                        fontFamily: 'rubik',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DriverDetails(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        'View Details',
                                        style: TextStyle(
                                          color: Color(0xff2a4f6d),
                                          fontFamily: 'rubik',
                                          fontSize: 12,
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
                          ),
                          const SizedBox(height: 20),
                          Divider(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ContinueBtn(
        text: 'Add new Driver',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddDriver(),
            ),
          );
        },
      ),
    );
  }
}
