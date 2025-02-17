import 'package:flutter/material.dart';
import 'package:lastone/flight_type.dart';
import 'package:lastone/wallet.dart';
import 'package:provider/provider.dart';

class Flight {
  String destination;
  double cost;

  Flight({required this.destination, required this.cost});
}

class FlightBookingModel extends ChangeNotifier {
  Wallet _wallet = Wallet();
  List<Flight> _bookedFlights = [];

  Wallet get wallet => _wallet;
  List<Flight> get bookedFlights => _bookedFlights;

  void addFundsToWallet(double amount) {
    _wallet.addBalance(amount);
    notifyListeners();
  }

  void bookFlight(String destination, double cost) {
    try {
      _wallet.deductBalance(cost);
      _bookedFlights.add(Flight(destination: destination, cost: cost));
      print('Flight to $destination booked successfully!');
    } catch (e) {
      print('Failed to book flight: $e');
    }
    notifyListeners();
  }

  void deductBalance(double amount) {
    if (_wallet.balance >= amount) {
      _wallet.balance -= amount;
      notifyListeners(); // Notify listeners to update UI
    } else {
      // Handle insufficient funds scenario
      print('Insufficient funds');
    }
  }
}

// flight_details_screen.dart
class FlightDetailsScreen extends StatelessWidget {
  final Airline airline;

  FlightDetailsScreen({required this.airline});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flight Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(airline.imageAsset,
                width: 170, height: 170, fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              'Airline: ${airline.name}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Salary: \$${airline.salary.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'description: \$${airline.description}',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'website: \$${airline.website}',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'contactNumber: \$${airline.contactNumber}',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<FlightBookingModel>(context, listen: false)
                    .bookFlight(airline.name, airline.salary);
                Navigator.pop(
                    context); // Navigate back to the airline list after booking
              },
              child: Text('Book Flight'),
            ),
          ],
        ),
      ),
    );
  }
}
