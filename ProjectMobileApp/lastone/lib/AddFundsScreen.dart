import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'flight_booking.dart'; // Import the FlightBookingModel

class AddFundsScreen extends StatelessWidget {
  const AddFundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Funds'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ignore: prefer_const_constructors
            Text(
              'Enter the amount to add:',
              style: const TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Add UI elements for entering the amount (e.g., TextField)
            // Add a button to confirm the addition
            ElevatedButton(
              onPressed: () {
                // Get the entered amount and add it to the wallet
                double enteredAmount =
                    50.0; // Replace with logic to get the entered amount
                Provider.of<FlightBookingModel>(context, listen: false)
                    .addFundsToWallet(enteredAmount);

                // Navigate back to the previous screen
                Navigator.pop(context);
              },
              child: Text('Add Funds'),
            ),
          ],
        ),
      ),
    );
  }
}
