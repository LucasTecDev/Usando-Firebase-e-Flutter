import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmaSenhaController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();

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
                    SizedBox(height: 16,),
                     TextField(
                      controller: _nomeController,
                      decoration: InputDecoration(
                        hintText: 'Nome'
                      ),
                    ),
                    SizedBox(height: 16,),
                    TextField(
                      obscureText: true,
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Email'
                      ),
                    ),
                    SizedBox(height: 16,),
                     TextField(
                      controller: _senhaController,
                      decoration: InputDecoration(
                        hintText: 'Senha'
                      ),
                    ),
                    SizedBox(height: 16,),
                    TextField(
                      obscureText: true,
                      controller: _confirmaSenhaController,
                      decoration: InputDecoration(
                        hintText: 'Confirme sua senha'
                      ),
                    ),
                    SizedBox(height: 16,),
                    ElevatedButton(onPressed: () {
                     if (_senhaController.text == _confirmaSenhaController.text) {
                        print(_nomeController.text);
                        print(_emailController.text);
                        print(_senhaController.text);
                        print(_confirmaSenhaController.text);
                     }
                    }, child: Text('Cadastrar')),
                    SizedBox(height: 16,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}