import 'package:flutter/material.dart';
import 'package:lastone/flight_booking.dart';
import 'package:lastone/flight_type_screen.dart';
import 'package:lastone/home2.dart';
import 'package:lastone/splachh.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
//import 'package:splachscreen/splashscreen.dart';

Future<void> main() async {
  // add this, and it should be the first line in main method

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => FlightBookingModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (contexsst) => HomeScreen(),
        '/airlines': (context) => AirlineScreen(),
        // Add other routes as needed
      },
    );
  }
}

//deletea splash_screen
