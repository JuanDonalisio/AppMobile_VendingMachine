import 'package:com_ricks_machine/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 5,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    child: IconButton(
                      onPressed: () {  },
                      iconSize: 130,
                      icon: Image.asset('assets/count_image.png'),
                    ),
                ),
                SizedBox(width: 110,),
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
                Container(
                  child: Align(
                    child: Container(
                      child: Align(
                        child: IconButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          iconSize: 50,
                          icon: Image.asset('assets/close_button.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 410,),
            Container(
              child: Align(
                alignment: Alignment(-0.01,-0.92) ,
                child: IconButton(
                  onPressed: () {  },
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
