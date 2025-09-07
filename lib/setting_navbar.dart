import 'package:flutter/material.dart';

class Settingnavbar extends StatefulWidget {
  @override
  State<Settingnavbar> createState() => _SettingnavbarState();
}

bool isNotificationOn = true;

class _SettingnavbarState extends State<Settingnavbar> {
  @override
  final List<Map<String, String>> profileList = [
    {
      'image': 'assets/images/si1.png',
      'text': 'Notifications',
      'icon': 'assets/images/arrow2.png',
    },
    {
      'image': 'assets/images/si2.png',
      'text': 'Privacy Settings',
      'icon': 'assets/images/arrow2.png',
    },
    {
      'image': 'assets/images/si2.png',
      'text': 'Change Password',
      'icon': 'assets/images/arrow2.png',
    },
    {
      'image': 'assets/images/si3.png',
      'text': 'Language',
      'icon': 'assets/images/arrow2.png',
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(33, 70, 143, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 50,
                right: 0,
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/per_pro.png'),
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
                        style: TextStyle(color: Colors.white70, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: ListView.builder(
                itemCount: profileList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(profileList[index]['image']!),
                    title: Text(
                      profileList[index]['text']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing:
                        index == 0
                            ? Switch(
                              activeColor: Color.fromRGBO(140, 198, 63, 1),
                              value: isNotificationOn,
                              onChanged: (bool value) {
                                setState(() {
                                  isNotificationOn = value;
                                });
                              },
                            )
                            : Image.asset(profileList[index]['icon']!),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
