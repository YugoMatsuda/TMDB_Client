import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_log_app/auth_widget.dart';
import 'package:movie_log_app/screen/search_screen.dart';
import 'now_playing_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Widget> tabScreens = <Widget>[
    NowPlayingScreen(),
    SearchScreen(),
    AuthWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'NowPlaying',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return tabScreens[index];
      },
    );
  }
}
