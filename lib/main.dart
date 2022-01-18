import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {    // this main.dart will usually consist of theme and its data
    return MaterialApp(
      theme: ThemeData.dark().copyWith(  //here
          appBarTheme:AppBarTheme(backgroundColor: Color(0xFF0A0E21),),   // DID THIS instead of 'primary color'
          scaffoldBackgroundColor: Color(0xFF0A0E21)
      ),
      home: InputPage(),
    );
  }
}
