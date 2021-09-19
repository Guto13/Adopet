import 'package:adopet/componentes_gerais/constants.dart';
import 'package:flutter/material.dart';

class BodyResultadoNegativo extends StatelessWidget {
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
            'Que pena',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: KTextColor, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Pelas nossas analises você não tem condições de ter um animalzinho nesse momento!',
            style: TextStyle(fontWeight: FontWeight.normal, color: KTextColor),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Mas não desista sempre a um tempo certo para tudo!',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: KTextColor, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
