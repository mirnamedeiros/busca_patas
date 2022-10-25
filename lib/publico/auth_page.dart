import 'package:busca_patas/publico/cadastro-usuario.dart';
import 'package:busca_patas/publico/login.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool mostrarTelaLogin = true;

  void mudarTelas(){
    setState(() {
      mostrarTelaLogin = !mostrarTelaLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(mostrarTelaLogin) {
      return Login(mostrarTelaRegistro: mudarTelas, title: 'Busca Patas - Login');
    } else {
      return CadastroUsuario(mostrarTelaLogin: mudarTelas, title: 'Novo usuário');
    }
  }
}