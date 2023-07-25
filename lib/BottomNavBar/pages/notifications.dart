import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset('assets/cross.svg'),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Notifications',
                          style: TextStyle(
                            color: Color(0xff003A5D),
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'Mark Read All',
                              style: TextStyle(
                                color: Color(0xff2a4f6d),
                                fontFamily: 'rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(width: 5),
                            SvgPicture.asset('assets/filter.svg'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 26),
                    ListTile(
                      title: Text(
                        'Lorem ipsum notification',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        'lorem ipsum dolor sit...',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Lorem ipsum notification',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        'lorem ipsum dolor sit...',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Lorem ipsum notification',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        'lorem ipsum dolor sit...',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Lorem ipsum notification',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        'lorem ipsum dolor sit...',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Lorem ipsum notification',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        'lorem ipsum dolor sit...',
                        style: TextStyle(
                          color: Color(0xff2a4f6d),
                          fontFamily: 'rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
