import 'dart:io';
import 'package:app_webview1/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:http/http.dart' as http;

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        //useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class HomePage_ar extends StatefulWidget {
  const HomePage_ar({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage_ar> {
  int _selectedIndex = 0;
  CookieManager cookieManager = CookieManager.instance();

  @override
  Widget build(BuildContext context) {
    // return  WillPopScope(
    //   onWillPop: () async {
    //     // Handle back button press here
    //     // You can navigate back, show a confirmation dialog, or perform any desired action.
    //     return true; // Return true to allow the back navigation or false to prevent it.
    //   },
    //   child:
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(8),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse("https://fmac.fujairah.ae/"),
            ),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                  // javaScriptEnabled: true,
                  javaScriptCanOpenWindowsAutomatically: true
                  // useCookie: true,
                  //debuggingEnabled: true, // Enable debugging
                  ),
              android: AndroidInAppWebViewOptions(
                  allowContentAccess: true,
                  allowFileAccess: true,
                  thirdPartyCookiesEnabled: true,
                  supportMultipleWindows: true),
              ios: IOSInAppWebViewOptions(
                allowsInlineMediaPlayback: true,
              ),
            ),
            onWebViewCreated: (controller) {},
        
            // onLoadStart: (controller, url) {
            //     setState(() {
            //       _backButton = false;
            //     });
            //   },
            //   onLoadStop: (controller, url) {
            //     setState(() {
            //       _backButton = true;
            //     });
            //   },
          ),

          //       if (_backButton)
          // Positioned(
          //   top: 40, // Adjust the position as needed
          //   left: 20, // Adjust the position as needed
          //   child: IconButton(
          //     icon: Icon(Icons.arrow_back,color: Colors.white,),
          //     onPressed: () {
          //       if (_webViewController != null) {
          //         _webViewController!.goBack();
          //       }
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
