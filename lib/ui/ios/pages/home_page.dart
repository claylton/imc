import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cálculo de IMC'),
      ),
      child: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: 'Altura (cm)',
              keyboardType: TextInputType.number,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: 'Peso (kg)',
              keyboardType: TextInputType.number,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Você está fora de forma',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoButton.filled(
              child: const Text('Calcular'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
