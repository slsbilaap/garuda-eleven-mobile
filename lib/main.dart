import 'package:flutter/material.dart';
import 'package:garuda_eleven/screens/login.dart';
import 'package:garuda_eleven/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Garuda Eleven',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)
          .copyWith(secondary: Colors.blueGrey[800]),
        ),
        home: const LoginPage(),
      ),
    );
  }
}