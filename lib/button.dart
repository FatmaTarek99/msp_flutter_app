import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button_2 extends StatelessWidget {
  String his_titel;
  Button_2(this.his_titel,this.code,);
  Container code;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Column(
        children: [
          Row(
            children:[ ElevatedButton(
                child: Container(
                  child: Text(his_titel ,style:TextStyle(color: Colors.white) ,),
                  color: Colors.pink,
                  width: 250,
                  // padding: EdgeInsets.all(30),
                  //height: 40,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),),
                onPressed: () {
                  code;}
                  //Navigator.of(context).pushReplacementNamed(page_id);

            ),
            ]
          ),

        ],
      ),
    );
  }
}
