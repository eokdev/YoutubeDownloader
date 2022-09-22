// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, unused_field, unrelated_type_equality_checks, unused_local_variable

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Youtube extends StatefulWidget {
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  WebViewController? _controller;
  bool isLoading = true;
  bool? _showdownloadbutton = false;
  Future<void> checkbutton() async {
    if (await _controller!.canGoBack()) {
      setState(() {
        _showdownloadbutton = true;
      });
    } else {
      setState(() {
        _showdownloadbutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    checkbutton();
    return Stack(
      children: [
        WillPopScope(
          onWillPop: () async {
            if (await _controller!.canGoBack()) {
              _controller!.goBack();
            }
            return false;
          },
          child: Scaffold(
            body: WebView(
              initialUrl: "https://www.youtube.com",
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (url) {
                setState(() {
                  //hide you progressbar here
                  isLoading = false;
                });
              },
              onWebViewCreated: (controller) {
                _controller = controller;
              },
            ),
            floatingActionButton: _showdownloadbutton == false
                ? Container()
                : FloatingActionButton(
                    backgroundColor: Color(0xff0B0B45),
                    child: Icon(
                      Icons.download,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      final controller = await _controller!.currentUrl();
                      final tittle = await _controller!.getTitle();
                      Networking().downloadVideo(controller!, "$tittle");
                    },
                  ),
          ),
        ),
        isLoading
            ? SpinKitWanderingCubes(
                color: Color(0xff0B0B45),
              )
            : Container()
      ],
    );
  }
}
