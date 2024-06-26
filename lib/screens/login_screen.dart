import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    FlutterLogo(size: 76,),
                    SizedBox(height: 16),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'E-mail'
                      ),
                    ),
                    SizedBox(height: 16,),
                    TextField(
                      obscureText: true,
                      controller: _senhaController,
                      decoration: InputDecoration(
                        hintText: 'senha'
                      ),
                    ),
                    SizedBox(height: 16,),
                    ElevatedButton(onPressed: () {}, child: Text('Entrar')),
                    SizedBox(height: 16,),
                    ElevatedButton(onPressed: () {}, child: Text('Entrar com google')),
                    SizedBox(height: 16,),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                      },
                      child: Text('Ainda nao tem uma conta, crie uma conta'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}