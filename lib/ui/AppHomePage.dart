import 'package:flutter/material.dart';
import 'package:mandalivro_flutter/ui/manda_livro_icons_icons.dart';

import 'BooksListPage.dart';
import 'ChatPage.dart';
import 'HistoryPage.dart';
import 'LibraryPage.dart';

class AppHomePage extends StatefulWidget {
  AppHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetTabs = <Widget>[
    LibraryPage(),
    BooksListPage(),
    HistoryPage(),
    ChatPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manda Livro'),
      ),
      body: Center(
        child: _widgetTabs.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MandaLivroIcons.library_icon),
            label: "Library"
          ),
          BottomNavigationBarItem(
            icon: Icon(MandaLivroIcons.search_book),
            label: "Books"
          ),
          BottomNavigationBarItem(
            icon: Icon(MandaLivroIcons.history),
            label: "History"
          ),
          BottomNavigationBarItem(
            icon: Icon(MandaLivroIcons.chat),
            label: "Chat"
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}