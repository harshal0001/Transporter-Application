import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reeroute_vendor/BottomNavBar/pages/home.dart';
import 'package:reeroute_vendor/bank/bank_details_screen.dart';

import '../components/buttons.dart';

class VehicleAdded extends StatelessWidget {
  const VehicleAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/frame.svg'),
        titleSpacing: 28,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 92, right: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/done.png',
                height: 75,
                width: 75,
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                "Vehicle added sucessfully",
                style: TextStyle(
                  fontFamily: 'rubik',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.475,
                  color: Color(0xff2a4f6d),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Lorem Ipsum is simply dummy text of the printing\nand typesetting industry.",
                style: TextStyle(
                  fontFamily: 'krub',
                  fontSize: 12,
                  letterSpacing: 0.475,
                  color: Color(0xff2a4f6d),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ContinueBtn(
        text: 'Go Home',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
