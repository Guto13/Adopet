import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/resultado/body_resultado.dart';
import 'package:adopet/resultado/body_resultado_negativo.dart';
import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  ResultadoScreen(this.resultadoFinal,this.formulario);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (resultadoFinal.podeAdotar) {
                    return BodyResultado(resultadoFinal,formulario);
                  } else {
                    return BodyResultadoNegativo();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
