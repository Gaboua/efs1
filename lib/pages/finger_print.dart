
import 'package:efs1/consts.dart';
import 'package:efs1/pages/otp.dart';
import 'package:efs1/pages/tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({Key? key}) : super(key: key);

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

final Whitebackgroudheight = 0.8;

class _FingerPrintState extends State<FingerPrint> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).accentColor,
      appBar: myAppBar(
        leadingf: () => Navigator.pop(context),
        actionf: () => Navigator.pop(context),
        titre: "FingerPrint",
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
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(26),
                      ),
                    ))),
            Positioned(
                bottom: size.height * Whitebackgroudheight - 1,
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
            ),
            Positioned(
              bottom: size.height * (Whitebackgroudheight - 0.1),
              left: size.width / 12,
              child: Text(
                "FingerPrint",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Positioned(
                bottom: size.height * (Whitebackgroudheight - 0.13),
                left: size.width / 10,
                child: Text("Enter your FingerPrint")),
            Positioned(
              top: size.height * (1 - Whitebackgroudheight +0.15),
              width: size.width / 1.2,
              left: size.width / 12,
              child: Form(
                child: Column(
                  children: [
                    Image(
                width: size.height * ( Whitebackgroudheight - 0.25),
                height: size.height * ( Whitebackgroudheight - 0.25),
                image: AssetImage(
                    "Finger.png"),
              ),
             
                    SizedBox(
                      width: size.width / 1.2,
                      child: Button(
                        text: "Skip",
                        onClick: () { },
                        color: Color(0xff8fb4f9),
                      ),
                    ),
                   
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
