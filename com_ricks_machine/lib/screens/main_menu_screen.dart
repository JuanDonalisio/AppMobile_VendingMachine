import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/main_screen.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          children:<Widget>[
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Align(
                    child: Container(
                      child: Align(
                        alignment: Alignment(0.1,-0.92) ,
                        child: IconButton(
                          onPressed: () {  },
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
                        alignment: Alignment(0.98,-0.92) ,
                        child: IconButton(
                          onPressed: () {  },
                          iconSize: 50,
                          icon: Image.asset('assets/close_button.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100,),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {  },
                    alignment: Alignment(6,-0.12),
                    iconSize: 200,
                    icon: Image.asset('assets/play_button.png'),
                  ),
                ],
              )
            ),
            SizedBox(height: 150,),
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
