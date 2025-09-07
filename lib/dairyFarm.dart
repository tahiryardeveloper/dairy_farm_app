import 'package:dairy_farm_app/animaldetails.dart';
import 'package:dairy_farm_app/dairyfarm1.dart';
import 'package:dairy_farm_app/myanimal.dart';
import 'package:flutter/material.dart';

class DairyFarm extends StatefulWidget {
  const DairyFarm({super.key});

  @override
  State<DairyFarm> createState() => _DairyFarmState();
}

class _DairyFarmState extends State<DairyFarm> {
  int currentIndex = 0;

  final List<String> _labels = [
    'Dairy Farm',
    'My Animals',
    'My Animals',
    'Medical',
  ];

  final List<IconData> _icons = [
    Icons.home_outlined,
    Icons.pets_outlined,
    Icons.agriculture_outlined,
    Icons.local_hospital_outlined,
  ];

  final List<Widget> _screens = [
    Dairyfarm1(),
    Myanimal(),
    Center(child: Text('my Animals')),
    Center(child: Text('Medical')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Color(0xFF1A3E78),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        items: List.generate(_labels.length, (index) {
          return BottomNavigationBarItem(
            icon: Icon(_icons[index]),
            label: _labels[index],
          );
        }),
      ),
    );
  }
}
