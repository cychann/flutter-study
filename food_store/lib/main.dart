import 'package:flutter/material.dart';
import 'package:food_store/tab_item.dart';
import 'package:food_store/todo_list.dart';

void main() {
  runApp(TodoListApp());
}

class TodoListApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  final List<TabItem> _tabItems = [
    TabItem("Food", Icons.food_bank),
    TabItem("Cafe", Icons.local_drink),
  ];

  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter TodoList',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text(_tabItems[_currentTabIndex].getTitle())),
            bottomNavigationBar: _createBottomNavigationBar(),
          body: Container(
              padding: EdgeInsets.all(8.0),
              child: TodoListPage()
          ),
        )
    );
  }

  Widget _createBottomNavigationBar() {
    return BottomNavigationBar(
      items: _tabItems.map((tabItem) =>
          BottomNavigationBarItem(icon: Icon(tabItem.getIcon()), label: tabItem.getTitle()),
      ).toList(),
      currentIndex: _currentTabIndex,
      onTap: (int index) => {
        _onTabClick(index)
      },
    );
  }

  void _onTabClick(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }
}