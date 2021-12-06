import 'package:com_ricks_machine/models/global_variables.dart';
import 'package:com_ricks_machine/screens/faqs_screen.dart';
import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget> [
                    Container(
                      child: Align(
                        alignment: Alignment(0.2,0.82) ,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => FaqsScreen())
                            );
                          },
                          iconSize: 50,
                          icon: Image.asset('assets/question_button.png'),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Align(
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
                SizedBox(height: 60,),
                Container(
                  child: Image.asset('assets/volume_title.png'),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        child: IconButton(
                          onPressed: () async {
                            await get(Uri.parse('192.168.1.2:5000/volumen'));
                            setState(() {
                              if(volume_image == 'assets/volume_on_button.png'){
                                volume_image = 'assets/volume_off_button.png';
                              }
                              else{
                                volume_image = 'assets/volume_on_button.png';
                              }
                            });
                          },
                          iconSize: 150,
                          icon: Image.asset(volume_image),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Image.asset('assets/lights_title.png'),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        child: IconButton(
                          onPressed: () async {
                            await get(Uri.parse('192.168.1.2:5000/luces'));
                            setState(() {
                              if(light_image == 'assets/light_on_button.png'){
                                light_image = 'assets/light_off_button.png';
                              }
                              else{
                                light_image = 'assets/light_on_button.png';
                              }
                            });
                          },
                          iconSize: 150,
                          icon: Image.asset(light_image),
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
