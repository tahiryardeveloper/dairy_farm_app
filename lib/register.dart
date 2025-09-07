import 'package:dairy_farm_app/login_page.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                        'Register',
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
                    'Register now and get',
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
                      labelText: 'Enter First name',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                      hintText: 'First Name',
                      fillColor: Color(0xffC6C7C7),
                      prefixIcon: Icon(Icons.person, color: Color(0xffC6C7C7)),
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
                  margin: EdgeInsets.only(top: 10, left: 24, right: 10),
                  width: 343,
                  height: 56,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name e.g Doe',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Last Name',
                      fillColor: Color(0xffC6C7C7),
                      prefixIcon: Icon(Icons.person, color: Color(0xffC6C7C7)),
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
                  margin: EdgeInsets.only(top: 10, left: 24, right: 10),
                  width: 343,
                  height: 56,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                      hintText: 'e.g. abcd@server.com',
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
                  margin: EdgeInsets.only(top: 10, left: 24, right: 10),
                  width: 343,
                  height: 56,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your Password',
                      fillColor: Color(0xffC6C7C7),
                      prefixIcon: Image.asset('assets/images/lock.png'),
                      suffixIcon: Image.asset('assets/images/eye.png'),
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
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              width: 340,
              height: 56,
              margin: EdgeInsets.only(top: 30, left: 24, right: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
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
                  'Join Medfuel',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            Container(
              width: 245,
              margin: EdgeInsets.only(top: 100, left: 73),
              child: Row(
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
