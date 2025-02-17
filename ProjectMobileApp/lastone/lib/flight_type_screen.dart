import 'package:flutter/material.dart';
import 'package:lastone/flight_booking.dart';
import 'package:lastone/flight_type.dart';
import 'package:lastone/flight_types_data.dart';

class ColorPalette {
  static const List<Color> blueGradientColors = [
    Color.fromARGB(255, 237, 221, 235),
    Color.fromARGB(255, 253, 237, 251),
    Color.fromARGB(189, 223, 198, 220),
    Color.fromARGB(255, 215, 241, 245),
    Color.fromARGB(164, 205, 224, 231),
    Color.fromARGB(225, 186, 214, 220),
  ];

  static const Color containerBackground = Color(0xFF0072FF); // Default color

  static BoxDecoration getBlueGradientBoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: blueGradientColors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }
}

class AirlineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airlines'),
      ),
      body: ListView.builder(
        itemCount: airlines.length,
        itemBuilder: (context, index) {
          Airline airline = airlines[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            decoration: ColorPalette.getBlueGradientBoxDecoration(),
            child: ListTile(
              leading: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 9, // Adjust the blur radius as needed
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    airline.imageAsset,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(airline.name),
              subtitle: Text('\$${airline.salary.toStringAsFixed(2)}'),
              trailing: Icon(airline.icon),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlightDetailsScreen(airline: airline),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
