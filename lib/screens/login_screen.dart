import 'package:flutter/material.dart';
import 'package:flutter_application_1/entities/user.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController(); 
  _LoginView();

  @override  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            print(_usernameController.text);
            if(verificarUsuario(usuarios, _usernameController.text, _passwordController.text)){
              context.pushNamed(HomeScreen.name, extra: _usernameController.text);
              print('OK');
            } else{
              context.goNamed(LoginScreen.name);
              print('else');
            }
            
            //context.goNamed(HomeScreen.name);
            //context.pushNamed(HomeScreen.name, extra: {'username':  _usernameController.text, 'password': _passwordController.text});
          },
          child: const Text('Login'),
        ),
      ]

      
      
      ,
    );
  }
  
  bool verificarUsuario(List<User> users, String name, String password) {
    
    for (User user in users) {
      print(user.name);
    if (user.name == name && user.password == password) {
      return true;
    }
  }
  return false;
}
}
