import 'package:flutter/material.dart';
import 'package:haruhan/screens/startbook_screen.dart';

class Mainhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: ListView(children: [
          HomeFrame(key: UniqueKey()),
        ]),
      ),
    );
  }
}

class HomeFrame extends StatefulWidget {
  const HomeFrame({required Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeFrame> {
  bool isBook1Selected = false;
  bool isBook2Selected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
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
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '나의 독서 현황을 확인해요',
                            style: TextStyle(
                              color: Color(0x993C3C43),
                              fontSize: 15,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 290,
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
                            '최근 30일간 16일 독서',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 343,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(children: []),
                          ),
                          const SizedBox(width: 30),
                          Container(
                            height: 195,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [],
                            ),
                          ),
                          const SizedBox(width: 30),
                          Container(
                            width: 28,
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(children: []),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Less',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                              height: 0.41,
                              letterSpacing: 0.37,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: ShapeDecoration(
                              color: Color(0xFFBFF3FF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: ShapeDecoration(
                              color: Color(0xFF6BFFFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: ShapeDecoration(
                              color: Color(0xFF21D8F1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: ShapeDecoration(
                              color: Color(0xFF006F92),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'More',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                              height: 0.41,
                              letterSpacing: 0.37,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                            child: Text(
                              '오늘의 독서 ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                            child: Text(
                              '최근 읽고 있는 책',
                              style: TextStyle(
                                color: Color(0x993C3C43),
                                fontSize: 15,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w200,
                                letterSpacing: 0.37,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 180,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isBook1Selected = true;
                                isBook2Selected = false;
                              });
                            },
                            child: Container(
                              width: isBook1Selected ? 120.20 : 109.20,
                              height: isBook1Selected ? 180 : 160,
                              child: Image.asset('assets/images/book1.png'),
                              decoration: BoxDecoration(
                                boxShadow: isBook1Selected
                                    ? [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 8,
                                          offset: Offset(0, 8),
                                          spreadRadius: 0,
                                        ),
                                      ]
                                    : [],
                              ),
                            ),
                          ),
                          const SizedBox(width: 30),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isBook1Selected = false;
                                isBook2Selected = true;
                              });
                            },
                            child: Container(
                              width: isBook2Selected ? 120.20 : 109.20,
                              height: isBook2Selected ? 180 : 160,
                              child: Image.asset('assets/images/book2.png'),
                              decoration: BoxDecoration(
                                boxShadow: isBook2Selected
                                    ? [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 8,
                                          offset: Offset(0, 1),
                                          spreadRadius: 0,
                                        ),
                                      ]
                                    : [],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 21),
                child: TextButton(
                  onPressed: () {
                    // 버튼 클릭시 동작을 정의합니다.
                    if (!isBook1Selected && !isBook2Selected) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text("알림"),
                            content: new Text("책을 선택해주세요"),
                            actions: <Widget>[
                              new TextButton(
                                child: new Text("닫기"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Startbook()),
                      );
                    }
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(16)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFF2F2F7)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Color(0x11000000)),
                    elevation: MaterialStateProperty.all<double>(10.0),
                  ),
                  child: Text(
                    '하루 한권하기',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0.2,
                    ),
                  ),
                ),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xEFF9F9F9),
                    border: Border(
                        top: BorderSide(color: Colors.grey.withOpacity(0.3)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/discover.png'),
                        Text(
                          'Discover',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0x4C3C3C43),
                            fontSize: 12,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/bookmark.png'),
                        Text(
                          'My Books',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0x4C3C3C43),
                            fontSize: 12,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/home.png'),
                        Text(
                          'Home',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF81D8CF),
                            fontSize: 12,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/community.png'),
                        Text(
                          'Community',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0x4C3C3C43),
                            fontSize: 12,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
