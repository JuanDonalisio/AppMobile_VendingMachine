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
      body: SingleChildScrollView(
        child:Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_screens_b.png'),
                fit: BoxFit.cover,
              )
          ),
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
              SizedBox(height:12),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("FAQ'S", style: TextStyle(color: Color.fromRGBO(254, 177, 50, 5), fontSize: 30,fontFamily: 'PressStart2P',)),
              ),
              SizedBox(height:33),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("¿Qué es una Rick Coin?", style: TextStyle(color: Color.fromRGBO(255, 236, 145, 5), fontSize: 15,fontFamily: 'PressStart2P',)),
              ),
              SizedBox(height:12),
              Container(
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("Rick Coin es una moneda virtual que te permite comprar productos en máquinas expendedoras Rick's Machine a través de una aplicación desde tu teléfono celular. ", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("¿Cómo comprar Rick Coins?", style: TextStyle(color: Color.fromRGBO(255, 236, 145, 5), fontSize: 15,fontFamily: 'PressStart2P')),
              ),
              SizedBox(height:12),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("Podés comprar Rick Coins en cualquier momento, a través de Mercado Pago, utilizando una tarjeta de crédito o débito. Pulsando el botón del contador de monedas serás redirigido a una pantalla de Mercado Pago, dónde con tus datos podrás acceder a la compra de esta moneda virtual.", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height / 21,
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("¿Cómo comprar productos de una Rick’s Machine?", style: TextStyle(color: Color.fromRGBO(255, 236, 145, 5), fontSize: 15,fontFamily: 'PressStart2P')),
              ),
              SizedBox(height:12),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("Presionando el botón Buy de la pantalla principal podrás observar los productos disponibles en la máquina expendedora con su respectivo precio en Rick Coins. Solo basta con presionar el botón Buy del producto deseado para confirmar la compra. A continuación, la máquina tirará el producto y se descontarán las monedas correspondientes del contador.", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("¿Cómo puedo prender y apagar la musica o las luces?", style: TextStyle(color: Color.fromRGBO(255, 236, 145, 5), fontSize: 15,fontFamily: 'PressStart2P')),
              ),
              SizedBox(height:12),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Text("Podes encontrar las opciones para hacerlo presionando el boton de configuracion en la pantalla de inicio", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
