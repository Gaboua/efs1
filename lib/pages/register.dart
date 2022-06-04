import 'package:efs1/consts.dart';
import 'package:efs1/pages/tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

final Whitebackgroudheight = 0.65;

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).accentColor,
      appBar: myAppBar(
        leadingf: () => Navigator.pop(context),
        actionf: () => Navigator.pop(context),
        titre: "Register",
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
            ),
            Positioned(
              bottom: size.height * Whitebackgroudheight + 15,
              left: size.width / 3.4,
              child: Image(
                width: size.height / 4,
                height: size.height / 5,
                image: AssetImage(
                    "assets/Screenshot_2022-06-04_124037-removebg-preview.png"),
              ),
            ),
            Positioned(
              bottom: size.height * Whitebackgroudheight - 50,
              child: Text(
                "Register",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Positioned(child: Text("Enter your")),
            Positioned(
              bottom: size.height / 5.5,
              width: size.width / 1.2,
              left: size.width / 12,
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textInput("User Name", Icons.person),
                    SizedBox(
                      height: 20,
                    ),
                    textInput("Your Email", Icons.email),
                    SizedBox(
                      height: 20,
                    ),
                    textInput("Your phone Number", Icons.phone),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: size.height / 9,
                width: size.width / 1.2,
                left: size.width / 12,
                child: Button(
                  text: "Continue",
                  onClick: () {},
                )),
            Positioned(
              bottom: size.height / 11,
              left: size.width / 3.5,
              child: Text("Already Have account?"),
            ),
            Positioned(
              bottom: size.height / 15.7,
              right: size.width / 6,
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                  primary: Color.fromARGB(255, 24, 20, 73),
                ),
                onPressed: () {},
                child: Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
