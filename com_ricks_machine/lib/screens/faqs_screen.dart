import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:flutter/material.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  _FaqsScreenState createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(65, 71, 105, 5),
      body: Center(
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
          ],
        ),
      ),
    );
  }
}
