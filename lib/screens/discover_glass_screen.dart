import 'package:flutter/material.dart';

void main() {
  runApp(const DiscoverGlassScreen());
}

class DiscoverGlassScreen extends StatelessWidget {
  const DiscoverGlassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Search(),
        ]),
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          //padding: const EdgeInsets.only(top: 44, bottom: 83),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(44),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
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
                            height: 80,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 343,
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                                  decoration: ShapeDecoration(
                                    color: Color(0x28767680),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                        child: Image.asset('src/glass.png'),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '읽고 싶은 책을 검색해주세요',
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.3799999952316284),
                                              fontSize: 17,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                              height: 1.0,
                                              letterSpacing: -0.41,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 375,
                      height: 200,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 150,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '최근 검색어',
                                  style: title,
                                ),
                                const SizedBox(height: 7,),
                                historyContainer('트렌드 코리아 2024'),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  decoration: BoxDecoration(color: Color(0xFFDBDBDB)),
                                ),
                                historyContainer('파친코 1'),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  decoration: BoxDecoration(color: Color(0xFFDBDBDB)),
                                ),
                                historyContainer('파친코 2'),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  decoration: BoxDecoration(color: Color(0xFFDBDBDB)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 375,
                      height: 179,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 343,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '실시간 인기 검색어',
                                  style: title,
                                ),
                                const SizedBox(height: 7,),
                                popularContainer('1', '세이노의 가르침'),
                                popularContainer('2', 'ETS 토익 정기시험 기출문제집 1000 Vol.3'),
                                popularContainer('3', '물고기는 존재하지 않는다'),
                                popularContainer('4', '코스모스'),
                                popularContainer('5', '이기적 유전자 The Selfish Gene'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );

  }

  Widget popularContainer(String num, String bookName){
    return Container(
      width: 343,
      height: 30,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            num,
            style: pnum,
          ),
          const SizedBox(width: 10),
          Text(
            bookName,
            style: ptext,
          ),
        ],
      ),
    );
  }
  Widget historyContainer(String bookName){
    return Container(
      width: 343,
      height: 30,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
            child: Image.asset('src/clock.png'),
          ),
          const SizedBox(width: 10),
          Container(
            width: 250,
            child: Text(
              bookName,
              style: search,
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            height: 20,
            child: Image.asset('src/x.png'),
          ),
        ],
      ),
    );
  }

  TextStyle title = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
    height: 1.0,
    letterSpacing: 0.37,
  );

  TextStyle search = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w300,
    height: 1.0,
    letterSpacing: -0.24,
  );

  TextStyle pnum = TextStyle(
    color: Color(0xFF3ACDBD),
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    height: 1.0,
    letterSpacing: -0.24,
  );

  TextStyle ptext =TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontFamily: 'SF Pro Text',
  fontWeight: FontWeight.w300,
  height: 0.09,
  letterSpacing: -0.24,
  );
}