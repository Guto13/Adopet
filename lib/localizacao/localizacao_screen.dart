import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/dicas/body_dicas.dart';
import 'package:adopet/localizacao/body_localizacao.dart';
import 'package:flutter/material.dart';

class LocalizacaoScreen extends StatelessWidget {
  LocalizacaoScreen(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ongs Próximas',
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
      body: Padding(
        padding: EdgeInsets.only(top: 15),
        child: BodyLocalizacao(),
      ),
    );
  }
}
