import 'package:flutter/material.dart';
import 'package:crypto_tracker/screens/home.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatefulWidget{
  const NavBar ({super.key});

  @override
  State<NavBar> createState(){
    return _NavBar();
  }
}

class _NavBar extends State<NavBar>{

  int _currentIndex = 0;

  List<Widget> pages = [
    Home(),
    Home(),
    Home(),
    Home(),
    Home()
  ];

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromARGB(185, 255, 214, 31),
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: ((value) => {
            setState(() {
              _currentIndex = value;
            })
          }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey
              ),
              label: '',
              activeIcon: Icon(
                Icons.home_rounded,
                color: Color.fromARGB(185, 255, 214, 31),
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart_outline,
                color: Colors.grey
              ),
              label: '',
              activeIcon: Icon(
                Icons.pie_chart_rounded,
                color: Color.fromARGB(185, 255, 214, 31),
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.grey
              ),
              label: '',
              activeIcon: Icon(
                Icons.search_rounded,
                color: Color.fromARGB(185, 255, 214, 31),
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.grey
              ),
              label: '',
              activeIcon: Icon(
                Icons.account_balance_wallet_rounded,
                color: Color.fromARGB(185, 255, 214, 31),
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper_outlined,
                color: Colors.grey
              ),
              label: '',
              activeIcon: Icon(
                Icons.newspaper_rounded,
                color: Color.fromARGB(185, 255, 214, 31),
              )
            ),
          ],
        ),
      ),
    );
  }
}