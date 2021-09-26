import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/dicas/body_dicas.dart';
import 'package:flutter/material.dart';

class DicasScreen extends StatelessWidget {
  DicasScreen(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: EdgeInsets.only(top: 15),
        child: BodyDicas(resultadoFinal,formulario),
      ),
    );
  }
}
