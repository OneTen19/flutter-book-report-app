import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // background image
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/intro_page_background_image.jpg'),
            fit: BoxFit.cover
        ),
      ),

      // IntroPage content
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              // title

              // subtitle

              // start now button
            ],
          ),
        ),
      ),
    );
  }
}
