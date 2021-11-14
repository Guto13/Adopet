import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/mais_informacoes/container_apoiadores.dart';
import 'package:adopet/mais_informacoes/container_artigo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyInformacoes extends StatelessWidget {
  BodyInformacoes(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(25),
        child: Wrap(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ártigos úteis para sua escolha',
                      style: TextStyle(fontSize: 25, color: KTextColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                        children: resultadoFinal.animal.tipo == 'gato'
                            ? infoGatos.map((info) {
                                return ContainerArtigo(
                                    info.url, info.name, info.image);
                              }).toList()
                            : infoCaes.map((info) {
                                return ContainerArtigo(
                                    info.url, info.name, info.image);
                              }).toList()),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                width: 300,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Apoiadores',
                      style: TextStyle(fontSize: 25, color: KTextColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ContainerApoiadores('https://www.petvale.com.br/',
                        'assets/images/petvale.jpg'),
                    ContainerApoiadores(
                        'https://m.procure1amigo.com.br/animais_previa.aspx?cc=3909&cn=rs-caxias-do-sul',
                        'assets/images/procure1amigo.jpg'),
                    ContainerApoiadores('https://www.amorviralata.com.br/',
                        'assets/images/amorviralata.jpg'),
                    ContainerApoiadores(
                        'https://www.soama.org.br/', 'assets/images/soama.jpg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _rodaURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Não foi possível abrir o site $_url';
    }
  }
}
