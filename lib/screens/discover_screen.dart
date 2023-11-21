import 'package:flutter/material.dart';
import 'package:haruhan/screens/discover_glass_screen.dart';

import 'discover_detail_screen.dart';

void main() {
  runApp(const DiscoverScreen());
}

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body : SingleChildScrollView(
          child: Discover1(),
        ),
      ),
    );
  }
}

class Discover1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Positioned(
                left: MediaQuery.of(context).size.width * 0.01,
                top: 44,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 685,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 97,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 343,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        DefaultTextStyle(style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 34,
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w600,
                                          height: 1.0,
                                          letterSpacing: 0.37,
                                        ), child: Text('Discover')),
                                        const SizedBox(width: 180),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Search()), // 두 번째 페이지로 이동
                                            );
                                          },
                                          child: SizedBox(
                                            height: 18,
                                            child: Image.asset('src/glass.png'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  DefaultTextStyle(style: TextStyle(
                                    color: Color(0x993C3C43),
                                    fontSize: 13,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w300,
                                    height: 1.0,
                                    letterSpacing: -0.24,
                                    ), child: Text('다빈님 취향에 맞는 책을 추천하고 검색해요 ')),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        height: 206,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 41,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DefaultTextStyle(style: subTitle, child: Text('이런 책은 어떠세요?')),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 160,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal, // 수평 스크롤
                                child: Container(
                                  alignment: Alignment.center,
                                  child : Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ImageContainer(context, 'src/파친코.png'),
                                      SizedBox(width: 20),
                                      ImageContainer(context,'src/세이노.png'),
                                      SizedBox(width: 20),
                                      ImageContainer(context,'src/파친코2.png'),
                                      SizedBox(width: 20),
                                      ImageContainer(context,'src/몰입.png'),
                                  ],
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        height: 334,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DefaultTextStyle(style: subTitle, child: Text('이번주 베스트셀러 Top 10')),
                                  const SizedBox(height: 5),
                                  DefaultTextStyle(style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w300,
                                    height: 1.0,
                                    letterSpacing: -0.24,
                                    ), child: Text('2023.10.16~2023.10.22 기준')),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                          Container(
                            width: double.infinity,
                            child : SingleChildScrollView(
                                // child : Container(
                                //   width: 343,
                                //   height: 269,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      BestsellerContainer(num: '1', imagePath: 'src/트렌드코리아.png', bookName: '트렌드 코리아 2024'),

                                      //BestsellerContainer('1', 'src/트렌드코리아.png', '트렌드 코리아 2024'),
                                      const SizedBox(height: 20),
                                      Container(
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(color: Color(0xFFDBDBDB)),
                                      ),
                                      const SizedBox(height: 20),
                                      BestsellerContainer(num: '2', imagePath: 'src/퓨처셀프.png', bookName: '퓨처셀프')

                                      //BestsellerContainer('2', 'src/퓨처셀프.png', '퓨처셀프')
                                    ],
                                ),
                              ),
                              //),
                          ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget ImageContainer(BuildContext context, String imagePath) {
    return Container(
      width: 110,
      child : InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Detail()),
          );
        },
        child : SizedBox(
          child: Image.asset(imagePath),
        )

      )
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage(imagePath),
      //     fit: BoxFit.fill,
      //   ),
      //  // boxShadow: [boxShadow],
      // ),
    );
  }


  TextStyle subTitle =TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w600,
  height: 1.0,
  letterSpacing: 0.37,
  );

  BoxShadow boxShadow = BoxShadow(
    color: Color(0x3F000000),
    blurRadius: 4,
    offset: Offset(0, 4),
    spreadRadius: 0,
  );
}

TextStyle BestSellerNum = TextStyle(
  color: Colors.black,
  fontSize: 25,
  fontFamily: 'SF Pro Text',
  fontWeight: FontWeight.w400,
  height: 0.03,
  letterSpacing: -0.24,
);

TextStyle BestSellerTitle = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontFamily: 'SF Pro Text',
  fontWeight: FontWeight.w400,
  height: 0.09,
  letterSpacing: -0.24,
);

class BestsellerContainer extends StatefulWidget {
  final String num;
  final String imagePath;
  final String bookName;

  const BestsellerContainer({
    required this.num,
    required this.imagePath,
    required this.bookName,
  });

  @override
  _BestsellerContainerState createState() => _BestsellerContainerState();
}

class _BestsellerContainerState extends State<BestsellerContainer> {
  bool isImageToggled = false;

  void toggleImage() {
    setState(() {
      isImageToggled = !isImageToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DefaultTextStyle(style: BestSellerNum, child: Text(widget.num)),
          const SizedBox(width: 20),
          Container(
            width: 72,
            height: 97,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 130,
            child:
            DefaultTextStyle(style: BestSellerTitle, child: Text(widget.bookName)),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: toggleImage,
            child: SizedBox(
              height: 33,
              child: Image.asset(
                isImageToggled ? 'src/chevron_fill.png' : 'src/chevron.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

