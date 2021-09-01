import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/formulario/formulario.dart';
import 'package:flutter/material.dart';

class BodyFormulario extends StatelessWidget {
  const BodyFormulario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Formulário',
          style: TextStyle(
            color: KPrimaryColor,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Preencha as perguntas abaixo sinceramente, ok?',
          style: TextStyle(
            color: KPrimaryColor,
          ),
        ),
        Text(
          'Após o preenchimento, lhe informaremos se você está apto a adotar um animalzinho e as',
          style: TextStyle(
            color: KPrimaryColor,
          ),
        ),
        Text(
          'melhores dicas para cuidar dele!',
          style: TextStyle(
            color: KPrimaryColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        LayoutBuilder(builder: (_, constrainsts) {
          if (size.width > 700) {
            return Center(
              child: Column(
                children: [
                  Container(
                    width: size.width / 2,
                    child: Formulario(),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Formulario(),
              ),
            );
          }
        }),
        SizedBox(height: 15),
      ],
    );
  }
}
