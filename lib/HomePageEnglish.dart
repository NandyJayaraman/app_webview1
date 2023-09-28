import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePageEnglish extends StatefulWidget {
  const HomePageEnglish({super.key});

 @override
  _MyHomePageState createState() => _MyHomePageState();
  
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _MyHomePageState extends State<HomePageEnglish>
 {

  @override
  Widget build(BuildContext context) {
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
      body: InAppWebView(
         initialUrlRequest: URLRequest(url: Uri.parse("https://fmac.fujairah.ae/en/pages/home.aspx")),
        //initialUrl: 'https://fmac.fujairah.ae/',
        initialOptions: InAppWebViewGroupOptions(
           crossPlatform: InAppWebViewOptions(
          // debuggingEnabled: true, // Enable debugging
          ),
         
          android: AndroidInAppWebViewOptions(
           
            allowFileAccess: true,
          ),
          ios: IOSInAppWebViewOptions(
           
            allowsInlineMediaPlayback: true,
          ),
        ),
        onWebViewCreated: (controller) {
        },
      
      ),
    );
  }
}
