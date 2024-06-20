import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc/blocs/imc_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ImcBloc bloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cálculo de IMC'),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CupertinoTextField(
                    placeholder: 'Altura (cm)',
                    inputFormatters: [bloc.heightMaskTextInputFormatter],
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CupertinoTextField(
                    placeholder: 'Peso (kg)',
                    inputFormatters: [bloc.weightMaskTextInputFormatter],
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    bloc.result,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoButton.filled(
                child: const Text('Calcular'),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  setState(() {
                    bloc.calculate();
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
