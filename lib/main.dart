import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'package:divyam_excel_admin/controllers/sidemenu_controller.dart';
import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/main_layout.dart';
// import 'package:divyam_excel_admin/main_layout_old.dart';

void main() {
  Get.put(SidemenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divyam Excel Admin',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kBgColor,
        textTheme: GoogleFonts.publicSansTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: kBodyTextColor,
        ),
      ),
      home: MainLayout(),
    );
  }
}
