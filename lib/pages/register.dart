import 'package:efs1/consts.dart';
import 'package:efs1/pages/otp.dart';
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

final Whitebackgroudheight = 0.6;

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).accentColor,
      appBar: myAppBar(
        leadingf: () => Navigator.pop(context),
        actionf: () => Navigator.pop(context),
        titre: "Register",
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
                  image: AssetImage(
                      "assets/Screenshot_2022-06-04_124037-removebg-preview.png"),
                ),
              ),
              Positioned(
                bottom: size.height * (Whitebackgroudheight - 0.07),
                left: size.width / 12,
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Positioned(
                  bottom: size.height * (Whitebackgroudheight - 0.1),
                  left: size.width / 10,
                  child: Text("Enter your")),
              Positioned(
                top: size.height * (1 - Whitebackgroudheight + 0.135),
                width: size.width / 1.2,
                left: size.width / 12,
                child: Form(
                  child: Column(
                    children: [
                      textInput("User Name", Icons.person),
                      SizedBox(
                        height: size.height < 550
                            ? size.height / 60
                            : size.height / 30,
                      ),
                      textInput("Your Email", Icons.email,
                          input: TextInputType.emailAddress),
                      SizedBox(
                        height: size.height < 550
                            ? size.height / 60
                            : size.height / 30,
                      ),
                      textInput("Your phone Number", Icons.phone,
                          input: TextInputType.number),
                      SizedBox(
                        height: size.height < 550
                            ? size.height / 80
                            : size.height / 40,
                      ),
                      SizedBox(
                        width: size.width / 1.2,
                        child: Button(
                          text: "Continue",
                          color: Color(0xfffb716a),
                          onClick: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Otp()));
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Already Have account?"),
                          GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff120879),
                                ),
                              )),
                        ],
                      ),
                    ],
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
