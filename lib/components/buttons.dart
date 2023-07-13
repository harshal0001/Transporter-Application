import 'package:flutter/material.dart';

import '../SignupFLow/onboarding_screen.dart';
import '../kyc/kyc_main_screen.dart';

class OtpContinueBtn extends StatelessWidget {
  const OtpContinueBtn({
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
                      "Resend",
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
                      builder: (context) => OnboardingScreen(),
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

class OnboardingBtn extends StatelessWidget {
  const OnboardingBtn({
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
              offset: Offset(0, 8))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KycScreen(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfff79633),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 48,
                    offset: Offset(0, 8))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Continue",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'inter',
                  fontSize: 18,
                  letterSpacing: 0.475,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContinueBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ContinueBtn({
    super.key,
    required this.text,
    required this.onTap,
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
              offset: Offset(0, 8))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfff79633),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 48,
                    offset: Offset(0, 8))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'inter',
                  fontSize: 18,
                  letterSpacing: 0.475,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
