import 'package:flutter/material.dart';
import 'package:reeroute_vendor/BottomNavBar/pages/profile.dart';
import 'package:reeroute_vendor/components/buttons.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Edit Profile",
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 32, top: 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.475,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x26000000),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          showCursor: false,
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.475,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff2a4f6d),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 38),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.475,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x26000000),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          showCursor: false,
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.475,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff2a4f6d),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
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
      bottomNavigationBar: ContinueBtn(
        text: 'Update',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            ),
          );
        },
      ),
    );
  }
}
