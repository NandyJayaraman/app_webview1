//  late WebViewController controller;
//   bool _isLoading = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(8),
//         child: AppBar(
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               color: Colors.black,
//             ),
//           ),
//         ),
//       ),
//     body: Stack(
//         children: <Widget>[
//           WebView(
//             initialUrl: "https://fmac.fujairah.ae/",
//             javascriptMode: JavascriptMode.unrestricted,
            
//             onPageStarted: (url) {
//               setState(() {
//                 _isLoading = true;
//               });
//             },
//             onPageFinished: (url) {
//               setState(() {
//                 _isLoading = false;
//               });
//             },
//             onWebViewCreated: (WebViewController __controller) {
//               controller = __controller;
//             },
//           ),
//           if (_isLoading)
//             Center(
//               child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),), // Customize as needed
//             ),
//         ],
//       ),
//     );
//   } 

