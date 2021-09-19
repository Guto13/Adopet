import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:flutter/material.dart';

class BodyResultado extends StatelessWidget {
  BodyResultado(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Animal Recomendado',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: KTextColor, fontSize: 40),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Parabéns, ' + formulario.nome,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: KTextColor, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Você tem tudo que precisa para adotar um animal de estimação!',
            style: TextStyle(fontWeight: FontWeight.normal, color: KTextColor),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Baseado nas suas respostas, recomendamos:',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: KTextColor, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (resultadoFinal.animal.tipo == 'gato') {
                return Image.asset(
                  'assets/images/gato.png',
                  height: 150,
                  alignment: Alignment.topCenter,
                );
              } else if (resultadoFinal.animal.porte == 'pequeno') {
                return Image.asset(
                  'assets/images/pequeno.png',
                  height: 150,
                  alignment: Alignment.topCenter,
                );
              } else if (resultadoFinal.animal.porte == 'medio') {
                return Wrap(
                  children: [
                    Image.asset(
                      'assets/images/pequeno.png',
                      height: 150,
                      alignment: Alignment.topCenter,
                    ),
                    Image.asset(
                      'assets/images/medio.png',
                      height: 150,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                );
              } else {
                return Wrap(
                  children: [
                    Image.asset(
                      'assets/images/pequeno.png',
                      height: 150,
                      alignment: Alignment.topCenter,
                    ),
                    Image.asset(
                      'assets/images/medio.png',
                      height: 150,
                      alignment: Alignment.topCenter,
                    ),
                    Image.asset(
                      'assets/images/grande.png',
                      height: 150,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
