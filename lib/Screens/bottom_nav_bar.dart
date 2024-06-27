import 'package:flutter/material.dart';
import 'package:zomato_clone_ui/Screens/home_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;

  List<Widget> body = [
    const HomeScreen(),
    const Center(child: Text('History')),
    const Center(child: Text('Money')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          iconSize: 30,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 14,
          selectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          selectedIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 223, 19, 4),
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.delivery_dining),
              label: 'Delivery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_rounded),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_rounded),
              label: 'Money',
            ),
          ],
        ),
      ),
    );
  }
}
