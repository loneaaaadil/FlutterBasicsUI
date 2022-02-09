
import 'dart:ui';
import 'package:flutter/material.dart';
void main() {
  runApp(GeekForGeeks());
}

class GeekForGeeks extends StatelessWidget {
  static const String _title = 'Drawer Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyStatefulWidget(),
      home: Scaffold(
        backgroundColor: Colors.grey,
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  "GeeksforGeeks",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                title: Text('People'),
                leading: Icon(Icons.people),
              ),
              ListTile(
                title: Text("Email Id"),
                leading: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Inbox"),
                leading: Icon(Icons.inbox),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Hello aadil'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Colors.green,
          elevation: 30.0,
          shadowColor: Colors.red,
          actions: [
            IconButton(
              icon: Icon(Icons.comment),
              tooltip: "Commet Icon",
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
              tooltip: "setting Icon",
            ),
          ],
        ),
        body: Container(
          height: 160,
          width: double.infinity,
          // color: Colors.purple,
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(30),
          alignment: Alignment.bottomCenter,
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: Center(
            child: RichText(
              text: const TextSpan(
                text: "Hello! Aadil",
                style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: " Ahmad lone",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " Google",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          tooltip: "floating icon",
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              title: Text("home"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text("Search"),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text("Profile"),
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {},
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Bussiness',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
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
        title: Text('Hello aadil'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Colors.green,
        elevation: 30.0,
        shadowColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.rectangle),
              child: Text(
                'Drawer header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 30,
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }
}
