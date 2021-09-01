import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/formulario/body_formulario.dart';
import 'package:flutter/material.dart';

class FormularioScreen extends StatelessWidget {
  const FormularioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF009786),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: KButtonColor,
          ),
        ),
      ),
      backgroundColor: Color(0xFF009786),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              BodyFormulario(),
            ],
          ),
        ),
      ),
    );
  }
}
