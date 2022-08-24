import 'package:flutter/material.dart';

class Text_field extends StatelessWidget {
  String text_name,hint_text;
  IconData text_icon;
  TextEditingController control;
  //bool validate;
  TextInputType keytype;


  Text_field(this.text_name, this.hint_text,this.control, this.text_icon,
      this.keytype);

  Text_field.noIcon(@required this.text_name, this.hint_text, this.control,this.keytype,
      {
        this.text_icon,
      }
      );

  Text_field.Address(this.hint_text,this.control,this.keytype,
      {
        this.text_name,this.text_icon,
      });


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0,),
          Text(text_name,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),),
          SizedBox(height:5.0 ,),
          TextField(
            controller: control,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10.0,),
              ),
              hintText: hint_text,
              suffixIcon: Icon(text_icon),
            ),
            keyboardType: keytype,
          ),
        ],
      ),
    );
  }
}

