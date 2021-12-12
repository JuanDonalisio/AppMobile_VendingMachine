import 'package:com_ricks_machine/models/global_variables.dart';
import 'package:com_ricks_machine/screens/buttons_screen.dart';
import 'package:com_ricks_machine/screens/login_screen.dart';
import 'package:com_ricks_machine/screens/setting_screen.dart';
import 'package:com_ricks_machine/screens/splash_screen.dart';
import 'package:com_ricks_machine/screens/token_screen.dart';
import 'package:com_ricks_machine/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/main_screen.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          children:<Widget>[
            const SizedBox(height: 32,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: 5,),
                Container(
                  child: Align(
                    child: Container(
                      child: Align(
                        child: IconButton(
                          onPressed: () async{
                            //await authService.signOut();
                            FirebaseAuth auth = FirebaseAuth.instance;
                            auth.signOut().then((res) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => SplashScreen()),
                              );
                            });
                          },
                          iconSize: 50,
                          icon: Image.asset('assets/logout_button.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    child: Container(
                      child: Align(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => SettingsScreen())
                            );
                          },
                          iconSize: 50,
                          icon: Image.asset('assets/settings_button.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 110,),
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
                                      return Text(token.data.toString(), style: TextStyle(color: Color.fromRGBO(52, 52, 52, 4), fontSize: 15,fontFamily: 'PressStart2P'));
                                    }
                                    else {
                                      return Text(token.data.toString(), style: TextStyle(color: Color.fromRGBO(52, 52, 52, 4), fontSize: 15,fontFamily: 'PressStart2P'));
                                    }}
                              }
                          ))
                    ]),
                  ),
                ),

              ],
            ),
            SizedBox(height: 465,),
            Container(
              child: Align(
                alignment: Alignment(-0.01,-0.92) ,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => PlayScreen())
                    );
                  },
                  iconSize: 200,
                  icon: Image.asset('assets/play_button.png'),
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}
