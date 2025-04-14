import 'package:sobrefilmes/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class sobrefilmes extends StatelessWidget {
  const sobrefilmes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sobrefilmes",
      theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
          colorSchemeSeed: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}
