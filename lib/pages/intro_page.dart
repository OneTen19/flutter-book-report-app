import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book_report_app/pages/home_page.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              // title and subtitle
              Column(
                children: [
                  // title
                  Text(
                    '작은 책방',
                    style: TextStyle(
                        fontSize: 40, color: Colors.white, fontFamily: "UhBee"),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // subtitle
                  Text(
                    '나의 작은 독서 공간',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.yellow,
                        fontFamily: "UhBee"),
                  ),
                ],
              ),

              // enter now button
              GestureDetector(
                // MaterialPageRoute를 사용했었는데 화면 전환 애니메이션이 맘에 안 들어서 교체
                onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      '들어가기',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "UhBee",
                        fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
