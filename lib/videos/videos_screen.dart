import 'dart:html';

import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/dicas/dicas_screen.dart';
import 'package:adopet/localizacao/localizacao_screen.dart';
import 'package:adopet/videos/body_videos.dart';
import 'package:flutter/material.dart';

class VideosScreen extends StatelessWidget {
  VideosScreen(this.resultadoFinal, this.formulario);

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
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DicasScreen(resultadoFinal, formulario)),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: BodyVideos(resultadoFinal, formulario),
        ),
      ),
    );
  }
}
