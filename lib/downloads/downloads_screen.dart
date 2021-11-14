import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/downloads/body_downloads.dart';
import 'package:adopet/mais_informacoes/informacoes_screen.dart';
import 'package:flutter/material.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Downloads',
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
                    InformacoesScreen(resultadoFinal, formulario)),
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
              'Mais Informações',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: BodyDowmloads(resultadoFinal, formulario),
        ),
      ),
    );
  }
}
