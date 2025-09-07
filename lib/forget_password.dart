// import 'package:dairy_farm_app/register.dart';
import 'package:dairy_farm_app/otp.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 200,
              margin: EdgeInsets.only(top: 75, left: 90),
              child: Image.asset('assets/images/onbordingpic.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 24),
                  child: Column(
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 24),
                  child: Text(
                    'Enter your email associated with your account.',
                    style: TextStyle(color: Color(0xFF999999)),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 24, right: 10),
                  width: 343,
                  height: 56,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Enter Your Email',
                      fillColor: Color(0xffC6C7C7),
                      prefixIcon: Icon(Icons.email, color: Color(0xffC6C7C7)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffC6C7C7),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff63A651),
                          width: 2,
                        ),
                        // borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 340,
                  height: 56,
                  margin: EdgeInsets.only(top: 35, left: 24, right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Otp();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff21468F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Receive Verification Code',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
