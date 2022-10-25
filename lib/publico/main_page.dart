
import 'package:busca_patas/home.dart';
import 'package:busca_patas/publico/auth_page.dart';
import 'package:busca_patas/publico/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return Home(title: 'Página Inicial');
            } else {
              return AuthPage();
            }
          },
        ),
    );
  }
}