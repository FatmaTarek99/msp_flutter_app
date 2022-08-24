import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:msp_flutter_app/text_field.dart';
import 'text_field.dart';
import 'assign_mark.dart';

import 'package:image_picker/image_picker.dart';

class screen3 extends StatelessWidget{

  final National_control = TextEditingController();
  @override
  Widget build(BuildContext context) {
     final piker = ImagePicker();
    void getphoto(){
     piker.pickImage(source: ImageSource.camera);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: double.infinity,
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
                      SizedBox(height: 20,),
                      Complition(Colors.pinkAccent, Colors.pinkAccent, Colors.grey.shade400, Colors.grey.shade400, 'Attachments','/x2',),
                      SizedBox(height: 30,),
                      Text("National ID",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),

                      TextField(
                        controller: National_control,
                        decoration: InputDecoration(
                            border : OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10.0,),

                            ),
                            hintText: 'Placeholder',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.camera_alt_outlined,color: Colors.pinkAccent,),
                              onPressed: (){
                                getphoto();
                              },
                            )
                        ),
                      ),


                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {

                        if (National_control.text.isNotEmpty) {
                          Navigator.of(context).pushReplacementNamed('/x4');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar
                            (content: Row(children: [
                            Text('You Must Fill All The Text Fields'),
                            Icon(Icons.announcement_rounded)
                          ],))

                          );}

                      },
                      child: Text('Next'),
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