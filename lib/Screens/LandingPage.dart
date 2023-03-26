import 'package:flutter/material.dart';
import 'package:internship_project/Screens/Authprovider.dart';

import 'package:internship_project/Screens/Signup.dart';
import 'package:internship_project/config.dart';

import 'Sigin.dart';

class SecondAuthScreen extends StatelessWidget {
  const SecondAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "Asset/pic2.png",
                width: double.infinity,
                fit: BoxFit.cover,
                height: 420,
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThirdAuthPage()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Gets Started",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
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
                        style: TextStyle(color: Colors.blue),
                      ),
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
