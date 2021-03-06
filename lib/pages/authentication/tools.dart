import 'package:flutter/material.dart';

import '../../consts.dart';

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
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: leadingf,
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                size: 13,
              )),
          actions: [
            IconButton(
              onPressed: actionf,
              icon: Icon(
                Icons.close_sharp,
                size: 17.5,
              ),
            ),
          ],
        );
  final String titre;
  final void Function()? actionf;
  final void Function()? leadingf;
}

Widget textInput(String hint, IconData icon,
    {TextInputType input = TextInputType.text}) {
  return TextFormField(
    keyboardType: input,
    textAlign: hint == "****" ? TextAlign.center : TextAlign.start,
    decoration: InputDecoration(
      contentPadding: hint == "****"
          ? EdgeInsets.only(
              right: 45,
            )
          : EdgeInsets.symmetric(vertical: 0),
      hintText: hint,
      prefixIcon: Icon(
        icon,
        color: Color(0xff5D5D5D),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
        borderSide: BorderSide(color: colorBlack),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
  );
}

class Button extends ElevatedButton {
  final void Function()? onClick;
  final String text;
  final Color color;
  Button({
    required this.onClick,
    required this.text,
    required this.color,
  }) : super(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
              primary: color,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              elevation: 3,
              padding: EdgeInsets.symmetric(vertical: 10),
              textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          child: Text(text),
        );
}
