import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reeroute_vendor/Bookings/sales_team.dart';
import 'package:reeroute_vendor/Bookings/you_tab.dart';
import 'package:reeroute_vendor/theme.dart';

class CancelledBooking extends StatefulWidget {
  const CancelledBooking({super.key});

  @override
  State<CancelledBooking> createState() => _CancelledBookingState();
}

class _CancelledBookingState extends State<CancelledBooking>
    with TickerProviderStateMixin {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 48,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: SvgPicture.asset(
                                    'assets/chevron_left.svg')),
                            const SizedBox(width: 6),
                            Text(
                              "Cancelled Bookings",
                              style: TextStyle(
                                fontFamily: 'rubik',
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2a4f6d),
                                letterSpacing: 0.643,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/filter.svg'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 36),
                    TabBar(
                      indicatorColor: secondaryColor,
                      indicatorWeight: 4,
                      unselectedLabelColor: Color(0xff777777),
                      labelColor: secondaryColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: _tabController,
                      tabs: [
                        Tab(
                          child: Text('By You'),
                        ),
                        Tab(
                          child: Text('By Sales Team'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  YouTab(),
                  SalesTeam(),
                ],
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
