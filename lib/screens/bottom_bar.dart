import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/home_screen.dart';
import 'package:ticket_booking_app/screens/profile_screen.dart';
import 'package:ticket_booking_app/screens/search_screen.dart';
import 'package:ticket_booking_app/screens/tickets_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var currentIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  setIndex(value) {
    setState(() {
      currentIndex = value;
    });
  }

  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(
        FluentSystemIcons.ic_fluent_home_regular,
      ),
      activeIcon: Icon(
        FluentSystemIcons.ic_fluent_home_filled,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        FluentSystemIcons.ic_fluent_search_regular,
      ),
      activeIcon: Icon(
        FluentSystemIcons.ic_fluent_search_filled,
      ),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        FluentSystemIcons.ic_fluent_ticket_regular,
      ),
      activeIcon: Icon(
        FluentSystemIcons.ic_fluent_ticket_filled,
      ),
      label: 'Tickets',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        FluentSystemIcons.ic_fluent_person_regular,
      ),
      activeIcon: Icon(
        FluentSystemIcons.ic_fluent_person_filled,
      ),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          onTap: (value) => {setIndex(value)},
          currentIndex: currentIndex,
          items: items),
    );
  }
}
