import 'package:flutter/material.dart';
import 'package:marketplace/view/Register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BarBeQ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: '/register',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/register':
            return MaterialPageRoute(builder: (context) => HalamanDaftar());

          default:
            return MaterialPageRoute(builder: (context) => UnknownRoutePage());
        }
      },
    );
  }
}

class UnknownRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404 - Halaman tidak ditemukan'),
      ),
      body: Center(
        child: Text('Halaman tidak ditemukan'),
      ),
    );
  }
}
