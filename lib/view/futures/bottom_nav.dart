// ignore_for_file: file_names

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_cheap/view/home.dart';
import 'package:ticket_cheap/view/search.dart';
import 'package:ticket_cheap/view/ticket.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const TicketScreen(),
    const ChatbotScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.cyan,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_16_regular),
                label: 'Home',
                activeIcon: Icon(FluentIcons.home_16_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.ticket_horizontal_20_regular),
                label: 'Ticket',
                activeIcon: Icon(FluentIcons.ticket_horizontal_20_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.search_16_regular),
                label: 'Search',
                activeIcon: Icon(FluentIcons.search_16_filled)),
          ],
        ));
  }
}
