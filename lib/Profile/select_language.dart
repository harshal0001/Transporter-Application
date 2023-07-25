import 'package:flutter/material.dart';

import '../BottomNavBar/pages/profile.dart';
import '../components/buttons.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({super.key});

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  int selectedLanguageIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Edit Language",
          style: TextStyle(
            fontFamily: 'krub',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.475,
            color: Color(0xff2a4f6d),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const SizedBox(height: 35),
            ListTile(
              contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 0),
              title: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: selectedLanguageIndex == 0
                    ? Text('English',
                        style: TextStyle(
                          fontFamily: 'rubik',
                          letterSpacing: 0.7,
                          color: Color(0xff0ACF83),
                          fontSize: 20,
                        ))
                    : null,
              ),
              subtitle: Text(
                'English (India)',
                style:
                    TextStyle(fontFamily: 'krub', fontWeight: FontWeight.w400),
              ),
              trailing: selectedLanguageIndex == 0
                  ? Icon(
                      Icons.check,
                      color: Color(0xff0ACF83),
                    )
                  : null,
              onTap: () {
                setState(() {
                  selectedLanguageIndex = 0;
                });
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              title: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: selectedLanguageIndex == 1
                    ? Text('Hindi',
                        style: TextStyle(
                          fontFamily: 'rubik',
                          letterSpacing: 0.7,
                          color: Color(0xff0ACF83),
                          fontSize: 20,
                        ))
                    : null,
              ),
              subtitle:
                  Text('Hindi (India)', style: TextStyle(fontFamily: 'krub')),
              trailing: selectedLanguageIndex == 1
                  ? Icon(
                      Icons.check,
                      color: Color(0xff0ACF83),
                    )
                  : null,
              onTap: () {
                setState(() {
                  selectedLanguageIndex = 1;
                });
              },
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
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
