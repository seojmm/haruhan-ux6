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
  PageController pageController = PageController(initialPage: 1);
  int readingDays = 16;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      if (pageController.page == 0) {
        setState(() {
          readingDays = 6;
        });
      } else if (pageController.page == 2) {
        setState(() {
          readingDays = 0;
        });
      } else {
        setState(() {
          readingDays = 16;
        });
      }
    });
  }

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
                height: 320,
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
                            '최근 30일간 $readingDays일 독서',
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
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              pageController.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Image.asset('assets/images/left_vector.png'),
                          ),
                          Container(
                            width: 270,
                            height: 225,
                            child: PageView(
                              controller: pageController,
                              children: [
                                GridView.builder(
                                  itemCount: 30,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 6, // 가로에 표시할 항목 수를 설정합니다.
                                    childAspectRatio:
                                        1, // 가로 / 세로 비율을 설정합니다. 1로 설정하면 정사각형이 됩니다.
                                    crossAxisSpacing: 3, // 열 사이의 공간을 설정합니다.
                                    mainAxisSpacing: 3,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ElevatedButton(
                                      onPressed: () {
                                        print('Button $index clicked!');
                                        // 여기서 index 값에 따라 다른 동작을 수행하도록 로직을 구현하면 됩니다.
                                        // 예를 들어, 다음과 같이 할 수 있습니다:
                                        switch (index) {
                                          case 25:
                                            // 첫 번째 버튼이 눌렸을 때의
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Text('11월 16일 독서'),
                                                  content: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text('오늘 읽은 책: 파친코 2'),
                                                      Text(
                                                          '오늘의 독서 시간: 1시간 15분 10초'),
                                                      Text(
                                                          '오늘 읽은 페이지: ~280페이지'),
                                                    ],
                                                  ),
                                                  actions: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text('확인'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          // 그 외에도 필요한 만큼 case를 추가하면 됩니다.
                                        }
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(index ==
                                                0
                                            ? Color(0xFFD9D9D9)
                                            : index == 1
                                                ? Color(0xFFD9D9D9)
                                                : index == 2
                                                    ? Color(0xFFD9D9D9)
                                                    : index == 3
                                                        ? Color(0xFFD9D9D9)
                                                        : index == 4
                                                            ? Color(0xFFD9D9D9)
                                                            : index == 5
                                                                ? Color(
                                                                    0xFFD9D9D9)
                                                                : index == 6
                                                                    ? Color(
                                                                        0xFFD9D9D9)
                                                                    : index == 7
                                                                        ? Color(
                                                                            0xFFD9D9D9)
                                                                        : index ==
                                                                                8
                                                                            ? Color(0xFFD9D9D9)
                                                                            : index == 9
                                                                                ? Color(0xFFD9D9D9)
                                                                                : index == 10
                                                                                    ? Color(0xFFD9D9D9)
                                                                                    : index == 11
                                                                                        ? Color(0xFFD9D9D9)
                                                                                        : index == 12
                                                                                            ? Color(0xFFD9D9D9)
                                                                                            : index == 13
                                                                                                ? Color(0xFFD9D9D9)
                                                                                                : index == 14
                                                                                                    ? Color(0xFFD9D9D9)
                                                                                                    : index == 15
                                                                                                        ? Color(0xFFD9D9D9)
                                                                                                        : index == 16
                                                                                                            ? Color(0xFFD9D9D9)
                                                                                                            : index == 17
                                                                                                                ? Color(0xFFD9D9D9)
                                                                                                                : index == 18
                                                                                                                    ? Color(0xFFD9D9D9)
                                                                                                                    : index == 19
                                                                                                                        ? Color(0xFFBFF3FF)
                                                                                                                        : index == 20
                                                                                                                            ? Color(0xFFD9D9D9)
                                                                                                                            : index == 21
                                                                                                                                ? Color(0xFFD9D9D9)
                                                                                                                                : index == 22
                                                                                                                                    ? Color(0xFFD9D9D9)
                                                                                                                                    : index == 23
                                                                                                                                        ? Color(0xFFBFF3FF)
                                                                                                                                        : index == 24
                                                                                                                                            ? Color(0xFFD9D9D9)
                                                                                                                                            : index == 25
                                                                                                                                                ? Color(0xFF21D8F1)
                                                                                                                                                : index == 26
                                                                                                                                                    ? Color(0xFFD9D9D9)
                                                                                                                                                    : index == 27
                                                                                                                                                        ? Color(0xFF6BFFFF)
                                                                                                                                                        : index == 28
                                                                                                                                                            ? Color(0xFF006F92)
                                                                                                                                                            : Color(0xFFD9D9D9)),
                                        // 버튼의 배경색을 설정합니다.
                                      ),
                                      child: Container(),
                                    );
                                  },
                                ),
                                GridView.builder(
                                  itemCount: 30,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 6, // 가로에 표시할 항목 수를 설정합니다.
                                    childAspectRatio:
                                        1, // 가로 / 세로 비율을 설정합니다. 1로 설정하면 정사각형이 됩니다.
                                    crossAxisSpacing: 3, // 열 사이의 공간을 설정합니다.
                                    mainAxisSpacing: 3,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ElevatedButton(
                                      onPressed: () {
                                        print('Button $index clicked!');
                                        // 여기서 index 값에 따라 다른 동작을 수행하도록 로직을 구현하면 됩니다.
                                        // 예를 들어, 다음과 같이 할 수 있습니다:
                                        switch (index) {
                                          case 25:
                                            // 첫 번째 버튼이 눌렸을 때의
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Text('11월 16일 독서'),
                                                  content: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text('오늘 읽은 책: 파친코 2'),
                                                      Text(
                                                          '오늘의 독서 시간: 1시간 15분 10초'),
                                                      Text(
                                                          '오늘 읽은 페이지: ~280페이지'),
                                                    ],
                                                  ),
                                                  actions: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text('확인'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          // 그 외에도 필요한 만큼 case를 추가하면 됩니다.
                                        }
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(index ==
                                                0
                                            ? Color(0xFFBFF3FF)
                                            : index == 1
                                                ? Color(0xFFD9D9D9)
                                                : index == 2
                                                    ? Color(0xFFBFF3FF)
                                                    : index == 3
                                                        ? Color(0xFF6BFFFF)
                                                        : index == 4
                                                            ? Color(0xFFBFF3FF)
                                                            : index == 5
                                                                ? Color(
                                                                    0xFF21D8F1)
                                                                : index == 6
                                                                    ? Color(
                                                                        0xFF21D8F1)
                                                                    : index == 7
                                                                        ? Color(
                                                                            0xFFD9D9D9)
                                                                        : index ==
                                                                                8
                                                                            ? Color(0xFFD9D9D9)
                                                                            : index == 9
                                                                                ? Color(0xFFBFF3FF)
                                                                                : index == 10
                                                                                    ? Color(0xFFD9D9D9)
                                                                                    : index == 11
                                                                                        ? Color(0xFF6BFFFF)
                                                                                        : index == 12
                                                                                            ? Color(0xFF006F92)
                                                                                            : index == 13
                                                                                                ? Color(0xFFBFF3FF)
                                                                                                : index == 14
                                                                                                    ? Color(0xFF6BFFFF)
                                                                                                    : index == 15
                                                                                                        ? Color(0xFFD9D9D9)
                                                                                                        : index == 16
                                                                                                            ? Color(0xFFD9D9D9)
                                                                                                            : index == 17
                                                                                                                ? Color(0xFFD9D9D9)
                                                                                                                : index == 18
                                                                                                                    ? Color(0xFFD9D9D9)
                                                                                                                    : index == 19
                                                                                                                        ? Color(0xFF6BFFFF)
                                                                                                                        : index == 20
                                                                                                                            ? Color(0xFF21D8F1)
                                                                                                                            : index == 21
                                                                                                                                ? Color(0xFFBFF3FF)
                                                                                                                                : index == 22
                                                                                                                                    ? Color(0xFFBFF3FF)
                                                                                                                                    : index == 23
                                                                                                                                        ? Color(0xFFD9D9D9)
                                                                                                                                        : index == 24
                                                                                                                                            ? Color(0xFFD9D9D9)
                                                                                                                                            : index == 25
                                                                                                                                                ? Color(0xFF006F92)
                                                                                                                                                : Color(0xFFD9D9D9)),
                                        // 버튼의 배경색을 설정합니다.
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            side: index == 29
                                                ? BorderSide(width: 3)
                                                : BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                      ),
                                      child: Container(),
                                    );
                                  },
                                ),
                                GridView.builder(
                                  itemCount: 30,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 6, // 가로에 표시할 항목 수를 설정합니다.
                                    childAspectRatio:
                                        1, // 가로 / 세로 비율을 설정합니다. 1로 설정하면 정사각형이 됩니다.
                                    crossAxisSpacing: 3, // 열 사이의 공간을 설정합니다.
                                    mainAxisSpacing: 3,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ElevatedButton(
                                      onPressed: () {
                                        print('Button $index clicked!');
                                        // 여기서 index 값에 따라 다른 동작을 수행하도록 로직을 구현하면 됩니다.
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(Color(
                                                0xFFD9D9D9)), // 버튼의 배경색을 설정합니다.
                                      ),
                                      child: null,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Image.asset('assets/images/Vector.jpg'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 3),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Today',
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
                          Row(
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
                        Image.asset('assets/images/discover_home.png'),
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
                        Image.asset('assets/images/bookmark_home.png'),
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
                        Image.asset('assets/images/home_home.png'),
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
                        Image.asset('assets/images/community_home.png'),
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
