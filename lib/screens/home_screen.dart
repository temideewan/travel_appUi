import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/widgets/hotel_carousel.dart';
import '../widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.bicycle,
    FontAwesomeIcons.walking,
  ];

  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              color: _selectedIndex == index
                  ? Theme.of(context).accentColor
                  : Color(0xE7EBEE),
              borderRadius: BorderRadius.circular(30.0)),
          child: Icon(_icons[index],
              size: 25.0,
              color: _selectedIndex == index
                  ? Theme.of(context).primaryColor
                  : Color(0xFFB1C1C4))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text('What would you like to Find??',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons
                .asMap()
                .entries
                .map((MapEntry map) => _buildIcons(map.key))
                .toList(),
          ),
          SizedBox(height: 20.0),
          DestinationCarousel(),
          SizedBox(height: 20.0),
          HotelCarousel()
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTab,
        onTap: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.local_pizza,
              )),
          BottomNavigationBarItem(
            label: '',
            icon: CircleAvatar(
                radius: 15.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                      width: 30.0,
                      height: 30.0,
                      image: AssetImage('assets/images/brett.jpg'),
                      fit: BoxFit.cover),
                )),
          )
        ],
      ),
    );
  }
}
