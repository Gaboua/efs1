import 'package:flutter/material.dart';

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
