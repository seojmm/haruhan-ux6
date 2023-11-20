import 'dart:async';

import 'package:flutter/material.dart';
import 'package:haruhan/screens/finishbook_screen.dart';
import 'package:lottie/lottie.dart';

class Startbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: ListView(children: [
          VFrame(key: UniqueKey()),
        ]),
      ),
    );
  }
}

class VFrame extends StatefulWidget {
  const VFrame({required Key key}) : super(key: key);

  @override
  _VFrameState createState() => _VFrameState();
}

class _VFrameState extends State<VFrame> {
  Timer? _timer;
  int _seconds = 0;
  int _minutes = 0;
  int _hours = 0;
  bool _isRunning = false;
  bool _isAnimationPlaying = false;
  TextEditingController _textEditingController = TextEditingController();

  void recordDialog() {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("인상 깊은 구절 기록하기"),
          content: TextField(
            controller: _textEditingController,
          ),
          actions: <Widget>[
            TextButton(
              child: Text("취소"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("저장하기"),
              onPressed: () {
                if (_textEditingController.text.isEmpty) {
                  scaffoldMessenger.showSnackBar(
                    SnackBar(content: Text('저장할 내용이 없습니다.')),
                  );
                } else {
                  scaffoldMessenger.showSnackBar(
                    SnackBar(content: Text('저장하였습니다.')),
                  );
                  _textEditingController.text = '';
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
        if (_seconds == 60) {
          _seconds = 0;
          _minutes++;
        }
        if (_minutes == 60) {
          _minutes = 0;
          _hours++;
        }
      });
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isRunning = false;
    });
  }

  void _handleStartButtonPressed() {
    if (!_isRunning) {
      _startTimer();
      setState(() {
        _isRunning = true;
        _isAnimationPlaying = true;
      });
    } else {
      _stopTimer();
      setState(() {
        _isAnimationPlaying = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                height: 80,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '다빈님은 하루한권 ing...',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                              letterSpacing: 0.37,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              '파친코 1을 읽고 있어요',
                              style: TextStyle(
                                color: Color(0x993C3C43),
                                fontSize: 13,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w300,
                                height: 0.12,
                                letterSpacing: -0.24,
                              ),
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
                width: double.infinity,
                height: 170,
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${_hours.toString().padLeft(2, '0')} : ${_minutes.toString().padLeft(2, '0')} : ${_seconds.toString().padLeft(2, '0')}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0.05,
                        letterSpacing: 0.37,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: _isAnimationPlaying
                    ? Lottie.asset(
                        'assets/lottie/time-going.json',
                        width: 200,
                      )
                    : Lottie.asset(
                        'assets/lottie/time-stopped.json',
                        width: 200,
                      ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _handleStartButtonPressed();
                      },
                      child: Text(
                        _isRunning ? 'Stop' : 'Start',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0x99F2F2F7),
                          padding: EdgeInsets.fromLTRB(40, 14, 40, 14)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Finishbook()),
                        );
                      },
                      child: Text(
                        'Finish',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0x99F2F2F7),
                          padding: EdgeInsets.fromLTRB(40, 14, 40, 14)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // 버튼이 클릭되었을 때 동작할 코드를 작성합니다.
                        recordDialog();
                      },
                      child: Row(
                        children: [
                          Text(
                            '인상 깊은 구절 기록하기',
                            style: TextStyle(
                              color: Color(0x993C3C43),
                              fontSize: 17,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w300,
                              height: 1,
                              letterSpacing: -0.24,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 28,
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                // 이미지에 대한 스타일이나 배경 설정을 추가합니다.
                                ),
                            child: Image.asset('assets/images/Vector.jpg'),
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
}
