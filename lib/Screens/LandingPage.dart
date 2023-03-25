import 'package:flutter/material.dart';
import 'package:internship_project/Screens/Authprovider.dart';

import 'package:internship_project/Screens/Signup.dart';

import 'Sigin.dart';

class SecondAuthScreen extends StatelessWidget {
  const SecondAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 22, 23),
        body: Column(
          children: [
            Image.asset("Asset/pic2.png", cacheHeight: 380),
            SizedBox(
              height: 55,
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
              height: 51,
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
        ));
  }
}
