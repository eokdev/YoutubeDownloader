// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, unused_import, unnecessary_new, unused_local_variable

import 'package:flutter/material.dart';
import 'networking.dart';
import 'youtube.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class Urllink extends StatefulWidget {
  @override
  State<Urllink> createState() => _UrllinkState();
}

class _UrllinkState extends State<Urllink> {
  @override
  Widget build(BuildContext context) {
    PageController _pagecontroller;
    TextEditingController _controller = TextEditingController();
    return Material(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            child: TextField(
              controller: _controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Paste the video link here",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff0B0B45),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff0B0B45),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_controller.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    margin: EdgeInsets.all(15),
                    content: Text(
                      "No link was pasted",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Color(0xff0B0B45),
                  ),
                );
              } else {
                Networking().downloadVideo(_controller.text.trim(), "Youtube");
                FocusScope.of(context).requestFocus(new FocusNode());
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Color(0xff0B0B45),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Download",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
