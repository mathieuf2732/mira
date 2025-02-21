import 'package:flutter/material.dart';
import 'package:mira/theme_notifier.dart';
import 'package:mira/screens/main_screen.dart';
import 'package:mira/themes/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(StrawberryMilk.getTheme()),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (_, value, _) {
        return MaterialApp(
          initialRoute: "/",
          routes: {
            "/swimlanes":
                (context) => Scaffold(
                  appBar: AppBar(title: Text("Swimlanes")),
                  body: Center(child: Text("Swimlanes")),
                ),
          },
          theme: value.getTheme(),
          debugShowCheckedModeBanner: false,
          home: MainScreen(),
        );
      },
    );
  }
}
