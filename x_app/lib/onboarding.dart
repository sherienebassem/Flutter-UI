import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Main Stack

      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (BuildContext context, int index) {
              //Sub Stack

              return Stack(
                children: <Widget>[
                  Container(
                    //Image from assets
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage("assets/images/bg1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    //Responsive
                    width: MediaQuery.of(context).size.width,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                             child: Icon(
                            Icons.adjust,
                            color: Colors.white,
                            size: 150,
                          ),
                          offset: Offset(0, -100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            "SHERIEN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48, right: 48),
                          child: Text(
                            "Flutter App Tester Training Powered By Sherien Bassem From Online Tutorial",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            itemCount: 4,
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: RaisedButton(
                color: Colors.red.shade900,
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}