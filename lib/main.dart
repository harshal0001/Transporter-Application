import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:reeroute_vendor/language_selection_screen.dart';

import 'locale_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageSelectionScreen(),
    );
  }
}
