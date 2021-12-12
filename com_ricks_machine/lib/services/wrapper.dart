import 'package:com_ricks_machine/models/user_modelo.dart';
import 'package:com_ricks_machine/screens/login_screen.dart';
import 'package:com_ricks_machine/screens/main_menu_screen.dart';
import 'package:com_ricks_machine/screens/splash_screen.dart';
import 'package:com_ricks_machine/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_,AsyncSnapshot<User?> snapshot){
          if (snapshot.connectionState == ConnectionState.active)  {
            final User? user = snapshot.data;

            return user == null ? LogInScreen() : MainScreen();
          }
          else{
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ) ,
            );
          }
        }
    );
  }
}
