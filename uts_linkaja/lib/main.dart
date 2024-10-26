import 'package:flutter/material.dart';
import 'package:uts_linkaja/screen/inbox_page.dart';
import 'screen/splash_screen.dart';
import 'screen/home_page.dart';
import 'screen/history_page.dart';
import 'screen/account_page.dart';
import 'screen/inbox_page.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkAja',
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const MainScreen(), 
        '/history': (context) => const HistoryPage(),
        '/account': (context) => const AccountPage(),
        '/inbox': (context) => const InboxPage(), 
      },
    );
  }
}

// Halaman utama  
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const HistoryPage(),
    const Center(child: Icon(Icons.qr_code, size: 100)), 
    const InboxPage(), 
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
