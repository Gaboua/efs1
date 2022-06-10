import 'package:efs1/pages/authentication/homePage.dart';
import 'package:efs1/pages/authentication/welcomePage.dart';
import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Center(
          child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return MyHomePage();
                }));
              },
              child: Text('Log out'))),
    );
  }
}
