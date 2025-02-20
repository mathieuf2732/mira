import 'package:flutter/material.dart';
import 'package:mira/screens/login_screen.dart';
import 'package:mira/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/swimlanes":
            (context) => Scaffold(
              appBar: AppBar(title: Text("Swimlanes")),
              body: Center(child: Text("Swimlanes")),
            ),
      },
      theme: AppTheme.dayDream,
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
