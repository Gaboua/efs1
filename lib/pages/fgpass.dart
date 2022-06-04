import 'package:efs1/pages/tools.dart';
import 'package:flutter/material.dart';

class ForgetPassPage extends StatefulWidget {
  const ForgetPassPage({Key? key}) : super(key: key);

  @override
  State<ForgetPassPage> createState() => _ForgetPassPageState();
}

final Whitebackgroudheight = 0.6;
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
String? email;
String? password;
Color color = Colors.green;

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
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              child: Image(image: AssetImage('../assets/forg.png')),
              top: size.height / 7.5,
              left: size.width / 2.7,
              width: size.width / 4,
              height: size.width / 4,
            ),
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
                  ),
                )),
            Positioned(
              bottom: size.height * Whitebackgroudheight - 1,
              child: Container(
                  height: size.height * 0.04,
                  width: size.width / 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(
                        color: Color(0xff120879),
                      ),
                      right: BorderSide(
                        color: Color(0xff120879),
                      ),
                      bottom: BorderSide(color: Colors.white),
                    ),
                  )),
            ),
            Positioned(
              bottom: size.height * Whitebackgroudheight,
              child: Container(
                  height: size.height * 0.05,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color(0xff120879),
                        ),
                        right: BorderSide(color: Color(0xff120879)),
                        bottom: BorderSide(color: Colors.white),
                        left: BorderSide(color: Colors.white),
                      ),
                      color: Color(0xff120879),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(26),
                      ))),
            ),
            Positioned(
                top: size.height * 0.43,
                left: size.width * 0.15,
                child: Container(
                  child: Text(
                    "Forget Password ?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Font1",
                        fontSize: 30,
                        fontStyle: FontStyle.italic),
                  ),
                )),
            Positioned(
                top: size.height * 0.48,
                left: size.width * 0.15,
                child: Container(
                  child: Text(
                    "Enter your email adress to reset your password ",
                    style: TextStyle(
                        fontFamily: "Font1",
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                  ),
                )),
            Positioned(
              top: size.height * 0.7,
              left: size.width * 0.15,
              width: size.width * 0.7,
              height: size.height * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 102, 102, 1),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                child: Text("aa"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
