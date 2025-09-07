import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'login_page.dart';

class Onboarding extends StatefulWidget {
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<Map<String, String>> onboarding_Data = [
    {
      "topimage": "assets/images/onbordingpic.png",
      "image": "assets/images/Frame.png",
      "title": "Multiple Farms",
      "details":
          "You can control more than one farms at the same time through the same App",
    },
    {
      "topimage": "assets/images/onbordingpic.png",
      "image": "assets/images/Frame (1).png",
      "title": "Sector",
      "details":
          "You can create multiple sectors in a farm for different kind of animals like goats, cows, buffaloes",
    },
    {
      "topimage": "assets/images/onbordingpic.png",
      "image": "assets/images/Frame (2).png",
      "title": "Reports",
      "details":
          "You can check your reports of milk production, expense, profit & loss",
    },
  ];

  PageController pg = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pg,
              itemCount: onboarding_Data.length,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onboarding_Data[index]['topimage']!),
                      Image.asset(
                        onboarding_Data[index]['image']!,
                        height: 300,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        onboarding_Data[index]['title']!,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        onboarding_Data[index]['details']!,
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
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
                child: Text('SKIP'),
              ),

              TextButton(
                onPressed: () {
                  if (currentIndex == onboarding_Data.length - 1) {
                    // Last page hai to LoginPage par le jao
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  } else {
                    // Agla page dikhao
                    pg.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text(
                  currentIndex == onboarding_Data.length - 1 ? 'DONE' : 'NEXT',
                ),
              ),
            ],
          ),
          // Indicator with ExpandingDotsEffect
          AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: onboarding_Data.length,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Colors.blue,
              dotColor: Colors.grey,
              spacing: 6,
              expansionFactor: 3,
            ),
          ),
        ],
      ),
    );
  }
}
