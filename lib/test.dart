// //  late WebViewController controller;
// //   bool _isLoading = true;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: PreferredSize(
// //         preferredSize: const Size.fromHeight(8),
// //         child: AppBar(
// //           flexibleSpace: Container(
// //             decoration: const BoxDecoration(
// //               color: Colors.black,
// //             ),
// //           ),
// //         ),
// //       ),
// //     body: Stack(
// //         children: <Widget>[
// //           WebView(
// //             initialUrl: "https://fmac.fujairah.ae/",
// //             javascriptMode: JavascriptMode.unrestricted,
            
// //             onPageStarted: (url) {
// //               setState(() {
// //                 _isLoading = true;
// //               });
// //             },
// //             onPageFinished: (url) {
// //               setState(() {
// //                 _isLoading = false;
// //               });
// //             },
// //             onWebViewCreated: (WebViewController __controller) {
// //               controller = __controller;
// //             },
// //           ),
// //           if (_isLoading)
// //             Center(
// //               child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),), // Customize as needed
// //             ),
// //         ],
// //       ),
// //     );
// //   } 




// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(new MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: InAppWebViewPage()
//     );
//   }
// }

// class InAppWebViewPage extends StatefulWidget {
//   @override
//   _InAppWebViewPageState createState() => new _InAppWebViewPageState();
// }

// class _InAppWebViewPageState extends State<InAppWebViewPage> {
//   InAppWebViewController _webViewController;
//   InAppWebViewController _webViewPopupController;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('InAppWebView Example'),
//         ),
//         body: SafeArea(
//           child: Container(
//               child: InAppWebView(
//                 initialData: InAppWebViewInitialData(
//                     data: """
// <!DOCTYPE html>
// <html lang="en">
// <head>
//     <meta charset="UTF-8">
//     <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
//     <meta http-equiv="X-UA-Compatible" content="ie=edge">
//     <title>Flutter InAppWebView</title>
// </head>
// <body>
//   <a style="margin: 50px; background: #333; color: #fff; font-weight: bold; font-size: 20px; padding: 15px; display: block;"
//     href="https://github.com/flutter"
//     target="_blank">
//     Click here to open https://github.com/flutter in a popup!
//   </a>
// </body>
// </html>
// """
//                 ),
//                 initialOptions: InAppWebViewGroupOptions(
//                     crossPlatform: InAppWebViewOptions(
//                       debuggingEnabled: true,
//                       // set this to true if you are using window.open to open a new window with JavaScript
//                       javaScriptCanOpenWindowsAutomatically: true
//                     ),
//                     android: AndroidInAppWebViewOptions(
//                       // on Android you need to set supportMultipleWindows to true,
//                       // otherwise the onCreateWindow event won't be called
//                       supportMultipleWindows: true
//                     )
//                 ),
//                 onWebViewCreated: (InAppWebViewController controller) {
//                   _webViewController = controller;
//                 },
//                 onCreateWindow: (controller, createWindowRequest) async {

//                   print("onCreateWindow");

//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         content: Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: 400,
//                           child: InAppWebView(
//                             // Setting the windowId property is important here!
//                             windowId: createWindowRequest.windowId,
//                             initialOptions: InAppWebViewGroupOptions(
//                                 crossPlatform: InAppWebViewOptions(
//                                     debuggingEnabled: true,
//                                 ),
//                             ),
//                             onWebViewCreated: (InAppWebViewController controller) {
//                               _webViewPopupController = controller;
//                             },
//                             onLoadStart: (InAppWebViewController controller, String url) {
//                               print("onLoadStart popup $url");
//                             },
//                             onLoadStop: (InAppWebViewController controller, String url) {
//                               print("onLoadStop popup $url");
//                             },
//                           ),
//                         ),
//                       );
//                     },
//                   );

//                   return true;
//                 },
//               ),
//             ),
//           ),
//       ),
//     );
//   }
// }