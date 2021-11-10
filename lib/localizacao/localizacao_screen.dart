import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/downloads/downloads_screen.dart';
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
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DownloadsScreen(resultadoFinal, formulario)),
          );
        },
        child: Container(
          height: 30,
          width: 200,
          decoration: BoxDecoration(
            color: KButtonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Dicas',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
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
