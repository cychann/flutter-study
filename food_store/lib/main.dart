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
  int _selectedScore = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onScoreTapped(int score) {
    setState(() {
      _selectedScore = score;
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
            FloatingActionButton(
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: Icon(
                  Icons.home,
                  size: 50,
                )),
            SizedBox(width: 20),
            FloatingActionButton(
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: Icon(
                  Icons.search,
                  size: 50,
                )),
            Container(
              margin: EdgeInsets.all(5.0),
            ),
            Text("검색",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
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
                    )),
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

            Container(height: 1, width: double.maxFinite, color: Colors.grey),

            Opacity(
              opacity: 0.3,
              child: Container(
                margin: EdgeInsets.all(30.0),
                color: Colors.grey,
                width: 500.0,
                height: 500.0,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Padding(padding: EdgeInsets.only(top: 300)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.white,
                          height: 50,
                          width: 150,
                          margin: EdgeInsets.all(10.0),
                          child: Text(
                            "가게 이름",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                            backgroundColor: Colors.grey,
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_drop_down_circle,
                              color: Colors.black,
                              size: 50,
                            )),
                      ],
                    ),
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: 200,
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        "날짜",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: 400,
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        "위치",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: 500,
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        "메모",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(30.0),
                    ),

                    BottomNavigationBar(
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Icon(Icons.add),
                          label: '1',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.add),
                          label: '2',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.add),
                          label: '3',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.add),
                          label: '4',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.add),
                          label: '5',
                        ),
                      ],
                      iconSize: 40,
                      currentIndex: _selectedScore,
                      unselectedItemColor: Colors.blue,
                      selectedItemColor: Colors.orange,
                      selectedFontSize: 30,
                      onTap: _onScoreTapped,
                    ),

                    // Row(
                    //   children: [
                    //     Icon(Icons.looks_one, size: 50),
                    //     SizedBox(width: 20),
                    //     Icon(Icons.search, size: 50),
                    //     Text(
                    //         "검색",
                    //         style: TextStyle(
                    //           fontSize: 25,
                    //           fontWeight: FontWeight.bold,
                    //         )
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
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
