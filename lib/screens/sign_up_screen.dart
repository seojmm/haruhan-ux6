import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haruhan/utils.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isHidden = true;
  final _auth = FirebaseAuth.instance;

  var idController = TextEditingController(); // id 입력 저장
  var passwordController = TextEditingController(); // pw 입력 저장

  @override
  void dispose() {
    idController.dispose();
    passwordController.dispose();

    super.dispose();
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
              child: TextField(
                controller: idController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '아이디 또는 이메일을 입력해주세요.',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
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

            SizedBox(height: 0.02.sh),
            ElevatedButton(
              onPressed: signUp,
              child: Text(
                "회원 가입",
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
                    "이미 아이디가 있으신가요?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "로그인 >",
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

  void signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: idController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      Utils.showSnackbar(e.message);
    }
  }
}
