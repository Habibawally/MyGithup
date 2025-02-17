import 'package:flutter/material.dart';
import 'package:lastone/AddFundsScreen.dart';
import 'package:lastone/flight_booking.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  get blueGradientColors => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        //  backgroundColor: Col,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/new start.png'), // Replace with your image asset path
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Available Balance: \$${Provider.of<FlightBookingModel>(context).wallet.balance.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/airlines');
                },
                child: Text('View Airlines'),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddFundsScreen()),
                  );
                },
                icon: Icon(Icons.add),
                label: Text('Add Funds to Wallet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
