import 'dart:ui';
import 'package:flutter/material.dart';


import 'assign_mark.dart';

class screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height-60.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Complition(Colors.pinkAccent, Colors.pinkAccent, Colors.pinkAccent, Colors.pinkAccent, 'Registration Complete!','/x4',),
                      SizedBox(
                        height: 100,
                      ),
                      SizedBox(
                        width: 100.0,
                        height: 100.0,
                        child: FloatingActionButton(
                          onPressed: null,
                          backgroundColor: Colors.green[600],
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Your account registration is now complete!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "You have now successfully registered for the portal.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,

                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "start adding bags and trips to begin your adventure.",
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            color: Colors.black,

                          )),

                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Text('Finish'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}

