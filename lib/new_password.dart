// import 'package:dairy_farm_app/register.dart';
import 'package:dairy_farm_app/login_page.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
              margin: EdgeInsets.only(top: 65, left: 30),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageIcon(AssetImage("assets/images/arrow.png")),
                  SizedBox(width: 40),
                  Container(
                    width: 190,
                    child: Text(
                      'Create your New Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 80),

            Container(
              margin: EdgeInsets.only(top: 10, left: 24, right: 24),
              width: 343,
              height: 56,
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  labelText: 'Enter Your Password',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Password',
                  fillColor: Color(0xffC6C7C7),
                  prefixIcon: Image.asset('assets/images/lock.png'),
                  suffixIcon: Image.asset('assets/images/eye.png'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffC6C7C7), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xff63A651), width: 2),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20, left: 24, right: 24),
              width: 343,
              height: 56,
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  labelText: 'Retype Your Password',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Password',
                  fillColor: Color(0xffC6C7C7),
                  prefixIcon: Image.asset('assets/images/lock.png'),
                  suffixIcon: Image.asset('assets/images/eye.png'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffC6C7C7), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xff63A651), width: 2),
                  ),
                ),
              ),
            ),

            Container(
              width: 340,
              height: 56,
              margin: EdgeInsets.only(top: 40, left: 24, right: 24),
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
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
