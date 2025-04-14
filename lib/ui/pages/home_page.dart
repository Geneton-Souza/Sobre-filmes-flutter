import 'package:sobrefilmes/ui/components/buttons.dart';
import 'package:sobrefilmes/ui/pages/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0xFF080808),
            Color(0xFF2D2E02),
          ], begin: Alignment.topCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Padding(
                  padding: const EdgeInsets.only(bottom: 70, right: 120),
                  child: Text(
                    " Sobre \n \  \  Filmes",
                    style: TextStyle(
                        fontSize: 50,
                        color: Color(0xFFF8F8F8),
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Image.asset(
                  "assets/images/iconelogo.png",
                  height: 220,
                  width: 220,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 60),
                  child: Text(
                    " Encontre tudo sobre os melhores filmes para voçê",
                    style: TextStyle(
                      color: Color(0xFFF8F8F8),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                PrimaryButton(
                  text: "Continuar",
                  icon: Icons.arrow_forward,
                  ontap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
