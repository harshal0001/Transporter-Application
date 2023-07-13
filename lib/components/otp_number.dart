import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpNumber extends StatelessWidget {
  const OtpNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 6,
          decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: TextStyle(
                fontFamily: 'rubik',
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Color(0xff2a4f6d)),
            showCursor: false,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.center,
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(width: 22),
        Container(
          width: 50,
          height: 6,
          decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: TextStyle(
                fontFamily: 'rubik',
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Color(0xff2a4f6d)),
            showCursor: false,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.center,
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(width: 22),
        Container(
          width: 50,
          height: 6,
          decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: TextStyle(
                fontFamily: 'rubik',
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Color(0xff2a4f6d)),
            showCursor: false,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.center,
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(width: 22),
        Container(
          width: 50,
          height: 6,
          decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: TextStyle(
                fontFamily: 'rubik',
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Color(0xff2a4f6d)),
            showCursor: false,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.center,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
