import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreferredCity extends StatefulWidget {
  const PreferredCity({super.key});

  @override
  State<PreferredCity> createState() => _PreferredCityState();
}

class _PreferredCityState extends State<PreferredCity> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: SvgPicture.asset('assets/chevron_left.svg'),
            )),
        elevation: 0,
        title: Text(
          "Preferred City",
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
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 33, top: 43),
              child: Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Color(0xff0ACF83),
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
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/right_arrow.svg')
                ],
              ),
            ),
          ),
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
