import 'package:flutter/material.dart';

class Animaldetails extends StatelessWidget {
  final List animals = const [
    {'image': 'assets/images/cow1.png', 'name': 'Australian Cow'},
    {'image': 'assets/images/cow2.png', 'name': 'Cow'},
    {'image': 'assets/images/hen1.png', 'name': 'Hen'},
    {'image': 'assets/images/goat1.png', 'name': 'Goat'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Animal Details',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(33, 70, 143, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: const [
                          Text('Income', style: TextStyle(color: Colors.white)),
                          SizedBox(height: 5),
                          Text(
                            '23.03k \$',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Details',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(221, 101, 106, 1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            'Expense',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '23.03k \$',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Details',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),

              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffffffff),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Milk/ Liter',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  Text(
                    '0.0',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Text(
                'Tag ID',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              height: 50,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  '300',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(153, 153, 153, 1),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Text(
                'Sector',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              height: 50,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  'Gust sector',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Text(
                'Status',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              height: 50,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  'Pregnant',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Text(
                'Animal Breed',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              height: 50,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  'Sahiwal',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Text(
                'Date of Birthday',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              height: 50,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  '23-5-2023',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Text(
                'Set the status',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(33, 70, 143, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Sold',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // spacing between buttons
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(221, 101, 106, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Death',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
