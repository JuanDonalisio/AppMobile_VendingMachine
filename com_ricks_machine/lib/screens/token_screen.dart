import 'package:com_ricks_machine/screens/faqs_screen.dart';
import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

class TokenScreen extends StatefulWidget {
  const TokenScreen({Key? key}) : super(key: key);

  @override
  _TokenScreenState createState() => _TokenScreenState();
}

class _TokenScreenState extends State<TokenScreen> {
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
                          onPressed: () async {
                            PaymentResult result= await MercadoPagoMobileCheckout.startCheckout(
                                "TEST-7189f6dc-61c0-4ea9-8fa7-d3a0148668cc",
                                "181626851-6c8ce817-50bd-4d0e-8bd2-c28fbd82784a");
                            if(result.result.toString() == "done"){
                              print("Frederik");
                            }
                          },
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
                          onPressed: () async {
                            PaymentResult result= await MercadoPagoMobileCheckout.startCheckout(
                                "TEST-7189f6dc-61c0-4ea9-8fa7-d3a0148668cc",
                                "181626851-a8a67879-604a-49a2-8a7b-c1172b5ca0fc");
                            if(result.result.toString() == "done"){
                              print("Frederik");
                            }
                          },
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
                          onPressed: () async {
                            PaymentResult result= await MercadoPagoMobileCheckout.startCheckout(
                                "TEST-7189f6dc-61c0-4ea9-8fa7-d3a0148668cc",
                                "181626851-cecc7057-514d-4825-aa91-ccccb2df6a7a");
                            if(result.result.toString() == "done"){
                              print("Frederik");
                            }
                          },
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
