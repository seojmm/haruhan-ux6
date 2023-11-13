import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_shadow/simple_shadow.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;
  bool? _isAutoLogin = false;
  bool? _isIdSave = false;
  final _auth = FirebaseAuth.instance;

  var idController = TextEditingController(); // id 입력 저장
  var passwordController = TextEditingController(); // pw 입력 저장

  static final storage =
      FlutterSecureStorage(); // FlutterSecureStorage를 storage로 저장
  dynamic userInfo = ''; // storage에 있는 유저 정보를 저장

  _asyncMethod() async {
    // read 함수로 key값에 맞는 정보를 불러오고 데이터타입은 String 타입
    // 데이터가 없을때는 null을 반환
    userInfo = await storage.read(key: 'login');

    // user의 정보가 있다면 로그인 후 들어가는 첫 페이지로 넘어가게 합니다.
    if (userInfo != null) {
      context.go('/home');
    } else {
      print('로그인이 필요합니다');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isHidden = true;

    // 비동기로 flutter secure storage 정보를 불러오는 작업
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    idController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.042.sw),
        child: Column(
          children: [
            SizedBox(
              height: 0.2.sh,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleShadow(
                  child: Image.asset(
                    "assets/images/logo_haruhan_white.png",
                    width: 150,
                    height: 150,
                  ),
                  opacity: 1,
                  offset: Offset(3, 3),
                  color: Colors.grey,
                  sigma: 2,
                ),
                Text(
                  "하루 한 권",
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                ),
              ],
            ),
            // SizedBox(
            //   height: 0.02.sh,
            // ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: idController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '아이디 또는 이메일을 입력해주세요.',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: passwordController,
                obscureText: _isHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호를 입력해주세요.',
                  suffix: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  activeColor: Colors.black,
                  checkColor: Colors.white,
                  value: _isAutoLogin,
                  onChanged: (value) {
                    setState(() {
                      _isAutoLogin = value;
                    });
                  },
                ),
                Text("자동 로그인"),
                SizedBox(
                  width: 0.1.sw,
                ),
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  activeColor: Colors.black,
                  checkColor: Colors.white,
                  value: _isIdSave,
                  onChanged: (value) {
                    setState(() {
                      _isIdSave = value;
                    });
                  },
                ),
                Text("아이디 저장")
              ],
            ),
            SizedBox(height: 0.02.sh),
            ElevatedButton(
              onPressed: signIn,
              child: Text(
                "로그인",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF81D8CF),
                foregroundColor: Colors.white,
                minimumSize: Size.fromHeight(0.05.sh),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "아직 회원이 아닌가요?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "회원가입 >",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void signIn() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: idController.text.trim(),
        password: passwordController.text.trim(),
      );
      context.go('/home');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
