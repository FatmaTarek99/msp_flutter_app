import 'dart:ui';
import 'package:flutter/material.dart';

import 'assign_mark.dart';
import 'button.dart';
import 'text_field.dart';


import 'package:image_picker/image_picker.dart';
class screen1 extends StatelessWidget {
  final name_control = TextEditingController();
  final email_control = TextEditingController();
  final pass_control = TextEditingController();


  @override
  Widget build(BuildContext context) {
     final piker = ImagePicker();
     void getphoto(){
     piker.pickImage(source: ImageSource.camera);
     }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Container(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Complition(Colors.grey.shade400, Colors.grey.shade400, Colors.grey.shade400, Colors.grey.shade400, 'Personal Details','',),
                      SizedBox(height: 20,),
                      //profile picture
                      Text("profile picture",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20,),
                      //profile picture
                      Center(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 73.0,
                              backgroundColor: Colors.grey[400],
                              child: CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.grey[200],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(bottom: 0.1, end: 0.1),
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.pinkAccent,
                                child: IconButton(
                                  onPressed: () {
                                    getphoto();
                                  },
                                  icon: Icon(
                                    Icons.camera_alt_outlined,
                                    // color: Colors.pinkAccent,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text_field.noIcon('Full Name', 'enter your name', name_control ,TextInputType.name,),
                      Text_field.noIcon('E_mail', 'Enter your email address', email_control,  TextInputType.emailAddress,),
                      Text_field.noIcon('Phone Namber', 'enter your phone number', pass_control,TextInputType.phone,),




                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {

                          if (name_control.text.isNotEmpty && email_control.text.isNotEmpty && pass_control.text.isNotEmpty) {
                            Navigator.of(context).pushReplacementNamed('/x2');
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar
                              (content:Row(
                                children:[Text('You Must Fill All The Text Fields'),
                                  Icon(Icons.announcement_rounded)]))
                            );}
                        },
                        child: Text('Next'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                        )
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

