import 'package:app_webview1/HomePageEnglish.dart';
import 'package:app_webview1/main.dart';
import 'package:flutter/material.dart';

class landingPage extends StatelessWidget {
  const landingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BackgroundImageWithButtons(),
      ),
    );
  }
}

class BackgroundImageWithButtons extends StatelessWidget {

  //  bool _isLoading = true;  
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/FMAC_new.png',
          fit: BoxFit.cover,
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(5),
              height: 200,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                    width: 150, // Change the width of the button
                    child: OutlinedButton(
                      onPressed: () {
                        print("Button English clicked");
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  HomePageEnglish(),
                            ),
                          );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(
                          color: Color(0xFFF9D38A),
                        ),
                      ),
                      child: Text(
                        'English',
                        style: TextStyle(
                          color: Color(0xFFF9D38A),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 150,
                    child: OutlinedButton(
                      onPressed: () {
                        print("Button Arabic(عربي) clicked");
                       
                         Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  HomePage_ar(),
                            ),
                          );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(
                          color: Color(0xFFF9D38A),
                        ),
                      ),
                      child: Text(
                        'عربي',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          
                          fontSize: 20,
                          color: Color(0xFFF9D38A),
                        ),
                      ),
                    ),
                  ),
                 
                 
                ],
              ),
            )),
      ],
    );
  }
}
