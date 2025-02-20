import 'package:flutter/material.dart';
import 'package:mira/themes/app_theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropdownMenu<String>(
                  initialSelection: "dayDream",
                  enableFilter: false,
                  enableSearch: false,
                  keyboardType: TextInputType.none,
                  inputDecorationTheme: InputDecorationTheme(
                    border: InputBorder.none,
                  ),
                  textStyle: TextStyle(color: AppTheme.lapisLazuli),
                  trailingIcon: Icon(Icons.brush),
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: "dayDream", label: "Day Dream"),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppTheme.creamWhite,
                  ),
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text("Untitled project", style: TextStyle(fontSize: 50)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
