import 'package:efs1/pages/tools.dart';
import 'package:flutter/material.dart';
import 'package:efs1/pages/finger_print.dart';

class ForgetPassPage extends StatefulWidget {
  const ForgetPassPage({Key? key}) : super(key: key);

  @override
  State<ForgetPassPage> createState() => _ForgetPassPageState();
}

final Whitebackgroudheight = 0.6;
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _ForgetPassPageState extends State<ForgetPassPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).accentColor,
      appBar: myAppBar(
        leadingf: () => Navigator.pop(context),
        actionf: () => Navigator.pop(context),
        titre: "Password",
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
                  image: AssetImage("assets/forg.png"),
                ),
              ),
              Positioned(
                  bottom: size.height * (Whitebackgroudheight - 0.07),
                  left: size.width / 12,
                  child: Container(
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          fontStyle: FontStyle.italic),
                    ),
                  )),
              Positioned(
                  bottom: size.height * (Whitebackgroudheight - 0.1),
                  left: size.width / 10,
                  child: Container(
                    child: Text(
                      "Enter your email adress to reset your password ",
                      // style:
                      //     TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  )),
              Positioned(
                  bottom: size.height / 3,
                  width: size.width / 1.2,
                  left: size.width / 12,
                  child: textInput("mail", Icons.mail)),
              Positioned(
                  bottom: size.height / 5,
                  width: size.width / 1.2,
                  left: size.width / 12,
                  child: Button(
                      color: Color(0xfffb716a),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FingerPrint()));
                      },
                      text: "Send email"))
            ],
          ),
        ),
      ),
    );
  }
}
