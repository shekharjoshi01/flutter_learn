import 'package:flutter/material.dart';
import 'package:flutter_learn/feat/about_us/about_us.dart';
import 'package:flutter_learn/feat/contact_us/contact_us.dart';

import 'package:flutter_learn/feat/home/home_page_content.dart';
import 'package:flutter_learn/feat/learn/learn_page.dart';

import '../core/constants/app_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _myIndex = 0;
  List<Widget> widgetList = [
    HomePage(),
    LearnPage(),
    ContactUs(),
    AboutUs(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text(
          "Flutter Feats",
          style: TextStyle(
            fontSize: 24,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontFamily: AutofillHints.countryName,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/logo.png"),
        ),
      ),
      body: Center(
        child: widgetList[_myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _myIndex = index;
          });
        },
        showUnselectedLabels: false,
        currentIndex: _myIndex,
        unselectedItemColor: AppColors.secondary,
        selectedItemColor: AppColors.primaryBlue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Learn"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Contact Us"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: "About Us"),
        ],
      ),
    );
  }
}

