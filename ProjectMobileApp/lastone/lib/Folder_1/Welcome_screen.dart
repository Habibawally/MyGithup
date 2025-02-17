//to ->AUTH
import 'package:flutter/material.dart';
import 'package:lastone/Folder_1/login.dart';
import '../Folder_1/colors.dart';

// ignore: camel_case_types
class welcomescreen extends StatefulWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

// ignore: camel_case_types
class _welcomescreenState extends State<welcomescreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "images/SplachScreen.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 18,
        ),
        Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade50,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'images/Tourist.png',
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 15),
              child: Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignInscreen();
                        },
                      ),
                    );
                  },
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        /*RichText(text: TextSpan(
            children: [
              TextSpan(
                text: "Welcome",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight:FontWeight.bold )
              )
            ]
          )),*/
                        const Text(
                          "Welcome!",
                          style: TextStyle(
                            fontSize: 30,
                            color: kWhiteClr1,
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                          height: 1,
                        ), //Icon(Icons.favorite,color: Colors.black,),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "In GetawayGetways",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: kWhiteClr1,
                                fontSize: 25,
                                height: 1,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        FittedBox(
                            child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const SignInscreen();
                              },
                            ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 50),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(27),
                              color: Kprimaryclr,
                            ),
                            child: Row(children: [
                              Text(
                                "Let's Start!",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(color: Kboxtext, fontSize: 22),
                              ),
                              const SizedBox(
                                width: 10,
                                height: 15,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Kboxtext,
                              ),
                            ]),
                          ),
                        )),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
