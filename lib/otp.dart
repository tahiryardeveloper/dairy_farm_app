// import 'package:dairy_farm_app/register.dart';
import 'package:dairy_farm_app/new_password.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
              // width: 200,
              margin: EdgeInsets.only(top: 65, left: 30),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageIcon(AssetImage("assets/images/arrow.png")),
                  SizedBox(width: 70),
                  Text(
                    'OTP Verification',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 30),
              width: 335,
              child: Column(
                children: [
                  Text(
                    'Code has been send on',
                    style: TextStyle(
                      color: Color(0xff93969F),
                      letterSpacing: 0.2,
                    ),
                  ),
                  Text(
                    'abc***de@server.com',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 60, left: 28, right: 28),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 45,
                  activeColor: Color(0xff63A651),
                  inactiveColor: Color(0xff212121),
                  selectedColor: Color(0xff63A651),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 28, right: 28),
              child: Row(
                children: [
                  Text('Code will resend in '),
                  Text('52s', style: TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
            ),

            Container(
              width: 340,
              height: 56,
              margin: EdgeInsets.only(top: 60, left: 24, right: 24),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NewPassword();
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
                  'Verify',
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
