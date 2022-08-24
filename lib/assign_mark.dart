import 'package:flutter/material.dart';

class Complition extends StatelessWidget {
  Color c1 ,c2 ,c3 ,c4;
  String titel_page,page_id;
  Complition(this.c1, this.c2, this.c3, this.c4, this.titel_page,this.page_id,);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pushReplacementNamed(page_id);
                    },
                        icon:Icon(Icons.arrow_back_ios,color: Colors.black,)),
                    SizedBox(width: 10,),
                    Text('Register',
                      style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 25),),
                  ],
                ),
                SizedBox(height: 10.0,),
                Text(titel_page,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,fontWeight:
                  FontWeight.bold),),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(height: 5, width: 80,
                        decoration: BoxDecoration(color:c1,
                          borderRadius: BorderRadius.circular(20),),),
                    ),
                    SizedBox(width: 7,),
                    Expanded(
                      child: Container(height: 5, width: 80,
                        decoration: BoxDecoration(color:c2,
                          borderRadius: BorderRadius.circular(20),),),
                    ),
                    SizedBox(width: 7,),
                    Expanded(
                      child: Container(height: 5, width: 80,
                        decoration: BoxDecoration(color:c3,
                          borderRadius: BorderRadius.circular(20),),),
                    ),
                    SizedBox(width: 7,),
                    Expanded(
                      child: Container(height: 5, width: 80,
                        decoration: BoxDecoration(color:c4,
                          borderRadius: BorderRadius.circular(20),),),
                    ),
                  ],
                ),
              ],)
        )
    );
  }
}
