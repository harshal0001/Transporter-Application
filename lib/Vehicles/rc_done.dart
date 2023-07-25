import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reeroute_vendor/Vehicles/vehicle_added.dart';
import 'package:reeroute_vendor/bank/bank_details_screen.dart';

class RcDone extends StatelessWidget {
  const RcDone({super.key});

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
                "RC Permit Successfully Added",
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
      bottomNavigationBar: UpdateWidget(),
    );
  }
}

class UpdateWidget extends StatelessWidget {
  const UpdateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      decoration: BoxDecoration(
        color: Colors.white,
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
            const EdgeInsets.only(left: 28, right: 28, top: 22, bottom: 24),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
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
                      "Cancel",
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
                    MaterialPageRoute(builder: (context) => VehicleAdded()),
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
                      "Continue",
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
            ),
          ],
        ),
      ),
    );
  }
}
