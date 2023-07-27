import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Drivers/manage_driver.dart';
import 'package:reeroute_vendor/Profile/edit_profile_screen.dart';
import 'package:reeroute_vendor/Profile/help_support_screen.dart';
import 'package:reeroute_vendor/Profile/reports_screen.dart';
import 'package:reeroute_vendor/Profile/select_language.dart';
import 'package:reeroute_vendor/Vehicles/manage_vehicles.dart';
import 'package:reeroute_vendor/language_selection_screen.dart';

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
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => CustomDialog(
                    width: 414,
                    height: 286,
                  ),
                );
              },
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LanguageSelect(),
                          ),
                        );
                      },
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
                            builder: (context) => ManageVehicles(),
                          ),
                        );
                      },
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
                            builder: (context) => ManageDriver(),
                          ),
                        );
                      },
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

class CustomDialog extends StatelessWidget {
  final double width;
  final double height;

  CustomDialog({required this.width, required this.height});

  void _logout(BuildContext context) {
    //TODO Logout function
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(
          horizontal: 16.0), // Set the inset padding to control width
      content: Container(
        width: width,
        height: height,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 64),
            Text(
              'Are you sure you want to logout?',
              style: TextStyle(
                color: Color(0xff2A4F6D),
                fontFamily: 'rubik',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.475,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff2A4F6D),
                fontFamily: 'krub',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.475,
              ),
            ),
            const SizedBox(height: 64),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Color(0xfff79633),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "No",
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff79633),
                            letterSpacing: 0.475,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LanguageSelectionScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                        color: Color(0xfff79633),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Yes",
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 0.475,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
