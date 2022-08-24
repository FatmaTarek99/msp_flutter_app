import 'package:flutter/material.dart';

import 'assign_mark.dart';
class  screen4 extends StatefulWidget {
  @override
  _screen4State createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  var pass_controll =TextEditingController();


  var pass_control2 =TextEditingController();


  bool passwordVisible1=true;

  bool passwordVisible2=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      body: SafeArea(
        top:true,

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
                    Complition(Colors.pinkAccent, Colors.pinkAccent, Colors.pinkAccent,
                        Colors.grey.shade400, 'Set Up Your Password' ,'/x3'),
                    SizedBox(height: 50,),

                    Text("Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    TextField(
                      controller: pass_controll,

                      decoration: InputDecoration(
                        border : OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10.0,),

                        ),
                        hintText: ' Enter Password ',

                        suffixIcon: IconButton(
                          icon: Icon(
                              passwordVisible1 ? Icons.visibility : Icons.visibility_off
                          ),
                          onPressed: () {
                            setState (() {
                              passwordVisible1 = !passwordVisible1;
                            }
                            );
                          },
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible1,
                    ),

                    SizedBox(height: 25,),
                    Text("Re-Enter Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    TextField(
                      controller: pass_control2,
                      decoration: InputDecoration(
                          border : OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10.0,),

                          ),
                          hintText: ' Re-enter Password ',

                          suffixIcon: IconButton(
                            icon: Icon(
                                passwordVisible2? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState (() {
                                passwordVisible2 = !passwordVisible2;
                              }
                              );
                            },
                          )
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible2,
                    ),


                  ],
      ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (pass_controll.text.isNotEmpty && pass_control2.text.isNotEmpty ) {
                        if(pass_controll.text!=pass_control2.text){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar
                            (content: Row(children: [
                            Text('Password doesn\'t Match'),
                            Icon(Icons.announcement_rounded)
                          ]))
                          );
                        }else
                          Navigator.of(context).pushReplacementNamed('/x5');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar
                          (content: Row(children: [
                          Text('You Must Fill All The Text Fields'),
                          Icon(Icons.announcement_rounded)
                        ]))
                        );
                      }
                      print(pass_controll.text);
                      print(pass_control2.text);
                    },
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent,
                    ),
                  ),
                ),
              ],
            ),
          )
          ),
        ),
      ),

    );
  }
}
