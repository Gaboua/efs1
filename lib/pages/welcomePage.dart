import 'package:efs1/pages/tools.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

final Whitebackgroudheight = 0.5;

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).accentColor,
      appBar: myAppBar(
        leadingf: () => Navigator.pop(context),
        actionf: () => Navigator.pop(context),
        titre: "Sign In",
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                    height: size.height * Whitebackgroudheight,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(26),
                      ),
                    ))),
            Positioned(
                bottom: size.height * Whitebackgroudheight,
                child: Container(
                  height: size.height * 0.05,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                )),
            Positioned(
              bottom: size.height * Whitebackgroudheight,
              child: Container(
                  height: size.height * 0.05,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                      color: Color(0xff120879),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(26),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
