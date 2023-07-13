import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reeroute_vendor/kyc/pan_back_side_screen.dart';
import 'dart:io';

class PanCardFrontSide extends StatefulWidget {
  const PanCardFrontSide({super.key});

  @override
  State<PanCardFrontSide> createState() => _PanCardFrontSideState();
}

class _PanCardFrontSideState extends State<PanCardFrontSide> {
  bool upload = true;
  File? _image;

  final imagePicker = ImagePicker();

  Future getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
      upload = false;
    });
  }

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 105,
                  right: 106,
                  top: 63,
                  bottom: 36,
                ),
                child: Image.asset(
                  'assets/pan_card_front.png',
                  height: 126,
                  width: 202,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upload front side of your PAN",
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
            ],
          ),
        ),
        bottomNavigationBar: !upload
            ? UpdateWidget()
            : UploadWidget(
                onTap: getImage,
              ));
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
                      "Use Another",
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
                      builder: (context) => PanCardBackSide(),
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

class UploadWidget extends StatelessWidget {
  final VoidCallback onTap;
  const UploadWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
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
            const EdgeInsets.only(left: 28, right: 28, top: 28, bottom: 32),
        child: Column(
          children: [
            Container(
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 1,
                  style: BorderStyle.solid,
                  color: Color(0xfff79633),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/upload.svg'),
                  const SizedBox(width: 6),
                  Text(
                    "Upload from gallery",
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 18,
                      color: Color(0xfff79633),
                      letterSpacing: 0.475,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: onTap,
              child: Container(
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xfff79633),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/camera_image.svg'),
                    const SizedBox(width: 6),
                    Text(
                      "Take a picture",
                      style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 18,
                        color: Colors.white,
                        letterSpacing: 0.475,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
