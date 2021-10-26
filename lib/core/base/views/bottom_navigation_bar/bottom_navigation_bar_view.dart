import 'package:flutter/material.dart';
import 'package:yemeksepeticlone/core/base/views/home/home_view.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({ Key? key }) : super(key: key);

  @override
  _BottomNavigationViewState createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Center(child: Text("Test")),
    Center(child: Text("Test")),
    Center(child: Text("Test")),
    Center(child: Text("Test")),
  ];

    void _onItemTapped(int index) {
    setState(() {
      print(index);
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Sipariş',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Sepetim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Canlı Yardım',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Hesabım',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        unselectedItemColor: Colors.grey,
        selectedFontSize: 11,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}