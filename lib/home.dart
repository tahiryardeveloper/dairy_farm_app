import 'package:dairy_farm_app/dairyFarm.dart';
import 'package:flutter/material.dart';
// import 'bottomnavbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                        top: 120,
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
                    ],
                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 118,
                        width: 106,
                        child: Card(
                          color: Color(0xffffffff),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '780 L',
                                  style: TextStyle(
                                    color: Color(0xff8CC63F),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Total Milk',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        height: 118,
                        width: 106,
                        child: Card(
                          color: Color(0xffffffff),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1.5k',
                                  style: TextStyle(
                                    color: Color(0xff8CC63F),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Total Animals',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        height: 118,
                        width: 106,
                        child: Card(
                          color: Color(0xffffffff),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$ 50k',
                                  style: TextStyle(
                                    color: Color(0xff8CC63F),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Total Sales',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Container(
                  height: 80,
                  child: Card(
                    elevation: 1,
                    color: Color(0xffffffff),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DairyFarm();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 16,
                        ),
                        leading: Image.asset('assets/images/di5.png'),
                        title: Text(
                          'My Dairy Farms',
                          style: TextStyle(fontSize: 20),
                        ),
                        trailing: ImageIcon(
                          AssetImage('assets/images/arrow2.png'),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 80,
                  child: Card(
                    elevation: 1,
                    color: Color(0xffffffff),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      leading: Container(
                        width: 60,
                        height: 63,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 198, 63, 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/di4.png',
                            // ya BoxFit.contain agar chhoti image hai
                          ),
                        ),
                      ),

                      title: Text(
                        'My Agriculture Farms',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: ImageIcon(
                        AssetImage('assets/images/arrow2.png'),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 80,
                  child: Card(
                    elevation: 1,
                    color: Color(0xffffffff),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      leading: Container(
                        width: 60,
                        height: 63,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(252, 43, 43, 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/di3.png',
                            // ya BoxFit.contain agar chhoti image hai
                          ),
                        ),
                      ),
                      title: Text('My Animals', style: TextStyle(fontSize: 20)),
                      trailing: ImageIcon(
                        AssetImage('assets/images/arrow2.png'),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 80,
                  child: Card(
                    elevation: 1,
                    color: Color(0xffffffff),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      leading: Container(
                        width: 60,
                        height: 63,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(252, 43, 43, 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/di2.png',
                            // ya BoxFit.contain agar chhoti image hai
                          ),
                        ),
                      ),
                      title: Text(
                        'Milk Details',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: ImageIcon(
                        AssetImage('assets/images/arrow2.png'),
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
