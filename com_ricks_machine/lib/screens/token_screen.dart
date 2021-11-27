import 'package:com_ricks_machine/screens/faqs_screen.dart';
import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:flutter/material.dart';

class TokenScreen extends StatefulWidget {
  const TokenScreen({Key? key}) : super(key: key);

  @override
  _TokenScreenState createState() => _TokenScreenState();
}

class _TokenScreenState extends State<TokenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(65, 71, 105, 5),
      body: Container(
        child: Column(
          children:<Widget>[
            const SizedBox(height: 5,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 130,
                    icon: Image.asset('assets/count_withoutplus.png'),
                  ),
                ),
                SizedBox(width: 110,),
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
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        child: IconButton(
                          onPressed: () {},
                          iconSize: 180,
                          icon: Image.asset('assets/small_reward_button.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        child: IconButton(
                          onPressed: () {},
                          iconSize: 180,
                          icon: Image.asset('assets/medium_reward_button.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        child: IconButton(
                          onPressed: () {},
                          iconSize: 180,
                          icon: Image.asset('assets/big_reward_button.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
