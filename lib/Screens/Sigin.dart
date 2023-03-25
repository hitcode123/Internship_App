import 'package:flutter/material.dart';
import 'package:internship_project/Screens/Authprovider.dart';
import 'package:internship_project/Screens/Signup.dart';
import 'package:internship_project/config.dart';

import 'home_screen.dart';

class FourthPageAuth extends StatefulWidget {
  const FourthPageAuth({Key? key}) : super(key: key);

  @override
  State<FourthPageAuth> createState() => _FourthPageAuthState();
}

class _FourthPageAuthState extends State<FourthPageAuth> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
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
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text("Hi There! 👋",

                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontFamilyFallback: ['Montserrat'],
                              fontFamily: 'EmojiOne',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 23)),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 8,
                      ),
                      // ignore: prefer_const_constructors
                      Text("Welcome back, Sign in to your account",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Avenir'))
                    ]),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 20, right: 8),
                      height: 50,
                      color: const Color.fromRGBO(24, 32, 46, 1),
                      child: TextFormField(
                          controller: _email,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.white60))),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 20, right: 8),
                        height: 50,
                        color: const Color.fromRGBO(24, 32, 46, 1),
                        child: TextFormField(
                          controller: _password,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off),
                            suffixIconColor: Colors.white60,
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'Montserrat'),
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  "Forget Password?",
                  style: TextStyle(
                      color: Color.fromARGB(
                        212,
                        255,
                        255,
                        255,
                      ),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 42,
                ),
                Container(
                  height: 222,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            AuthenticationHelper.signIn(
                                    email: _email.text.toString(),
                                    password: _password.text.toString())
                                .then((value) {
                              if (value == null) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                    value,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ));
                              }
                            });
                          },
                          child: Container(
                            child: const Center(
                              child: const Text(
                                "Sign in",
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
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter'),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ThirdAuthPage()));
                              },
                              child: const Text(
                                "Sign up",
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'Montserrat'),
                              ),
                              style: ButtonStyle(
                                textStyle: MaterialStateProperty.all(
                                  const TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
