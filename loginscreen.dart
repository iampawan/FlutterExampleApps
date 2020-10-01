import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:we_q/shops.dart';
import 'package:we_q/signup.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    )
);
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 350,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child:Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bu1.jpeg'),
                          fit: BoxFit.fitHeight
                      ),
                    ),
                  ) ,
                ),
                Positioned(
                  height: 350,
                  width: width,
                  child:Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/undraw_explore_7ofa.png'),
                          fit: BoxFit.fitHeight
                      ),
                    ),
                  ) ,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Login",style: TextStyle(color: Color.fromRGBO(49, 39, 79,1),fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(height: 35,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(196, 135, 198, 0.7),
                          blurRadius: 20,
                          offset: Offset(0,10),
                        )
                      ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(height:40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[200]
                            ),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(height:40,
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Center(child: Text("Forgot Password!",style: TextStyle(color:Color.fromRGBO(150, 150, 200, 1),fontSize: 14,fontWeight: FontWeight.bold ))),
                SizedBox(height: 30,),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(49, 39, 79, 1),
                  ),
                  child: Center(child: FlatButton(child:
                  Text("Login",style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return shops();
                      }));
                    },
                  ),
                  ),
                ),
                SizedBox(height: 10,),
                Center(child: FlatButton(
                    child: Text("New User! Sign up",style: TextStyle(color:Color.fromRGBO(49, 39, 79, 2),fontSize: 14,fontWeight: FontWeight.bold ),),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return signup();
                      }));
                  },
                ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

