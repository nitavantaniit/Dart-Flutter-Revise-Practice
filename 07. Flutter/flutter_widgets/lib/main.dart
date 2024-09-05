import 'package:flutter/material.dart';
import 'package:flutter_widgets/01_containerex.dart';
import 'package:flutter_widgets/02_centerwdgtexmpl.dart';
import 'package:flutter_widgets/03_text.dart';
import 'package:flutter_widgets/04_buttons.dart';
import 'package:flutter_widgets/05_images.dart';
import 'package:flutter_widgets/06_rowcol.dart';
import 'package:flutter_widgets/07_rowcol2.dart';
import 'package:flutter_widgets/08_inkwell.dart';
import 'package:flutter_widgets/09_scrollview.dart';
import 'package:flutter_widgets/10_listView1.dart';
import 'package:flutter_widgets/11_ListViewBuilder.dart';
import 'package:flutter_widgets/12_listViewSeparated.dart';
import 'package:flutter_widgets/13_ContainerDecoration.dart';
import 'package:flutter_widgets/14_expanded.dart';
import 'package:flutter_widgets/15_margn_padng.dart';
import 'package:flutter_widgets/16_ListTile.dart';
import 'package:flutter_widgets/17_CircleAvatar.dart';
import 'package:flutter_widgets/18_CircleAvatar2.dart';
import 'package:flutter_widgets/19_ListTile2.dart';
import 'package:flutter_widgets/20_CustomFonts.dart';
import 'package:flutter_widgets/21_card.dart';
import 'package:flutter_widgets/22_card2.dart';
import 'package:flutter_widgets/23_textfield.dart';
import 'package:flutter_widgets/24_datetime1.dart';
import 'package:flutter_widgets/25_datetime2.dart';
import 'package:flutter_widgets/26_DTpicker.dart';
import 'package:flutter_widgets/27_GridView1.dart';
import 'package:flutter_widgets/28_GridView2.dart';
import 'package:flutter_widgets/29_GridView3.dart';
import 'package:flutter_widgets/30_GridView4.dart';
import 'package:flutter_widgets/31_CallBackExample.dart';
import 'package:flutter_widgets/32_CustomWidget.dart';
import 'package:flutter_widgets/33_stack1.dart';
import 'package:flutter_widgets/34_stack2.dart';
import 'package:flutter_widgets/35_stack3.dart';
import 'package:flutter_widgets/36_WrapWidget.dart';
import 'package:flutter_widgets/37_SizedBox.dart';
import 'package:flutter_widgets/38_RichText.dart';
import 'package:flutter_widgets/39_Icons.dart';
import 'package:flutter_widgets/40_FontAwsmIcon.dart';
import 'package:flutter_widgets/41_Positioned.dart';
import 'package:flutter_widgets/42_StatefulWidget.dart';
import 'package:flutter_widgets/43_SimpleCalculator.dart';
import 'package:flutter_widgets/44_Constrainedbox.dart';
import 'package:flutter_widgets/45_RangeSlider.dart';
import 'package:flutter_widgets/46_BMIapp.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      home: const BMIapp() ,
    );
  }
}