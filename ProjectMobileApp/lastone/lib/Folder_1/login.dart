import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:lastone/square_title.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import '../Folder_1/Sign_up.dart';
import 'package:lastone/Folder_2,3/question.dart';
import '../Folder_1/colors.dart';
import '../forgetpass.dart';

class SignInscreen extends StatefulWidget {
  const SignInscreen({Key? key}) : super(key: key);

  @override
  State<SignInscreen> createState() => _SignInscreenState();
}

Future<UserCredential> signInWithFacebook() async {
  // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential =
      FacebookAuthProvider.credential(loginResult.accessToken!.token);

  // Once signed in, return the UserCredential
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}

Future<UserCredential> signInWithGoogle() async {
  FirebaseAuth auth = FirebaseAuth.instance;
// Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  final UserCredential userCredential =
      await auth.signInWithCredential(credential);

  return userCredential;
}

FlatButton(
    {required void Function() onPressed,
    required EdgeInsets padding,
    required Text child}) {}
//password text button question section
Widget buildForgotPassBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () => print("forgot password pressed"),
      padding: EdgeInsets.only(right: 0, left: 10),
      child: Text(
        "Forgot Password?",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _SignInscreenState extends State<SignInscreen> {
  final auth = FirebaseAuth.instance;
  var showpass = true;
  late String email;
  late String password;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isRemeberMe = false;
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        //BOX decration
        //////////////////////////
        Container(
          decoration: BoxDecoration(
              color: Kprimaryclr,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 2, offset: Offset(0, 5))
              ]),
          height: 60,

          //the text inside the box
          child: TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.email, color: Colors.black87),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        ),
      ],
    );
  }

  //Build password
  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*Text(
          'Enter Your Password',
          style: TextStyle(
              color: Kboxtext, fontSize: 16, fontWeight: FontWeight.bold),
        ),*/
        SizedBox(
          height: 15,
        ),
        //BOX decoration
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Kprimaryclr,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 2, offset: Offset(0, 5))
              ]),
          height: 60,

          //the text inside the box of PASS
          child: TextField(
            controller: _passwordController,
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.lock, color: Colors.black87),
                hintText: 'Pasword',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

//BUILD remember me
  Widget buildRemeberCb() {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Kprimaryclr),
            //  data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRemeberMe,
              checkColor: Color.fromARGB(255, 173, 161, 240),
              activeColor: Kboxtext,
              onChanged: (value) {
                setState(() {
                  isRemeberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remeber me?',
            style: TextStyle(color: Kboxtext, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildKLoginbtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    color: Color.fromARGB(137, 39, 40, 45),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 41, 70),
                    fontSize: 13,
                    height: 0,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildicons() => SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [
            Expanded(
              child: Divider(
                thickness: 0.8,
                color: Colors.grey[400],
              ),
            ),
          ])));

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
                            children: [
                              Icon(
                                Icons.lock,
                                color: kWhiteClr1,
                                size: 80,
                              ),
                              /*   Text(
                                'Log In',

                                style: TextStyle(
                                    color: kWhiteClr1,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),*/

                              SizedBox(
                                height: 15,
                              ),
                              buildEmail(),
                              SizedBox(
                                height: 15,
                              ),
                              buildPassword(),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      child: Text('forgot password?',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: kWhiteClr1,
                                              fontSize: 14,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationThickness: 2)),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    forgetpass()));
                                      },
                                    ),
                                  ]),

                              buildForgotPassBtn(),
                              buildRemeberCb(),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                              ),

                              buildicons(),
                              SizedBox(
                                height: 10,
                              ),

                              const SizedBox(
                                height: 10,
                              ),
                              //////////////////////////
                              FittedBox(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const question();
                                      },
                                    ));
                                  },
                                  child: GestureDetector(
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        try {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    question(),
                                              ));
                                        } catch (e) {
                                          print(e);
                                        }
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<
                                                Color>(
                                            Kprimaryclr), // Set your desired color here
                                      ),
                                      child: Text(
                                        "LOG IN",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 49, 24, 209)),
                                      ),
                                    ),
                                  ),
//////////////////////
                                ),
                              ),

                              SizedBox(
                                height: 5,
                              ),
                              buildKLoginbtn(context),
                              // buildKLoginbtn(),
                            ]))),
              ]),
            )));
  }
}
