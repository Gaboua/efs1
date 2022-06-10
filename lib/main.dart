import 'package:efs1/pages/authentication/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Comic",
        primarySwatch: MaterialColor(500, {
          500: Color(0xff120879),
          700: Color(0xff1e1d1d),
          100: Color(0xff8fb4f9),
          200: Color(0xfffb716a),
          300: Color(0xffffe2e2),
          600: Color(0xfff1eded),
          700: Color(0xffffffff),
          800: Color(0xff000000),
          900: Color(0xfff1eded),
          50: Color(0xfff1eded),
        }),
      ),
      home: const MyHomePage(),
    );
  }
}
