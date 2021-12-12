import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:com_ricks_machine/models/global_variables.dart';
import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:com_ricks_machine/screens/token_screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  CollectionReference users = FirebaseFirestore.instance.collection("users");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(65, 71, 105, 5),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background_screens_b.png'),
              fit: BoxFit.cover,
            )
        ),
        child: Container(
          child: Center(
            child: Column(
              children:<Widget> [
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget> [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => TokenScreen())
                        );
                      },
                      child: Container(
                        child:  Stack(children:[ Image.asset('assets/count_image.png', scale: 1.8),
                          Positioned(
                              top: 16,
                              left: 45,
                              child: FutureBuilder(
                                  future: getTokens(),
                                  builder: (context, AsyncSnapshot token) {
                                    switch (token.connectionState) {
                                      case ConnectionState.waiting: return CircularProgressIndicator();
                                      default:
                                        if (token.hasError) {
                                          return Container();
                                        }
                                        if(token.hasData){
                                          return Text(token.data.toString(),
                                              style: TextStyle(color: Color.fromRGBO(52, 52, 52, 4), fontSize: 15,fontFamily: 'PressStart2P'));
                                        }
                                        else {
                                          return Text(token.data.toString(),
                                              style: TextStyle(color: Color.fromRGBO(52, 52, 52, 4), fontSize: 20,fontFamily: 'PressStart2P'));
                                        }}
                                  }
                              ))
                        ]),
                      ),
                    ),
                    SizedBox(width: 180,),
                    Container(
                      child: Align(
                        alignment: Alignment(0.2,0.82),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => MainScreen())
                            );
                          },
                          iconSize: 50,
                          icon: Image.asset('assets/home_button.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 600,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                    ),
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/gomitas.png'),
                                fit: BoxFit.fitWidth
                            )
                        ),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Container(
                                margin: EdgeInsets.only(top: 300),
                                child: Center(
                                  child: Container(
                                    child: IconButton(
                                      onPressed: ()  {
                                         users.doc(auth.currentUser!.email.toString()).update({'tokens': FieldValue.increment(-50)});
                                         get(Uri.parse('http://192.168.1.2:5000/item1'));
                                      },
                                      iconSize: 180,
                                      icon: Image.asset('assets/buy_button.png'),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/alfajor.png'),
                                fit: BoxFit.fitWidth
                            )
                        ),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Container(
                                margin: EdgeInsets.only(top: 300),
                                child: Center(
                                  child: Container(
                                    child: IconButton(
                                      onPressed: ()  {
                                        users.doc(auth.currentUser!.email.toString()).update({'tokens': FieldValue.increment(-100)});
                                         get(Uri.parse('http://192.168.1.2:5000/item2'));
                                      },
                                      iconSize: 180,
                                      icon: Image.asset('assets/buy_button.png'),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/choco.png'),
                                fit: BoxFit.fitWidth
                            )
                        ),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Container(
                                margin: EdgeInsets.only(top: 300),
                                child: Center(
                                  child: Container(
                                    child: IconButton(
                                      onPressed: ()  {
                                         users.doc(auth.currentUser!.email.toString()).update({'tokens': FieldValue.increment(-150)});
                                         get(Uri.parse('http://192.168.1.2:5000/item3'));
                                      },
                                      iconSize: 180,
                                      icon: Image.asset('assets/buy_button.png'),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
