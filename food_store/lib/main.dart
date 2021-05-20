import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Store',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.grey,
        title: Row(
          children: [
            Icon(Icons.home, size: 50),
            SizedBox(width: 20),
            Icon(Icons.search, size: 50),
            Text(
                "검색",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // margin을 넣기 위한 컨테이너 박스
            Container(
              margin: EdgeInsets.all(20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.orange,
                    onPressed: () {},
                    child: Icon(
                        Icons.add,
                        color: Colors.black,
                    )
                ),
                SizedBox(width: 15),
                Text(
                    '맛집 추가!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // margin을 넣기 위한 컨테이너 박스
            Container(
              margin: EdgeInsets.all(20.0),
            ),

            Container(
                height: 1,
                width: double.maxFinite,
                color: Colors.grey
            ),


          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Cafe',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
