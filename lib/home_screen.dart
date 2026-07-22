import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/cards_page.dart';
import 'pages/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final PageController _pageController = PageController();

  int _selectedIndex = 0;

  void _onTap(int index) {

    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: PageView(

        controller: _pageController,

        onPageChanged: (index){

          setState(() {
            _selectedIndex=index;
          });

        },

        children: const [

          HomePage(),
          CardsPage(),
          ProfilePage(),

        ],

      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,

        onTap: _onTap,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cards",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

        ],

      ),

    );
  }
}