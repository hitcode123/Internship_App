import 'package:flutter/material.dart';
import 'package:internship_project/Screens/Authprovider.dart';
import 'package:internship_project/config.dart';

import 'Sigin.dart';
import 'home_screen.dart';

class ThirdAuthPage extends StatefulWidget {
  const ThirdAuthPage({Key? key}) : super(key: key);

  @override
  State<ThirdAuthPage> createState() => _ThirdAuthPageState();
}

class _ThirdAuthPageState extends State<ThirdAuthPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: background,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_literals_to_create_immutables
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ignore: prefer_const_constructors
                      Text("Welcome! 👋",

                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontFamilyFallback: ['Montserrat'],
                              fontFamily: 'EmojiOne',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 23)),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Create your account",
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Avenir'))
                    ]),
                SizedBox(
                  height: 25,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 20, right: 8),
                        height: 50,
                        color: Color.fromRGBO(24, 32, 46, 1),
                        child: TextFormField(
                            controller: _email,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white60))),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              top: 8, bottom: 8, left: 20, right: 8),
                          height: 50,
                          color: Color.fromRGBO(24, 32, 46, 1),
                          child: TextFormField(
                            controller: _password,
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.white60,
                                  fontFamily: 'Montserrat'),
                            ),
                          ))
                    ],
                  ),
                ),

                SizedBox(
                  height: 42,
                ),
                GestureDetector(
                  onTap: () {
                    AuthenticationHelper.signUp(
                            email: _email.text.toString(),
                            password: _password.text.toString())
                        .then((value) {
                      if (value == null) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        )));
                      }
                    });
                  },
                  child: Container(
                    height: 260,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => FourthPageAuth()));
                                },
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Montserrat'),
                                ),
                                style: ButtonStyle(
                                  textStyle: MaterialStateProperty.all(
                                    TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
