import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:msp_flutter_app/adress_text.dart';
import 'adress_text.dart';
import 'assign_mark.dart';
import 'text_field.dart';

class screen2 extends StatelessWidget {
  final country_control = TextEditingController();
  final city_control = TextEditingController();
  final state_control = TextEditingController();
  final street_control = TextEditingController();
  final bulding1_control = TextEditingController();
  final floor_control = TextEditingController();
  final bulding2_control = TextEditingController();
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Complition(Colors.pinkAccent, Colors.grey.shade400, Colors.grey.shade400, Colors.grey.shade400, 'Address Details','/',),
                      Row(
                        children: [
                          Expanded(child: Text_field('Country', 'egypt',country_control,Icons.arrow_drop_down,TextInputType.text)),
                          SizedBox(width: 10.0,),
                          Expanded(child: Text_field('city', 'cairo', city_control,  Icons.arrow_drop_down, TextInputType.text),),

                        ],
                      ),
                      Text_field('state', 'egypt', state_control, Icons.arrow_drop_down,TextInputType.text),
                      Text_field.noIcon('Street', 'your street', street_control,TextInputType.streetAddress),

                      SizedBox(height:15.0 ,),
                      Row(
                        children: [
                          Expanded(child: Address_Text( 'bulding No.',bulding1_control, TextInputType.number)),
                          SizedBox(width: 5,),
                          Expanded(child: Address_Text('floor No,', floor_control, TextInputType.number)),
                          SizedBox(width: 5,),
                          Expanded(child: Address_Text('bulding No,', bulding2_control, TextInputType.number)),
                        ],
                      ),





                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (country_control.text.isNotEmpty &&
                            city_control.text.isNotEmpty &&
                            state_control.text.isNotEmpty &&
                            street_control.text.isNotEmpty &&
                            bulding1_control.text.isNotEmpty &&
                            floor_control.text.isNotEmpty
                            && bulding2_control.text.isNotEmpty) {
                          Navigator.of(context).pushReplacementNamed('/x3');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar
                            (content: Row(children: [
                            Text('You Must Fill All The Text Fields'),
                            Icon(Icons.announcement_rounded)
                          ]))
                          );
                        };
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