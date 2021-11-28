import 'package:com_ricks_machine/screens/login_screen.dart';
import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:com_ricks_machine/screens/signup_screen.dart';
import 'package:com_ricks_machine/screens/splash_screen.dart';
import 'package:com_ricks_machine/services/auth_service.dart';
import 'package:com_ricks_machine/services/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Ricks Machine",
        theme: ThemeData(primarySwatch: Colors.blue),
        //home: SplashScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/wrapper': (context) => Wrapper(),
          '/login': (context) => LogInScreen(),
          '/register': (context) => SignUpScreen(),
        },
      ),
    );
  }
}









