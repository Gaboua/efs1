import 'package:flutter/material.dart';

import '../consts.dart';

class myAppBar extends AppBar {
  // ignore: use_key_in_widget_constructors
  myAppBar({
    required this.actionf,
    required this.leadingf,
    required this.titre,
  }) : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            titre,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: leadingf,
              icon: Icon(
                Icons.arrow_back_ios,
                size: 15,
              )),
          actions: [
            IconButton(
              onPressed: actionf,
              icon: Text(
                "×",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        );
  final String titre;
  final void Function()? actionf;
  final void Function()? leadingf;
}

Widget textInput(String hint, IconData icon) {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10),
      hintText: hint,
      prefixIcon: Icon(
        icon,
        color: colorBlack,
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(color: colorBlack),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
  );
}

class Button extends ElevatedButton {
  final void Function()? onClick;
  final String text;
  Button({
    required this.onClick,
    required this.text,
  }) : super(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
              primary: buttonColor,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              elevation: 3,
              padding: EdgeInsets.symmetric(vertical: 10),
              textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          child: Text(text),
        );
}
