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

Widget textinput(String hint, IconData icon) {
  return TextFormField(
    decoration: InputDecoration(
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
