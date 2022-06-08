import 'package:efs1/consts.dart';
import 'package:efs1/pages/fgpass.dart';
import 'package:efs1/pages/tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

final Whitebackgroudheight = 0.65;

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).accentColor,
      appBar: myAppBar(
        leadingf: () => Navigator.pop(context),
        actionf: () => Navigator.pop(context),
        titre: "Verification ",
      ),
      body: SingleChildScrollView(
        child: SizedBox(
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
                bottom: size.height * (Whitebackgroudheight + 0.025),
                left: (size.width -
                        size.height * (1 - Whitebackgroudheight - 0.15)) /
                    2,
                child: Image(
                  width: size.height * (1 - Whitebackgroudheight - 0.15),
                  height: size.height * (1 - Whitebackgroudheight - 0.15),
                  image: AssetImage("assets/verifcode.PNG"),
                ),
              ),
              Positioned(
                bottom: size.height * (Whitebackgroudheight - 0.07),
                left: size.width / 12,
                child: Text(
                  "Verification Code",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Positioned(
                  bottom: size.height * (Whitebackgroudheight - 0.1),
                  left: size.width / 10,
                  child: Text("Add text here")),
              Positioned(
                bottom: size.height / 3,
                width: size.width / 1.2,
                left: size.width / 12,
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      textInput("****", Icons.password,
                          input: TextInputType.number),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: size.height / 5,
                  width: size.width / 1.2,
                  left: size.width / 12,
                  child: Button(
                    text: "Verify Now",
                    color: Color(0xfffb716a),
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassPage()));
                    },
                  )),
              Positioned(
                bottom: size.height / 6.5,
                left: size.width / 2 - 30,
                child: Text(
                  "Resend",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFB716A),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
