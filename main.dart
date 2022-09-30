import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Icon(Icons.menu),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.person),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Receipt'),
        ],
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Find the best coffee for you",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          //search Bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              height: 25,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 79, 78, 78)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 79, 78, 78)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
