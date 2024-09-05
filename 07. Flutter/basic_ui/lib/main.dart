import 'package:basic_ui/01_containerex.dart';
import 'package:basic_ui/02_rc1.dart';
import 'package:basic_ui/02_rc2.dart';
import 'package:basic_ui/03_colmn_wdgt_almnt.dart';
import 'package:basic_ui/03_travel_page.dart';
import 'package:basic_ui/04_row_wdgt_ca_almnt.dart';
import 'package:basic_ui/06_registration_form.dart';
import 'package:basic_ui/07_custm_rdo_btn_ex.dart';
import 'package:basic_ui/08_shopping_page.dart';
import 'package:basic_ui/Login%20Page%20example/mainscreen.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const MainScreen(),
    );
  }
  
}