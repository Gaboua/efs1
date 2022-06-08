import 'package:efs1/pages/fgpass.dart';
import 'package:efs1/pages/register.dart';
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
                  image: AssetImage("assets/Welcome.png"),
                ),
              ),
              Positioned(
                bottom: size.height < 550
                    ? size.height * (Whitebackgroudheight - 0.07)
                    : size.height * (Whitebackgroudheight - 0.1),
                left: size.width / 12,
                child: Text(
                  "Welcome Back !",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Positioned(
                  bottom: size.height < 550
                      ? size.height * (Whitebackgroudheight - 0.1)
                      : size.height * (Whitebackgroudheight - 0.13),
                  left: size.width / 10,
                  child: Text("Enter your")),
              Positioned(
                top: size.height < 550
                    ? size.height * (1 - Whitebackgroudheight + 0.135)
                    : size.height * (1 - Whitebackgroudheight + 0.165),
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
                      textInput("Password", Icons.lock,
                          input: TextInputType.emailAddress),
                      // SizedBox(
                      //   height: size.height / 30,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassPage()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Forget Password ?",
                                style: TextStyle(
                                    color: Color(0xfffb716a), fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height < 550
                            ? size.height / 120
                            : size.height / 60,
                      ),
                      SizedBox(
                        width: size.width / 1.2,
                        child: Button(
                          text: "Sign In",
                          color: Color(0xfffb716a),
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Don't Have account?"),
                          GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Sign Up",
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
