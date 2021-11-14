import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/mais_informacoes/body_informacoes.dart';
import 'package:flutter/material.dart';

class InformacoesScreen extends StatelessWidget {
  InformacoesScreen(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Mais Informações',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: KPrimaryColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: KButtonColor,
          ),
        ),
      ),
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: BodyInformacoes(resultadoFinal, formulario),
        ),
      ),
    );
  }
}
