
import 'package:flutter/material.dart';

import 'login_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFf0e5c7)),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
