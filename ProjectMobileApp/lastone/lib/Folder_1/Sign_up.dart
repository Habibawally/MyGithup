import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';

import '../Folder_2,3/Question.dart';
//import 'package:lastone/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var showpass = true;
  late String email;
  late String password;
  late String userName;
  //late int phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              child: Stack(children: [
                Image.asset(
                  "images/Recognition101.png",
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  ////physicssssss
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: []),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      // constraints: BoxConstraints.expand(),

                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Hi , new user good luck in your journy !",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: showpass,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    showpass = false;
                                  });
                                },
                                icon: Icon(Icons.remove_red_eye)),
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onChanged: (value) {
                            userName = value;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_balance),
                            hintText: "User Name ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          //  onChanged: (value){
                          //    phoneNumber = value;
                          //  },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: " Phone Number ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            //  onChanged: (value){
                            //    phoneNumber = value;
                            //  },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.date_range),
                              hintText: " Birth Date ",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            keyboardType: TextInputType.datetime,
                          ),
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () async {
                          try {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => question(),
                                ));
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Text.rich(
                          TextSpan(
                              text: 'Sign Up  ',
                              style: TextStyle(fontSize: 20),
                              children: [
                                WidgetSpan(child: Icon(Icons.account_box))
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
