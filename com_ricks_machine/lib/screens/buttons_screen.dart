import 'package:carousel_slider/carousel_slider.dart';
import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:com_ricks_machine/screens/token_screen.dart';
import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
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
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget> [
                    Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => TokenScreen())
                          );
                        },
                        iconSize: 130,
                        icon: Image.asset('assets/count_image.png'),
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
                                      onPressed: () {},
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
                                      onPressed: () {},
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
                                      onPressed: () {},
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
