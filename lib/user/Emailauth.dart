import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:smarttourism/user/otpfile.dart';

class Emailauth extends StatefulWidget {
  const Emailauth({Key? key}) : super(key: key);

  @override
  State<Emailauth> createState() => _EmailauthState();
}

class _EmailauthState extends State<Emailauth> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/register.png") ,fit: BoxFit.cover
          ),
        ),
        child: Scaffold(

            body:
            ListView(
                children: [

                  Container(

                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height*0.3
                    ),
                    child: Column(
                        children: [

                          Image(image: AssetImage('Assets/google.png'),
                          width: 200,),

                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("This help show that this account really belongs to you.",style: TextStyle(
                              fontSize: 20
                            ),),
                          ),

                          SizedBox(height: 20,),



                          Text( "Email Recovery", style: TextStyle(
                            fontSize: 20,
                          ),),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              onChanged: (val) {
                                var email = val;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  fillColor: Colors.black12,
                                  filled: true,
                                  hintText: 'Enter Email',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),

                         Padding(
                           padding: EdgeInsets.only(left: 10,right: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               GestureDetector(
                                 child: Text("Another Option", style: TextStyle(decoration: TextDecoration.none, color: Colors.blue, fontSize: 18)),
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Emailauth()));
                                 },
                               ),

                               ElevatedButton(onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Otpfile()));
                               }, child: Text(
                                 'Next', style: TextStyle(
                                   decoration: TextDecoration.none,
                                   fontSize: 20,
                                   color: Colors.lightGreen
                               ),
                               )),
                             ],
                           ),
                         )

                        ]),
                  ),])));

  }
}
