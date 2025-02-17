//-> GENERAL(1)
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
//import  'package:lastone/Folder_2,3/general.dart';
//import 'package:tst/home.dart';

import 'package:lastone/Folder_1/constant.dart';
import 'package:lastone/home2.dart';

import 'Folder_2,3/general (1).dart';

class programs extends StatefulWidget {
  const programs({super.key});

  @override
  _programsState createState() => _programsState();
}

class _programsState extends State<programs> {
  int page = 0;
  String _selectedCategory = 'Transportation';

  final List<Map<String, dynamic>> _transportationImages = [
    {'image': 'images/fly Egypt.jpg'},
    {'image': 'images/emirates2.jpg'},
    {'image': 'images/turlish2.jpg'},
    {'image': 'images/flydubai.jpg'},
    {'image': 'images/airarabia.jpg'},
  ];

  final List<Map<String, dynamic>> _hotelImages = [
    {'image': 'images/hilton.jpg'},
    {'image': 'images/Romance.jpg'},
    {'image': 'images/miramar.jpg'},
    {'image': 'images/blueBay.jpg'},
  ];

  final List<Map<String, dynamic>> _restaurantImages = [
    {'image': 'images/alban,jpg.jpg'},
    {'image': 'images/balbaa.jpg'},
    {'image': 'images/ablewahabb.jpg'},
    {'image': 'images/hani.jpg'},
    {'image': 'images/karam.jpg'},
    {'image': 'images/Gad.jpg'},
    {'image': 'images/aborawia.jpg'},
    {'image': 'images/koshary.jpg'},
    {'image': 'images/koshary.jpg'},
    {'image': 'images/fishMarket.jpg'},
    {'image': 'images/whiteSeafood.jpg'},
  ];

  final List<Map<String, dynamic>> _destinationImages = [
    {'image': 'images/tivoli.jpg'},
    {'image': 'images/gleem.jpg'},
    {'image': 'images/the walk.jpg'},
    {'image': 'images/delicies.jpg'},
    {'image': 'images/brazilian.jpg'},
    {'image': 'images/Trianon.jpg'},
    {'image': 'images/fresco.jpg'},
  ];

  final List<Map<String, dynamic>> _activityImages = [
    {'image': 'images/yoga.jpg'},
    {'image': 'images/refresh.jpg'},
    {'image': 'images/kornish.jpg'},
  ];

  final Map<String, List<Map<String, dynamic>>> _imageLists = {
    'Transportation': [],
    'Hotels': [],
    'Restaurants': [],
    'Distenations': [],
    'Activities': [],
  };

  final Map<String, List<Map<String, dynamic>>> _imageLabels = {
    'Transportation': [
      {
        'image': 'images/fly Egypt.jpg',
        'label': 'Fly Egypt \n https://www.flyegypt.com/'
      },
      {
        'image': 'images/emirates2.jpg',
        'label': 'Emirate Airlines \n https://www.emirates.com/'
      },
      {
        'image': 'images/turlish2.jpg',
        'label': 'Turkish Airlines \n https://www.turkishairlines.com/en'
      },
      {
        'image': 'images/flydubai.jpg',
        'label': 'Fly Dubai \n https://www.flydubai.com/en/'
      },
      {
        'image': 'images/airarabia.jpg',
        'label': 'Air Arabia Egypt \n https://www.airarabia.com/'
      },
    ],
    'Hotels': [
      {'image': 'images/hilton.jpg', 'label': 'Hilton Alexandria Corniche '},
      {'image': 'images/Romance.jpg', 'label': 'Romance Alexandria Hotel  '},
      {'image': 'images/miramar.jpg', 'label': 'Miramar Boutique Hotel'},
      {
        'image': 'images/blueBay.jpg',
        'label': 'Blue Bay Beach - families only'
      },
    ],
    'Restaurants': [
      {'image': 'images/alban,jpg.jpg', 'label': 'Alban swisra'},
      {'image': 'images/balbaa.jpg', 'label': 'Balbaa village'},
      {'image': 'images/ablewahabb.jpg', 'label': 'Abd elwahab village'},
      {'image': 'images/ebnelbalad.jpg', 'label': 'Ibn El Balad'},
      {'image': 'images/hani.jpg', 'label': 'Hani village '},
      {'image': 'images/karam.jpg', 'label': 'Karam El Sham '},
      {'image': 'images/Gad.jpg', 'label': 'Gad '},
      {'image': 'images/aborawia.jpg', 'label': 'Abo Rawia '},
      {'image': 'images/koshary.jpg', 'label': 'Koshari tahrir'},
      {'image': 'images/fishMarket.jpg', 'label': 'Fish Market'},
      {'image': 'images/whiteSeafood.jpg', 'label': 'White and Blue'},
    ],
    'Distenations': [
      {'image': 'images/tivoli.jpg', 'label': 'Tivoli Dome'},
      {'image': 'images/gleem.jpg', 'label': 'Gleem Bay'},
      {'image': 'images/the walk.jpg', 'label': 'The walk'},
      {'image': 'images/delicies.jpg', 'label': 'Delices'},
      {'image': 'images/brazilian.jpg', 'label': 'Brazilian coffee'},
      {'image': 'images/Trianon.jpg', 'label': 'Trianon'},
      {'image': 'images/fresco.jpg', 'label': 'Fresco Gelateria'},
    ],
    'Activities': [
      {'image': 'images/yoga.jpg', 'label': 'Radiance Yoga'},
      {'image': 'images/refresh.jpg', 'label': 'Refresh yoga center'},
      {'image': 'images/kornish.jpg', 'label': 'Kornish Meditation'},
    ],
  };

  @override
  void initState() {
    super.initState();
// Initialize image lists with the corresponding image data
    _imageLists['Transportation'] = _transportationImages;
    _imageLists['Hotels'] = _hotelImages;
    _imageLists['Restaurants'] = _restaurantImages;
    _imageLists['Distenations'] = _destinationImages;
    _imageLists['Activities'] = _activityImages;
  }

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
            ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 30),
                Text(
                  'Username',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      //  Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(221, 186, 99, 147),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Wallet',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavigationButton('Transportation'),
              _buildNavigationButton('Hotels'),
              _buildNavigationButton('Restaurants'),
              _buildNavigationButton('Distenations'),
              _buildNavigationButton('Activities'),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Our suggested ${_selectedCategory}',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(221, 186, 99, 147)),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: _imageLabels[_selectedCategory]?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final imageData = _imageLabels[_selectedCategory]?[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        imageData?['label'] ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kGreenColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(
                        imageData?['image'] ?? '',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
          /*
                       SizedBox(
                    width:250,
                    //button to go to next page
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                           Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) => programs()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(221, 113, 44, 81),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Home',
                              style: TextStyle(fontSize: 16),
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  */
        ],
      ),
    );
  }

  Widget _buildNavigationButton(String category) {
    final isSelected = category == _selectedCategory;
    late final String imageAssetPath;

    switch (category) {
      case 'Transportation':
        imageAssetPath = 'images/trans.jpg';
        break;
      case 'Hotels':
        imageAssetPath = 'images/hotels.jpg';
        break;
      case 'Restaurants':
        imageAssetPath = 'images/restaurant.jpg';
        break;
      case 'Distenations':
        imageAssetPath = 'images/distenation.jpg';
        break;
      case 'Activities':
        imageAssetPath = 'images/activityjpg.jpg';
        break;
      default:
        imageAssetPath = '';
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imageAssetPath),
            radius: isSelected ? 35 : 25,
          ),
          SizedBox(height: 5),
          Text(
            category,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),

          //----------------------------------------------------------------------------------
          /*  SizedBox(
            height: 50,
            child: CurvedNavigationBar(
              height: 45,
                backgroundColor:  Colors.cyan.shade100,
                onTap:(index){
                  page =index;
                } ,
                items: <Widget>[
                  Icon(Icons.home),
                  Icon(Icons.search),
                  Icon(Icons.favorite_outline),
                  Icon(Icons.person),
                ]),
          ),   */
          //--------------
        ],
      ),
    );
  }
}
