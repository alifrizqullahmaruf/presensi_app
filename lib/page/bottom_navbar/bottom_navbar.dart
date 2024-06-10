import 'package:flutter/material.dart';
import 'package:presensi_app/page/bottom_navbar/absensi_screen.dart';
import 'package:presensi_app/page/bottom_navbar/dashboard_screen.dart';
import 'package:presensi_app/page/bottom_navbar/notifikasi_screen.dart';
import 'package:presensi_app/page/bottom_navbar/pengaturan_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(),
    AbsensiScreen(),
    NotifikasiScreen(),
    PengaturanScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _widgetOptions.elementAt(_selectedIndex),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  // border: Border.all(color: Colors.black, width: 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: BottomNavigationBar(
                    onTap: _onItemTapped,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.menu), label: "Dashboard"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: "Absensi"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.notifications_active),
                          label: "Notifikasi"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: "Pengaturan"),
                    ],
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.blue.shade300,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    currentIndex: _selectedIndex,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
