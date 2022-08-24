import 'package:flutter/material.dart';

class Address_Text extends StatelessWidget {
  String hint_text;
  TextEditingController control;
  TextInputType keytype;
  Address_Text(this.hint_text, this.control,this.keytype );

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: control,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10.0,),
              ),
              hintText: hint_text,
            ),
            keyboardType: keytype,
          ),
        ],
      ),
    );
  }
}