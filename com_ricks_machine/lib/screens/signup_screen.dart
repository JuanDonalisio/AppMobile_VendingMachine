import 'package:com_ricks_machine/models/global_variables.dart';
import 'package:com_ricks_machine/screens/login_screen.dart';
import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:com_ricks_machine/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  CollectionReference users = FirebaseFirestore.instance.collection("users");
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      //backgroundColor: Color.fromRGBO(30, 34, 38, 5),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Container(
                              child: Image.asset('assets/spaceship.png'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(top: 200,right: 8),
                          child: Center(
                            child: Container(
                              child: Image.asset('assets/newuser.png'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Full name",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey))
                              ),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(143, 148, 251, 1),
                                      Color.fromRGBO(143, 148, 251, .6),
                                    ]
                                )
                            ),
                            child: Center(
                              child: Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          onTap: () async{
                            if(passwordController.text.length > 5){
                              users.doc(emailController.text).set({'tokens': 0});
                              await authService.createWithEmailAndPassword(emailController.text, passwordController.text);
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => MainScreen())
                              );
                            }
                            else{
                              //a??adir alerta
                            }
                          }
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        child: Text("Already have an acount? LogIn", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),
                        onTap: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => LogInScreen())
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
