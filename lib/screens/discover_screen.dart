import 'package:flutter/material.dart';
import 'package:haruhan/screens/discover_glass_screen.dart';

void main() {
  runApp(const DiscoverScreen());
}

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
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
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(44),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 375,
                  height: 44,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 24,
                        top: 12,
                        child: Container(
                          width: 54,
                          height: 21,
                          padding: const EdgeInsets.only(top: 1),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 44,
                child: Container(
                  width: 375,
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
                                        Text(
                                          'Discover',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 34,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w600,
                                            height: 1.0,
                                            letterSpacing: 0.37,
                                          ),
                                        ),
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
                                  Text(
                                    '다빈님 취향에 맞는 책을 추천하고 검색해요 ',
                                    style: TextStyle(
                                      color: Color(0x993C3C43),
                                      fontSize: 13,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w300,
                                      height: 1.0,
                                      letterSpacing: -0.24,
                                    ),
                                  ),
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
                                  Text(
                                    '이런 책은 어떠세요? ',
                                    style: subTitle,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: double.infinity,
                              height: 160,

                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal, // 수평 스크롤
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ImageContainer('src/파친코.png'),
                                    SizedBox(width: 20),
                                    ImageContainer('src/세이노.png'),
                                    SizedBox(width: 20),
                                    ImageContainer('src/파친코2.png'),
                                    SizedBox(width: 20),
                                    ImageContainer('src/몰입.png'),
                                  ],
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
                                  Text(
                                    '이번주 베스트셀러 Top 10',
                                    style: subTitle,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '2023.10.16~2023.10.22 기준',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w300,
                                      height: 1.0,
                                      letterSpacing: -0.24,
                                    ),
                                  ),
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
                                      BestsellerContainer('1', 'src/트렌드코리아.png', '트렌드 코리아 2024'),
                                      const SizedBox(height: 20),
                                      Container(
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(color: Color(0xFFDBDBDB)),
                                      ),
                                      const SizedBox(height: 20),
                                      BestsellerContainer('2', 'src/퓨처셀프.png', '퓨처셀프')
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

  Widget ImageContainer(String imagePath) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
       // boxShadow: [boxShadow],
      ),
    );
  }

  Widget BestsellerContainer(String num, String imagePath, String bookName){
    return Container(
      width: 343,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              num,
              style: BestSellerNum
          ),
          const SizedBox(width: 20),
          Container(
            width: 72,
            height: 97,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
              boxShadow: [ boxShadow],
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 130, // 너비를 130으로 설정
            child: Text(
                bookName,
                style: BestSellerTitle
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
              height: 33,
              child: Image.asset('src/chevron_fill.png')
          ),
        ],
      ),
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