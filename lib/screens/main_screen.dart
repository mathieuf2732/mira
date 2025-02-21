import 'package:flutter/material.dart';
import 'package:mira/theme_notifier.dart';
import 'package:mira/themes/app_theme.dart';
import 'package:provider/provider.dart';

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
                DropdownMenu<ThemeData>(
                  initialSelection:
                      Provider.of<ThemeNotifier>(context).getTheme(),
                  enableFilter: false,
                  enableSearch: false,
                  keyboardType: TextInputType.none,
                  trailingIcon: Icon(Icons.brush),
                  dropdownMenuEntries: [
                    DropdownMenuEntry(
                      value: StrawberryMilk.getTheme(),
                      label: "Strawberry Milk",
                    ),
                    DropdownMenuEntry(
                      value: AfterDarkRose.getTheme(),
                      label: "Afterdark Rose",
                    ),
                  ],
                  onSelected: (value) {
                    Provider.of<ThemeNotifier>(
                      context,
                      listen: false,
                    ).setTheme(value!);
                  },
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(
                          "Untitled project",
                          style: TextStyle(fontSize: 50),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: TextButton(
                      onPressed: () => {},
                      child: Text("Login"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
