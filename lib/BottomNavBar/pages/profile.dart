import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Profile/edit_profile_screen.dart';
import 'package:reeroute_vendor/Profile/help_support_screen.dart';
import 'package:reeroute_vendor/Profile/reports_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            padding: const EdgeInsets.only(right: 28.0),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/logout.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 34,
              color: Color(0xfff3f3f3),
            ),
            Container(
              height: 282,
              width: 414,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18, right: 26),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          fontFamily: 'rubik',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.475,
                          color: Color(0xff2a4f6d),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xfffdead6),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'rubik',
                            fontSize: 60,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 26),
                  Center(
                    child: Text(
                      "Smaran Ummadishetty",
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.475,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Center(
                    child: Text(
                      "+91 96199 47596",
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.475,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              color: Color(0xfff3f3f3),
            ),
            Container(
              width: 414,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 44, bottom: 24),
                    child: Row(
                      children: [
                        Text(
                          "Language",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.475,
                            color: Color(0xff2a4f6d),
                          ),
                        ),
                        Spacer(flex: 1),
                        SvgPicture.asset('assets/chevron_right.svg'),
                        Divider(
                          color: Color(0x33000000),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: Row(
                      children: [
                        Text(
                          "Manage Vehicles",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.475,
                            color: Color(0xff2a4f6d),
                          ),
                        ),
                        Spacer(flex: 1),
                        SvgPicture.asset('assets/chevron_right.svg'),
                        Divider(
                          color: Color(0x33000000),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: Row(
                      children: [
                        Text(
                          "Manage Drivers",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.475,
                            color: Color(0xff2a4f6d),
                          ),
                        ),
                        Spacer(flex: 1),
                        SvgPicture.asset('assets/chevron_right.svg'),
                        Divider(
                          color: Color(0x33000000),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HelpSupport(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Help & Support",
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          Spacer(flex: 1),
                          SvgPicture.asset('assets/chevron_right.svg'),
                          Divider(
                            color: Color(0x33000000),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: Row(
                      children: [
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.475,
                            color: Color(0xff2a4f6d),
                          ),
                        ),
                        Spacer(flex: 1),
                        SvgPicture.asset('assets/chevron_right.svg'),
                        Divider(
                          color: Color(0x33000000),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: Row(
                      children: [
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.475,
                            color: Color(0xff2a4f6d),
                          ),
                        ),
                        Spacer(flex: 1),
                        SvgPicture.asset('assets/chevron_right.svg'),
                        Divider(
                          color: Color(0x33000000),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Reports(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Reports",
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          Spacer(flex: 1),
                          SvgPicture.asset('assets/chevron_right.svg'),
                          Divider(
                            color: Color(0x33000000),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 22,
              color: Color(0xfff3f3f3),
            ),
          ],
        ),
      ),
    );
  }
}
