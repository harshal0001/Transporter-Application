import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/BottomNavBar/pages/notifications.dart';
import 'package:reeroute_vendor/Home/prederred_city_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    padding: const EdgeInsets.only(left: 27, right: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PreferredCity(),
                                  ),
                                );
                              },
                              child: Text(
                                'Preferred City',
                                style: TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xfff79633),
                                  letterSpacing: 0.37,
                                ),
                              ),
                            ),
                            const SizedBox(width: 33),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Other City',
                                style: TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                                  letterSpacing: 0.37,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset('assets/filter.svg')
                      ],
                    ),
                  ),
                  const SizedBox(height: 27),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Image.asset('assets/hyderabad.png', height: 36),
                              const SizedBox(height: 16),
                              Text(
                                'Hyderabad',
                                style: TextStyle(
                                  fontFamily: 'rubik',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Column(
                            children: [
                              Image.asset('assets/bangalore.png', height: 36),
                              const SizedBox(height: 16),
                              Text(
                                'Bangalore',
                                style: TextStyle(
                                  fontFamily: 'rubik',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Image.asset('assets/mumbai.png', height: 36),
                              const SizedBox(height: 16),
                              Text(
                                'Mumbai',
                                style: TextStyle(
                                  fontFamily: 'rubik',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        Container(
                          height: 115,
                          width: 115,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                Image.asset('assets/chennai.png', height: 36),
                                const SizedBox(height: 16),
                                Text(
                                  'Cheenai',
                                  style: TextStyle(
                                    fontFamily: 'rubik',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          height: 115,
                          width: 115,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                Image.asset('assets/delhi.png', height: 36),
                                const SizedBox(height: 16),
                                Text(
                                  'Delhi',
                                  style: TextStyle(
                                    fontFamily: 'rubik',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
