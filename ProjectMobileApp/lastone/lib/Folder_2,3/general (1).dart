// ignore: depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class general extends StatefulWidget {
  const general({super.key});

  @override
  State<general> createState() => _generalState();
}

class _generalState extends State<general> {
  int page = 0;
  int _selectedNavIndex = 0;
  final List<String> _navTitles = [
    'Hotels',
    'Entertainment',
    'Restaurants',
    'Night life',
    'Sports',
  ];
  final List<List<String>> _navImages = [
    [
      'images/hilton.jpg',
      'images/Romance.jpg',
      'images/miramar.jpg',
      'images/blueBay.jpg',
    ],
    [
      'images/tivoli.jpg',
      'images/archeology.jpeg',
      'images/kornish.jpg',
      'images/gleem.jpg',
    ],
    [
      'images/karam.jpg',
      'images/alban,jpg.jpg',
      'images/koshary.jpg',
      'images/whiteSeafood.jpg',
    ],
    [
      'images/n.jpg',
      'images/n2.jpg',
    ],
    [
      'images/s.jpg',
      'images/s2.jpj.jpg',
      'images/s3.jpg',
    ],
  ];
  /*final List<IconData> _navigationIcons = [
    Icons.hotel,
    Icons.movie,
    Icons.restaurant,
    Icons.nights_stay,
    Icons.sports_basketball
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 50,
        child: CurvedNavigationBar(
          height: 45,
          backgroundColor: Colors.cyan.shade100,
          onTap: (index) {
            page = index;
          },
          items: <Widget>[
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.favorite_outline),
            Icon(Icons.person),
          ],
        ),
      ),
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/user_avatar.png'),
          backgroundColor: Color.fromARGB(255, 99, 36, 74),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bg.gpg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'What are you looking for?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 16),
              /*
              buildTextFieldWithIcon(
                icon: Icons.location_on,
                hintText: 'Where are you going?',
              ),
              */
              TextField(
                decoration: InputDecoration(
                  hintText: 'Where are you going?',
                  prefixIcon: Icon(Icons.location_on),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'From -> To',
                  prefixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(height: 16),
              buildNavButtons(),
              SizedBox(height: 16),
              buildImageList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextFieldWithIcon(
      {required IconData icon, required String hintText}) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }

/*
Widget buildTextFieldWithIconsAndCounter(
{required IconData leadingIcon, required IconData trailingIcon, required int counter}) {
return TextField(
decoration: InputDecoration(
prefixIcon: Icon(leadingIcon),
suffixIcon: Stack(
children: [
Icon(trailingIcon),
Positioned(
right: 0,
top: 0,
child: Container(
padding: EdgeInsets.all(2),
decoration: BoxDecoration(
color: Colors.red,
shape: BoxShape.circle,
),
child: Text(
counter.toString(),
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
),
),
),
),
],
),
hintText: 'Where are you going?',
border: OutlineInputBorder(),
),
);
}
*/
  Widget buildNavButtons() {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _navTitles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedNavIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: index == _selectedNavIndex
                    ? Colors.blue
                    : Colors.grey.withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  _navTitles[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildImageList() {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _navImages[_selectedNavIndex].length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 16),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(_navImages[_selectedNavIndex][index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    'Image $index',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
