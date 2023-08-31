import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/home_screen.dart';
import 'package:flutter_todo/screens/schedule_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TODO',

        //COLOR_THEME
        theme: ThemeData(
          fontFamily: 'ChosunNm',
          brightness: Brightness.light,
          useMaterial3: true,
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
          ),
          appBarTheme: const AppBarTheme(
            color: Colors.indigo,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        ),
        darkTheme: ThemeData(
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
          ),
          appBarTheme: const AppBarTheme(
            color: Colors.teal,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal,
            brightness: Brightness.dark,
          ),
        ),

        //SCREEN_PAGE
        home: const HomePageNavigation());
  }
}

class HomePageNavigation extends StatefulWidget {
  const HomePageNavigation({super.key});

  @override
  State<HomePageNavigation> createState() => _HomePageNavigationState();
}

class _HomePageNavigationState extends State<HomePageNavigation> {
  //navigation
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //screen
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ScheduleScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Todo"),
          ),
          body: _widgetOptions.elementAt(_selectedIndex),

          //BOTTOM_NAVIGATION_BAR
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.indigo[400],
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.fact_check_outlined),
                label: '할일',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined),
                label: '캘린더',
              ),
            ],
          )),
    );
  }
}
