import 'package:flutter/material.dart';

class Dairyfarm1 extends StatefulWidget {
  const Dairyfarm1({super.key});

  @override
  State<Dairyfarm1> createState() => _HomeState();
}

class _HomeState extends State<Dairyfarm1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 330,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF153e75),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 71,
                        right: 40,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: ImageIcon(
                            AssetImage('assets/images/notification.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 20,
                        right: 20,
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.white),
                            ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                'assets/images/per_pro.png',
                              ),
                            ),
                          ),
                          title: Text(
                            'Mike Dairy Farm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              ImageIcon(
                                AssetImage('assets/images/Location.png'),
                                size: 16,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '123 Block, Bridge, New York',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 50,
                        child: Container(
                          margin: EdgeInsets.only(left: 24, right: 24),
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.white),
                            color: Color.fromRGBO(255, 255, 255, 5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '780 L',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24,
                                      color: Color.fromRGBO(33, 70, 143, 1),
                                    ),
                                  ),
                                  Text(
                                    'Total Milk',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '1.5k',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24,
                                      color: Color.fromRGBO(33, 70, 143, 1),
                                    ),
                                  ),
                                  Text(
                                    'Total Animals',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$ 50k',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24,
                                      color: Color.fromRGBO(33, 70, 143, 1),
                                    ),
                                  ),
                                  Text(
                                    'Total Sales',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // tahir yar khan is the mention
                        ),
                      ),
                    ],
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
