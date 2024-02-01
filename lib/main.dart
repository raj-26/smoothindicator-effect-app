import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smoothpageindicator_dart/pages/page_1.dart';
import 'package:smoothpageindicator_dart/pages/page_2.dart';
import 'package:smoothpageindicator_dart/pages/page_3.dart';
import 'package:smoothpageindicator_dart/pages/page_4.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //page view
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 20,
              dotWidth: 20,
              spacing: 16,
              // verticalOffset: 50,
              // jumpScale: 2,
            ),
          ),
        ],
      ),
    );;
  }
}


